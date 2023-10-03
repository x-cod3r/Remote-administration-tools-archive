using System.Security.Cryptography;
using System;
using System.IO;
using System.IO.Compression;
using System.Net;
using System.Net.Sockets;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading;

namespace MLRat.Networking
{
    /// <summary>
    /// eSock 2.0 by BahNahNah
    /// uid=2388291
    /// </summary>
    public static class eSock
    {


        #region " eSock Server "

        public class Server
        {

            #region " Delegates "

            public delegate void OnClientConnectCallback(Server sender, eSockClient client);
            public delegate void OnClientDisconnectCallback(Server sender, eSockClient client, SocketError ER);
            public delegate bool OnClientConnectingCallback(Server sender, Socket cSock);
            public delegate void OnDataRetrievedCallback(Server sender, eSockClient client, object[] data);

            #endregion

            #region " Events "

            public event OnClientConnectCallback OnClientConnect;
            public event OnClientDisconnectCallback OnClientDisconnect;
            public event OnClientConnectingCallback OnClientConnecting;
            public event OnDataRetrievedCallback OnDataRetrieved;

            #endregion

            #region " Variables and Properties "

            private Socket _globalSocket;
            private int _BufferSize = 8192;
            public int BufferSize
            {
                get
                {
                    return _BufferSize;
                }
                set
                {
                    if (value < 1)
                        throw new ArgumentOutOfRangeException("BufferSize");
                    if (IsRunning)
                        throw new Exception("Cannot set buffer size while server is running.");
                    _BufferSize = value;
                }
            }
            public bool IsRunning { get; private set; }
            public eSockServerEncryptionSettings Encryption { get; private set; }

            #endregion

            #region " Constructors "

            public Server()
            {
                _globalSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                Encryption = new eSockServerEncryptionSettings();
                IsRunning = false;
            }
            public Server(AddressFamily SocketaddressFamily)
                : this()
            {
                _globalSocket = new Socket(SocketaddressFamily, SocketType.Stream, ProtocolType.Tcp);
            }
            #endregion

            #region " Functions "

            public bool Start(int port)
            {
                if (IsRunning)
                    throw new Exception("Server is already running.");
                try
                {
                    _globalSocket.Bind(new IPEndPoint(IPAddress.Any, port));
                    _globalSocket.Listen(100);
                    _globalSocket.BeginAccept(AcceptCallback, null);
                    
                    IsRunning = true;
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    IsRunning = false;
                }
                return IsRunning;
            }

            public bool Start(int port, int backlog)
            {
                if (IsRunning)
                    throw new Exception("Server is already running.");
                try
                {
                    _globalSocket.Bind(new IPEndPoint(IPAddress.Any, port));
                    _globalSocket.Listen(backlog);
                    _globalSocket.BeginAccept(AcceptCallback, null);
                    IsRunning = true;
                }
                catch
                {
                    return false;
                }
                return IsRunning;
            }

            public void Stop()
            {
                IsRunning = false;
                _globalSocket.Close();

            }
            #endregion

            #region " Encryption "

            public class eSockServerEncryptionSettings
            {
                public eSockServerEncryptionSettings()
                {
                    DefaultClientEncryption = new eSockRijndael();
                    DefaultEncryptionKey = string.Empty;
                    EnableEncryptionOnConnect = false;
                }

                public IeSockEncryption DefaultClientEncryption { get; set; }
                public string DefaultEncryptionKey { get; set; }
                public bool EnableEncryptionOnConnect { get; set; }
            }

            #endregion

            #region " Callbacks "

            private void AcceptCallback(IAsyncResult AR)
            {
                if (!IsRunning)
                    return;
                Socket cSock = _globalSocket.EndAccept(AR);
                if (OnClientConnecting != null)
                {
                    if (!OnClientConnecting(this, cSock))
                        return;
                }
                eSockClient _client = new eSockClient(cSock, BufferSize, Encryption.DefaultClientEncryption);
                _client.Encryption.Key = Encryption.DefaultEncryptionKey;
                _client.Encryption.Enabled = Encryption.EnableEncryptionOnConnect;

                if (OnClientConnect != null)
                    OnClientConnect(this, _client);
                _client.NetworkSocket.BeginReceive(_client.Buffer, 0, _client.Buffer.Length, SocketFlags.None,
                    RetrieveCallback, _client);
                _globalSocket.BeginAccept(AcceptCallback, null);
            }

