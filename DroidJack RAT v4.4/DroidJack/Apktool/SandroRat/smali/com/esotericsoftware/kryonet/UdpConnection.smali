.class Lcom/esotericsoftware/kryonet/UdpConnection;
.super Ljava/lang/Object;


# instance fields
.field connectedAddress:Ljava/net/InetSocketAddress;

.field datagramChannel:Ljava/nio/channels/DatagramChannel;

.field keepAliveMillis:I

.field private lastCommunicationTime:J

.field final readBuffer:Ljava/nio/ByteBuffer;

.field private selectionKey:Ljava/nio/channels/SelectionKey;

.field private final serialization:Lcom/esotericsoftware/kryonet/Serialization;

.field final writeBuffer:Ljava/nio/ByteBuffer;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Serialization;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4a38

    iput v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->keepAliveMillis:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public bind(Ljava/nio/channels/Selector;Ljava/net/InetSocketAddress;)V
    .locals 2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->lastCommunicationTime:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->connectedAddress:Ljava/net/InetSocketAddress;

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect(Ljava/nio/channels/Selector;Ljava/net/InetSocketAddress;)V
    .locals 4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->lastCommunicationTime:J

    iput-object p2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->connectedAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public needsKeepAlive(J)Z
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->connectedAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->keepAliveMillis:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->lastCommunicationTime:J

    sub-long v0, p1, v0

    iget v2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->keepAliveMillis:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromAddress()Ljava/net/InetSocketAddress;
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection is closed."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->lastCommunicationTime:J

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1, v1}, Lcom/esotericsoftware/kryonet/Serialization;->read(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect number of bytes ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " remaining) used to deserialize object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/esotericsoftware/kryonet/KryoNetException;

    const-string v2, "Error during deserialization."

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v0
.end method

.method public send(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Ljava/net/SocketAddress;)I
    .locals 6

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    if-nez v1, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection is closed."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1, v3, p2}, Lcom/esotericsoftware/kryonet/Serialization;->write(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3, p3}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->lastCommunicationTime:J

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error serializing object of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method
