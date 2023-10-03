.class public Lcom/esotericsoftware/kryonet/Client;
.super Lcom/esotericsoftware/kryonet/Connection;

# interfaces
.implements Lcom/esotericsoftware/kryonet/EndPoint;


# instance fields
.field private connectHost:Ljava/net/InetAddress;

.field private connectTcpPort:I

.field private connectTimeout:I

.field private connectUdpPort:I

.field private emptySelects:I

.field private isClosed:Z

.field private selector:Ljava/nio/channels/Selector;

.field private final serialization:Lcom/esotericsoftware/kryonet/Serialization;

.field private volatile shutdown:Z

.field private volatile tcpRegistered:Z

.field private tcpRegistrationLock:Ljava/lang/Object;

.field private volatile udpRegistered:Z

.field private udpRegistrationLock:Ljava/lang/Object;

.field private final updateLock:Ljava/lang/Object;

.field private updateThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x800

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryonet/Client;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/KryoSerialization;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/KryoSerialization;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryonet/Client;-><init>(IILcom/esotericsoftware/kryonet/Serialization;)V

    return-void
.end method

.method public constructor <init>(IILcom/esotericsoftware/kryonet/Serialization;)V
    .locals 3

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Connection;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->tcpRegistrationLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistrationLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->updateLock:Ljava/lang/Object;

    iput-object p0, p0, Lcom/esotericsoftware/kryonet/Client;->endPoint:Lcom/esotericsoftware/kryonet/EndPoint;

    iput-object p3, p0, Lcom/esotericsoftware/kryonet/Client;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    invoke-virtual {p0, p3, p1, p2}, Lcom/esotericsoftware/kryonet/Client;->initialize(Lcom/esotericsoftware/kryonet/Serialization;II)V

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error opening selector."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private broadcast(ILjava/net/DatagramSocket;)V
    .locals 8

    const/4 v7, -0x1

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    const/4 v2, 0x0

    new-instance v3, Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;

    invoke-direct {v3}, Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;-><init>()V

    invoke-interface {v1, v2, v0, v3}, Lcom/esotericsoftware/kryonet/Serialization;->write(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v4, 0x3

    aput-byte v7, v0, v4

    :try_start_0
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v1

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {p2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v4, 0x2

    aput-byte v7, v0, v4

    :try_start_1
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v1

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v4, v1, v5, v0, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {p2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-void

    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryonet/Connection;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    return-void
.end method

.method public close()V
    .locals 2

    invoke-super {p0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->updateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->isClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->isClosed:Z

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect(ILjava/lang/String;I)V
    .locals 2

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/net/InetAddress;II)V

    return-void
.end method

.method public connect(ILjava/lang/String;II)V
    .locals 1

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/net/InetAddress;II)V

    return-void
.end method

.method public connect(ILjava/net/InetAddress;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/net/InetAddress;II)V

    return-void
.end method

.method public connect(ILjava/net/InetAddress;II)V
    .locals 8

    const/4 v7, -0x1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->getUpdateThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot connect on the connection\'s update thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/esotericsoftware/kryonet/Client;->connectTimeout:I

    iput-object p2, p0, Lcom/esotericsoftware/kryonet/Client;->connectHost:Ljava/net/InetAddress;

    iput p3, p0, Lcom/esotericsoftware/kryonet/Client;->connectTcpPort:I

    iput p4, p0, Lcom/esotericsoftware/kryonet/Client;->connectUdpPort:I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    iput v7, p0, Lcom/esotericsoftware/kryonet/Client;->id:I

    if-eq p4, v7, :cond_2

    :try_start_0
    new-instance v0, Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Client;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v2, v2, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/kryonet/UdpConnection;-><init>(Lcom/esotericsoftware/kryonet/Serialization;I)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->updateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->tcpRegistered:Z

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v6, 0x1388

    invoke-virtual {v0, v4, v5, v6}, Lcom/esotericsoftware/kryonet/TcpConnection;->connect(Ljava/nio/channels/Selector;Ljava/net/SocketAddress;I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->tcpRegistrationLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    :try_start_3
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->tcpRegistered:Z

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_3

    :try_start_4
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->tcpRegistrationLock:Ljava/lang/Object;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    throw v0

    :cond_3
    :try_start_7
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->tcpRegistered:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v2, "Connected, but timed out during TCP registration.\nNote: Client#update must be called in a separate thread during connect."

    invoke-direct {v0, v2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_4
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eq p4, v7, :cond_7

    :try_start_a
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->updateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    const/4 v4, 0x0

    :try_start_b
    iput-boolean v4, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistered:Z

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4, v5, v0}, Lcom/esotericsoftware/kryonet/UdpConnection;->connect(Ljava/nio/channels/Selector;Ljava/net/InetSocketAddress;)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistrationLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :goto_1
    :try_start_d
    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistered:Z

    if-nez v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_5

    new-instance v4, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    invoke-direct {v4}, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;-><init>()V

    iget v5, p0, Lcom/esotericsoftware/kryonet/Client;->id:I

    iput v5, v4, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;->connectionID:I

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v5, p0, v4, v0}, Lcom/esotericsoftware/kryonet/UdpConnection;->send(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Ljava/net/SocketAddress;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistrationLock:Ljava/lang/Object;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    :cond_5
    :try_start_11
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistered:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/net/SocketTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected, but timed out during UDP registration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    :cond_6
    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :cond_7
    return-void
.end method

.method public discoverHost(II)Ljava/net/InetAddress;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryonet/Client;->broadcast(ILjava/net/DatagramSocket;)V

    invoke-virtual {v1, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    new-instance v2, Ljava/net/DatagramPacket;

    const/4 v3, 0x0

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public discoverHosts(II)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryonet/Client;->broadcast(ILjava/net/DatagramSocket;)V

    invoke-virtual {v1, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    :goto_0
    new-instance v2, Ljava/net/DatagramPacket;

    const/4 v3, 0x0

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    :goto_2
    return-object v0

    :catch_1
    move-exception v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public getKryo()Lcom/esotericsoftware/kryo/Kryo;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    check-cast v0, Lcom/esotericsoftware/kryonet/KryoSerialization;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/KryoSerialization;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v0

    return-object v0
.end method

.method public getSerialization()Lcom/esotericsoftware/kryonet/Serialization;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    return-object v0
.end method

.method public getUpdateThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->updateThread:Ljava/lang/Thread;

    return-object v0
.end method

.method keepAlive()V
    .locals 3

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->isConnected:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Client;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v2, v0, v1}, Lcom/esotericsoftware/kryonet/TcpConnection;->needsKeepAlive(J)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/esotericsoftware/kryonet/FrameworkMessage;->keepAlive:Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryonet/Client;->sendTCP(Ljava/lang/Object;)I

    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistered:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v2, v0, v1}, Lcom/esotericsoftware/kryonet/UdpConnection;->needsKeepAlive(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/kryonet/FrameworkMessage;->keepAlive:Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Client;->sendUDP(Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public reconnect()V
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryonet/Client;->connectTimeout:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Client;->reconnect(I)V

    return-void
.end method

.method public reconnect(I)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->connectHost:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has never been connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryonet/Client;->connectTimeout:I

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->connectHost:Ljava/net/InetAddress;

    iget v2, p0, Lcom/esotericsoftware/kryonet/Client;->connectTcpPort:I

    iget v3, p0, Lcom/esotericsoftware/kryonet/Client;->connectUdpPort:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/net/InetAddress;II)V

    return-void
.end method

.method public removeListener(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryonet/Connection;->removeListener(Lcom/esotericsoftware/kryonet/Listener;)V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->shutdown:Z

    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->shutdown:Z

    if-nez v0, :cond_0

    const/16 v0, 0xfa

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Client;->update(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    throw v0

    :cond_0
    return-void
.end method

.method public setKeepAliveUDP(I)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected via UDP."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    iput p1, v0, Lcom/esotericsoftware/kryonet/UdpConnection;->keepAliveMillis:I

    return-void
.end method

.method public start()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->updateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/esotericsoftware/kryonet/Client;->shutdown:Z

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->updateThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Client"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->updateThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->shutdown:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->shutdown:Z

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    goto :goto_0
.end method

.method public update(I)V
    .locals 10

    const-wide/16 v8, 0x19

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->updateThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->updateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    iget v0, p0, Lcom/esotericsoftware/kryonet/Client;->emptySelects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryonet/Client;->emptySelects:I

    iget v0, p0, Lcom/esotericsoftware/kryonet/Client;->emptySelects:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iput v7, p0, Lcom/esotericsoftware/kryonet/Client;->emptySelects:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    sub-long v0, v8, v0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->isConnected:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Client;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v2, v0, v1}, Lcom/esotericsoftware/kryonet/TcpConnection;->isTimedOut(J)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    :goto_2
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->notifyIdle()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    goto :goto_0

    :cond_3
    iput v7, p0, Lcom/esotericsoftware/kryonet/Client;->emptySelects:I

    iput-boolean v7, p0, Lcom/esotericsoftware/kryonet/Client;->isClosed:Z

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v6, :cond_6

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Client;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    if-ne v0, v4, :cond_b

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v0, p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_5
    and-int/lit8 v0, v3, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/TcpConnection;->writeOperation()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_7
    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/Client;->tcpRegistered:Z

    if-nez v4, :cond_9

    instance-of v4, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;

    iget v0, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;->connectionID:I

    iput v0, p0, Lcom/esotericsoftware/kryonet/Client;->id:I

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Client;->tcpRegistrationLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->tcpRegistered:Z

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->tcpRegistrationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Client;->setConnected(Z)V

    :cond_8
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->notifyConnected()V
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :cond_9
    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistered:Z

    if-nez v4, :cond_a

    instance-of v0, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistrationLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistered:Z

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->udpRegistrationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Client;->setConnected(Z)V

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->notifyConnected()V
    :try_end_b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    :cond_a
    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/Client;->isConnected:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->keepAlive()V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Client;->notifyReceived(Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/UdpConnection;->readFromAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v0, p0}, Lcom/esotericsoftware/kryonet/UdpConnection;->readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->keepAlive()V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Client;->notifyReceived(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_5

    :cond_c
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->keepAlive()V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