            private void RetrieveCallback(IAsyncResult AR)
            {
                if (!IsRunning)
                    return;
                eSockClient _client = (eSockClient)AR.AsyncState;
                if(_client.NetworkSocket == null || !_client.NetworkSocket.Connected)
                {
                    if (OnClientDisconnect != null)
                        OnClientDisconnect(this, _client, SocketError.Disconnecting);
                    _client.Dispose();
                    return;
                }
                SocketError SE;
                int packetLength = _client.NetworkSocket.EndReceive(AR, out SE);
                if (SE != SocketError.Success)
                {
                    if (OnClientDisconnect != null)
                        OnClientDisconnect(this, _client, SE);
                    _client.Dispose();
                    return;
                }
                byte[] PacketCluster = new byte[packetLength];
                Buffer.BlockCopy(_client.Buffer, 0, PacketCluster, 0, packetLength);

                byte[] Packet = null;
                using (MemoryStream bufferStream = new MemoryStream(PacketCluster))
                using (BinaryReader packetReader = new BinaryReader(bufferStream))
                {
                    try
                    {
                        while (bufferStream.Position < bufferStream.Length)
                        {
                            int length = packetReader.ReadInt32();
                            if (length > bufferStream.Length - bufferStream.Position)
                            {
                                using (MemoryStream recievePacketChunks = new MemoryStream(length))
                                {
                                    byte[] buffer = new byte[bufferStream.Length - bufferStream.Position];

                                    buffer = packetReader.ReadBytes(buffer.Length);
                                    recievePacketChunks.Write(buffer, 0, buffer.Length);

                                    while (recievePacketChunks.Position != length)
                                    {
                                        packetLength = _client.NetworkSocket.Receive(_client.Buffer);
                                        buffer = new byte[packetLength];
                                        Buffer.BlockCopy(_client.Buffer, 0, buffer, 0, packetLength);
                                        recievePacketChunks.Write(buffer, 0, buffer.Length);
                                    }
                                    Packet = recievePacketChunks.ToArray();
                                }
                            }
                            else
                            {
                                Packet = packetReader.ReadBytes(length);
                            }


                            if (_client.Encryption != null)
                                Packet = _client.Encryption.Decrypt(Packet);

                            object[] RetrievedData = Formatter.Deserialize<object[]>(Packet);
                            if (OnDataRetrieved != null && RetrievedData != null)
                                OnDataRetrieved(this, _client, RetrievedData);

                            _client.NetworkSocket.BeginReceive(_client.Buffer, 0, _client.Buffer.Length, SocketFlags.None, RetrieveCallback, _client);
                        }
                    }
                    catch
                    {

                    }
                }
            }

            #endregion

            public class eSockClient : IDisposable
            {
                public byte[] Buffer { get; set; }
                public object Tag { get; set; }
                public Socket NetworkSocket { get; private set; }
                public eSockEncryptionSettings Encryption { get; set; }
                public eSockClient(Socket cSock)
                {
                    NetworkSocket = cSock;
                    Buffer = new byte[8192];
                }
                public eSockClient(Socket cSock, int bufferSize)
                {
                    Encryption = new eSockEncryptionSettings();
                    NetworkSocket = cSock;
                    Buffer = new byte[bufferSize];
                }

                public eSockClient(Socket cSock, int bufferSize, IeSockEncryption _method)
                {
                    Encryption = new eSockEncryptionSettings(_method);
                    NetworkSocket = cSock;
                    Buffer = new byte[bufferSize];
                }

                public void Disconnect()
                {
                    try
                    {
                        NetworkSocket.Close();
                    }
                    catch
                    {

                    }
                }

                public void Send(params object[] args)
                {
                    try
                    {
                        byte[] serilisedData = Formatter.Serialize(args);
                        if (Encryption != null)
                            serilisedData = Encryption.Encrypt(serilisedData);

                        byte[] Packet = null;

                        using (MemoryStream packetStream = new MemoryStream())
                        using (BinaryWriter packetWriter = new BinaryWriter(packetStream))
                        {
                            packetWriter.Write(serilisedData.Length);
                            packetWriter.Write(serilisedData);
                            Packet = packetStream.ToArray();
                        }

                        NetworkSocket.BeginSend(Packet, 0, Packet.Length, SocketFlags.None, EndSend, null);
                    }
                    catch
                    {
                        //Not connected
                    }
                }
                private void EndSend(IAsyncResult AR)
                {
                    SocketError SE;
                    NetworkSocket.EndSend(AR, out SE);
                }

                public void Dispose()
                {
                    if (NetworkSocket != null && NetworkSocket.Connected)
                    {
                        NetworkSocket.Shutdown(SocketShutdown.Both);
                    }
                }
            }
        }

        #endregion

        #region " eSock Client "

        public class Client
        {
            #region " Delegates "

            public delegate void OnConnectAsyncCallback(Client sender, bool success);
            public delegate void OnDisconnectCallback(Client sender, SocketError ER);
            public delegate void OnDataRetrievedCallback(Client sender, object[] data);

            #endregion

            #region " Events "

            public event OnConnectAsyncCallback OnConnect;
            public event OnDisconnectCallback OnDisconnect;
            public event OnDataRetrievedCallback OnDataRetrieved;

            #endregion

            #region " Variables and Properties "

            private Socket _globalSocket;
            private int _BufferSize = 1000000;
            public bool Connected { get; private set; }
            public byte[] PacketBuffer { get; private set; }
            public eSockEncryptionSettings Encryption { get; private set; }
            public int BufferSize
            {
                get { return _BufferSize; }
                set
                {
                    if (Connected)
                        throw new Exception("Can not change buffer size while connected");
                    if (value < 1)
                        throw new ArgumentOutOfRangeException("BufferSize");
                    _BufferSize = value;
                }
            }

            #endregion

            #region " Constructor "

            public Client()
            {
                _globalSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                Connected = false;
                Encryption = new eSockEncryptionSettings();
            }

            public Client(AddressFamily SocketAddressFamily)
                : this()
            {
                _globalSocket = new Socket(SocketAddressFamily, SocketType.Stream, ProtocolType.Tcp);
            }
            public Client(AddressFamily SocketAddressFamily, ProtocolType pType, SocketType sType)
                : this()
            {
                _globalSocket = new Socket(SocketAddressFamily, sType, pType);
            }


            #endregion"

            #region " Connect "

            public bool Connect(string IP, int port)
            {
                try
                {
                    _globalSocket.Connect(IP, port);
                    OnConnected();
                    return true;
                }
                catch
                {
                    return false;
                }
            }

            public bool Connect(IPEndPoint endpoint)
            {
                try
                {
                    _globalSocket.Connect(endpoint);
                    OnConnected();
                    return true;
                }
                catch
                {
                    return false;
                }
            }

            public void ConnectAsync(string IP, int port)
            {
                _globalSocket.BeginConnect(IP, port, OnConnectAsync, null);
            }

            public void ConnectAsync(IPEndPoint endpoint)
            {
                _globalSocket.BeginConnect(endpoint, OnConnectAsync, null);
            }

            private void OnConnectAsync(IAsyncResult AR)
            {
                try
                {
                    _globalSocket.EndConnect(AR);
                    if (OnConnect != null)
                        OnConnect(this, true);
                    OnConnected();
                }
                catch
                {
                    if (OnConnect != null)
                        OnConnect(this, false);
                }
            }

            private void OnConnected()
            {
                PacketBuffer = new byte[_BufferSize];
                _globalSocket.BeginReceive(PacketBuffer, 0, PacketBuffer.Length, SocketFlags.None, EndRetrieve, null);
            }

            #endregion

            #region " Functions "

            public void Send(params object[] data)
            {
                byte[] serilizedData = Formatter.Serialize(data);
                if (Encryption != null)
                    serilizedData = Encryption.Encrypt(serilizedData);

                byte[] Packet = null;

                using (MemoryStream packetStream = new MemoryStream())
                using (BinaryWriter packetWriter = new BinaryWriter(packetStream))
                {
                    packetWriter.Write(serilizedData.Length);
                    packetWriter.Write(serilizedData);
                    Packet = packetStream.ToArray();
                }

                _globalSocket.BeginSend(Packet, 0, Packet.Length, SocketFlags.None, EndSend, null);
            }

            public void SendWait(params object[] data)
            {
                lock (this)
                {
                    byte[] serilizedData = Formatter.Serialize(data);
                    if (Encryption != null)
                        serilizedData = Encryption.Encrypt(serilizedData);
                    byte[] Packet = null;

                    using (MemoryStream packetStream = new MemoryStream())
                    using (BinaryWriter packetWriter = new BinaryWriter(packetStream))
                    {
                        packetWriter.Write(serilizedData.Length);
                        packetWriter.Write(serilizedData);
                        Packet = packetStream.ToArray();
                    }

                    _globalSocket.Send(Packet);
                    Thread.Sleep(10);
                }
            }

            private void EndSend(IAsyncResult AR)
            {
                SocketError SE;
                _globalSocket.EndSend(AR, out SE);
            }

            #endregion

            #region " Callbacks "

            private void EndRetrieve(IAsyncResult AR)
            {
                SocketError SE;
                int packetLength = _globalSocket.EndReceive(AR, out SE);
                if (SE != SocketError.Success)
                {
                    if (OnDisconnect != null)
                        OnDisconnect(this, SE);
                    return;
                }
                byte[] PacketCluster = new byte[packetLength];
                Buffer.BlockCopy(PacketBuffer, 0, PacketCluster, 0, packetLength);


                using (MemoryStream bufferStream = new MemoryStream(PacketCluster))
                using (BinaryReader packetReader = new BinaryReader(bufferStream))
                {
                    try
                    {
                        while (bufferStream.Position < bufferStream.Length)
                        {
                            int length = packetReader.ReadInt32();
                            byte[] Packet = null;
                            if (length > bufferStream.Length - bufferStream.Position)
                            {
                                using (MemoryStream recievePacketChunks = new MemoryStream(length))
                                {
                                    byte[] buffer = new byte[bufferStream.Length - bufferStream.Position];

                                    buffer = packetReader.ReadBytes(buffer.Length);
                                    recievePacketChunks.Write(buffer, 0, buffer.Length);

                                    while (recievePacketChunks.Position != length)
                                    {
                                        packetLength = _globalSocket.Receive(PacketBuffer);
                                        buffer = new byte[packetLength];
                                        Buffer.BlockCopy(PacketBuffer, 0, buffer, 0, packetLength);
                                        recievePacketChunks.Write(buffer, 0, buffer.Length);
                                    }
                                    Packet = recievePacketChunks.ToArray();
                                }
                            }
                            else
                            {
                                Packet = packetReader.ReadBytes(length);
                            }

                            if (Encryption != null)
                                Packet = Encryption.Decrypt(Packet);

                            object[] data = Formatter.Deserialize<object[]>(Packet);
                            if (OnDataRetrieved != null && data != null)
                                OnDataRetrieved(this, data);

                            _globalSocket.BeginReceive(PacketBuffer, 0, PacketBuffer.Length, SocketFlags.None, EndRetrieve, null);
                        }
                    }
                    catch { }
                }


            }

            #endregion
        }


        #endregion

        #region " eSock Formatter "

        public static class Formatter
        {
            static Formatter()
            {
                
            }
            public static byte[] Serialize(object input)
            {
                
                BinaryFormatter bf = new BinaryFormatter();
                using (MemoryStream ms = new MemoryStream())
                {
                    bf.Serialize(ms, input);
                    return Compress(ms.ToArray());
                }
                
            }

            public static t Deserialize<t>(byte[] input)
            {
                try
                {
                    
                    BinaryFormatter bf = new BinaryFormatter();
                    using (MemoryStream ms = new MemoryStream(Decompress(input)))
                    {
                        return (t)bf.Deserialize(ms);
                    }
                    
                }
                catch (Exception ex)
                {
                    Console.WriteLine("[eSock] {0}", ex);
                    return default(t);
                }
            }

            public static byte[] Compress(byte[] input)
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    using (GZipStream _gz = new GZipStream(ms, CompressionMode.Compress))
                    {
                        _gz.Write(input, 0, input.Length);
                    }
                    return ms.ToArray();
                }
            }

            public static byte[] Decompress(byte[] input)
            {
                using (MemoryStream decompressed = new MemoryStream())
                {
                    using (MemoryStream ms = new MemoryStream(input))
                    {
                        using (GZipStream _gz = new GZipStream(ms, CompressionMode.Decompress))
                        {
                            byte[] Bytebuffer = new byte[1024];
                            int bytesRead = 0;
                            while ((bytesRead = _gz.Read(Bytebuffer, 0, Bytebuffer.Length)) > 0)
                            {
                                decompressed.Write(Bytebuffer, 0, bytesRead);
                            }
                        }
                        return decompressed.ToArray();
                    }
                }
            }

            class DataPacket
            {
                public DataPacket(object d)
                {
                    Data = d;
                }
                public object Data;
            }
        }

        #endregion

        #region " eSock Encryption "

        public static class Hashing
        {
            public static byte[] MD5Hash(string val)
            {
                byte[] strBytes = Encoding.UTF8.GetBytes(val);
                using (MD5 md5 = new MD5CryptoServiceProvider())
                {
                    return md5.ComputeHash(strBytes);
                }
            }
        }

        public class eSockEncryptionSettings
        {
            /// <summary>
            /// Uses seprate keys for encryption and decryption
            /// set EncryptionKey and DecryptionKey
            /// </summary>
            public bool UseSeprateEncryptionDecryptionKeys { get; set; }
            public IeSockEncryption Method { get; set; }
            public bool Enabled { get; set; }
            public string Key { get; set; }
            /// <summary>
            /// Used when UseSeprateEncryptionDecryptionKeys is true
            /// </summary>
            public string EncryptionKey { get; set; }
            /// <summary>
            /// Used when UseSeprateEncryptionDecryptionKeys is true
            /// </summary>
            public string DecryptionKey { get; set; }
            public eSockEncryptionSettings()
            {
                Enabled = false;
                Key = string.Empty;
                Method = new eSockRijndael();
            }
            public eSockEncryptionSettings(IeSockEncryption _method)
            {
                Enabled = false;
                Key = string.Empty;
                Method = _method;
            }
            public void GenerateRandomKey()
            {
                Key = Guid.NewGuid().ToString("n");
            }
            public byte[] Encrypt(byte[] input)
            {
                try
                {
                    if (Enabled)
                    {
                        if (Method == null)
                            throw new Exception("No method");
                        if (UseSeprateEncryptionDecryptionKeys)
                            return Method.Encrypt(input, EncryptionKey);
                        else
                            return Method.Encrypt(input, Key);
                    }
                }
                catch
                {

                }
                return input;
            }
            public byte[] Decrypt(byte[] input)
            {
                try
                {
                    if (Enabled)
                    {
                        if (Method == null)
                            throw new Exception("No method");
                        if (UseSeprateEncryptionDecryptionKeys)
                            return Method.Decrypt(input, DecryptionKey);
                        else
                            return Method.Decrypt(input, Key);
                    }
                }
                catch
                {

                }
                return input;
            }
        }

        public interface IeSockEncryption
        {
            byte[] Encrypt(byte[] input, string key);
            byte[] Decrypt(byte[] input, string key);
        }

        public class eSockRijndael : IeSockEncryption
        {
            public byte[] Decrypt(byte[] input, string key)
            {
                using (Rijndael rij = new RijndaelManaged())
                {
                    byte[] encryption = Hashing.MD5Hash(key);
                    rij.Key = encryption;
                    rij.IV = encryption;
                    ICryptoTransform crypto = rij.CreateDecryptor();
                    return crypto.TransformFinalBlock(input, 0, input.Length);
                }
            }

            public byte[] Encrypt(byte[] input, string key)
            {
                using (Rijndael rij = new RijndaelManaged())
                {
                    byte[] encryption = Hashing.MD5Hash(key);
                    rij.Key = encryption;
                    rij.IV = encryption;
                    ICryptoTransform crypto = rij.CreateEncryptor();
                    return crypto.TransformFinalBlock(input, 0, input.Length);
                }
            }
        }

        #endregion

    }

}
