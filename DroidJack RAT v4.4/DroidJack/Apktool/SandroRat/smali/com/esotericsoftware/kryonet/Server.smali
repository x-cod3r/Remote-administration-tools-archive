.class public Lcom/esotericsoftware/kryonet/Server;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/esotericsoftware/kryonet/EndPoint;


# instance fields
.field private connections:[Lcom/esotericsoftware/kryonet/Connection;

.field private dispatchListener:Lcom/esotericsoftware/kryonet/Listener;

.field private emptyBuffer:Ljava/nio/ByteBuffer;

.field private emptySelects:I

.field private listenerLock:Ljava/lang/Object;

.field listeners:[Lcom/esotericsoftware/kryonet/Listener;

.field private nextConnectionID:I

.field private final objectBufferSize:I

.field private pendingConnections:Lcom/esotericsoftware/kryo/util/IntMap;

.field private final selector:Ljava/nio/channels/Selector;

.field private final serialization:Lcom/esotericsoftware/kryonet/Serialization;

.field private serverChannel:Ljava/nio/channels/ServerSocketChannel;

.field private volatile shutdown:Z

.field private udp:Lcom/esotericsoftware/kryonet/UdpConnection;

.field private updateLock:Ljava/lang/Object;

.field private updateThread:Ljava/lang/Thread;

.field private final writeBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x4000

    const/16 v1, 0x800

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryonet/Server;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/KryoSerialization;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/KryoSerialization;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryonet/Server;-><init>(IILcom/esotericsoftware/kryonet/Serialization;)V

    return-void
.end method

.method public constructor <init>(IILcom/esotericsoftware/kryonet/Serialization;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Lcom/esotericsoftware/kryonet/Connection;

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    new-instance v0, Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->pendingConnections:Lcom/esotericsoftware/kryo/util/IntMap;

    new-array v0, v1, [Lcom/esotericsoftware/kryonet/Listener;

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->listenerLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryonet/Server;->nextConnectionID:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->updateLock:Ljava/lang/Object;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->emptyBuffer:Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/esotericsoftware/kryonet/Server$1;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryonet/Server$1;-><init>(Lcom/esotericsoftware/kryonet/Server;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->dispatchListener:Lcom/esotericsoftware/kryonet/Listener;

    iput p1, p0, Lcom/esotericsoftware/kryonet/Server;->writeBufferSize:I

    iput p2, p0, Lcom/esotericsoftware/kryonet/Server;->objectBufferSize:I

    iput-object p3, p0, Lcom/esotericsoftware/kryonet/Server;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;
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

.method private acceptOperation(Ljava/nio/channels/SocketChannel;)V
    .locals 5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->newConnection()Lcom/esotericsoftware/kryonet/Connection;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    iget v2, p0, Lcom/esotericsoftware/kryonet/Server;->writeBufferSize:I

    iget v3, p0, Lcom/esotericsoftware/kryonet/Server;->objectBufferSize:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/esotericsoftware/kryonet/Connection;->initialize(Lcom/esotericsoftware/kryonet/Serialization;II)V

    iput-object p0, v0, Lcom/esotericsoftware/kryonet/Connection;->endPoint:Lcom/esotericsoftware/kryonet/EndPoint;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lcom/esotericsoftware/kryonet/Connection;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v3, p1}, Lcom/esotericsoftware/kryonet/TcpConnection;->accept(Ljava/nio/channels/Selector;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/esotericsoftware/kryonet/Server;->nextConnectionID:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryonet/Server;->nextConnectionID:I

    iget v3, p0, Lcom/esotericsoftware/kryonet/Server;->nextConnectionID:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryonet/Server;->nextConnectionID:I

    :cond_1
    iput v2, v0, Lcom/esotericsoftware/kryonet/Connection;->id:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/kryonet/Connection;->setConnected(Z)V

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/Server;->dispatchListener:Lcom/esotericsoftware/kryonet/Listener;

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/kryonet/Connection;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryonet/Server;->addConnection(Lcom/esotericsoftware/kryonet/Connection;)V

    :goto_0
    new-instance v3, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;

    invoke-direct {v3}, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;-><init>()V

    iput v2, v3, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;->connectionID:I

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Connection;->notifyConnected()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/esotericsoftware/kryonet/Server;->pendingConnections:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v3, v2, v0}, Lcom/esotericsoftware/kryo/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto :goto_1
.end method

.method private addConnection(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/esotericsoftware/kryonet/Connection;

    aput-object p1, v0, v4

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    if-ne p1, v4, :cond_1

    monitor-exit v1

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [Lcom/esotericsoftware/kryonet/Listener;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bind(I)V
    .locals 2

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryonet/Server;->bind(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method public bind(II)V
    .locals 2

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryonet/Server;->bind(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method public bind(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->close()V

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->updateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    iget v3, p0, Lcom/esotericsoftware/kryonet/Server;->objectBufferSize:I

    invoke-direct {v0, v2, v3}, Lcom/esotericsoftware/kryonet/UdpConnection;-><init>(Lcom/esotericsoftware/kryonet/Serialization;I)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v2, p2}, Lcom/esotericsoftware/kryonet/UdpConnection;->bind(Ljava/nio/channels/Selector;Ljava/net/InetSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->close()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Lcom/esotericsoftware/kryonet/Connection;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v5, p0, Lcom/esotericsoftware/kryonet/Server;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    iput-object v5, p0, Lcom/esotericsoftware/kryonet/Server;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->updateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public getConnections()[Lcom/esotericsoftware/kryonet/Connection;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    return-object v0
.end method

.method public getKryo()Lcom/esotericsoftware/kryo/Kryo;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    check-cast v0, Lcom/esotericsoftware/kryonet/KryoSerialization;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/KryoSerialization;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v0

    return-object v0
.end method

.method public getSerialization()Lcom/esotericsoftware/kryonet/Serialization;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    return-object v0
.end method

.method public getUpdateThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->updateThread:Ljava/lang/Thread;

    return-object v0
.end method

.method protected newConnection()Lcom/esotericsoftware/kryonet/Connection;
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/Connection;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/Connection;-><init>()V

    return-object v0
.end method

.method removeConnection(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/esotericsoftware/kryonet/Connection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/kryonet/Connection;

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->pendingConnections:Lcom/esotericsoftware/kryo/util/IntMap;

    iget v1, p1, Lcom/esotericsoftware/kryonet/Connection;->id:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/IntMap;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeListener(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v3, p0, Lcom/esotericsoftware/kryonet/Server;->listenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Server;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v5, v4

    add-int/lit8 v1, v5, -0x1

    new-array v6, v1, [Lcom/esotericsoftware/kryonet/Listener;

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v7, v4, v2

    if-ne p1, v7, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v5, -0x1

    if-ne v0, v1, :cond_2

    monitor-exit v3

    :goto_2
    return-void

    :cond_2
    add-int/lit8 v1, v0, 0x1

    aput-object v7, v6, v0

    move v0, v1

    goto :goto_1

    :cond_3
    iput-object v6, p0, Lcom/esotericsoftware/kryonet/Server;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Server;->shutdown:Z

    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Server;->shutdown:Z

    if-nez v0, :cond_0

    const/16 v0, 0xfa

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Server;->update(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendToAllExceptTCP(ILjava/lang/Object;)V
    .locals 5

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget v4, v3, Lcom/esotericsoftware/kryonet/Connection;->id:I

    if-eq v4, p1, :cond_0

    invoke-virtual {v3, p2}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendToAllExceptUDP(ILjava/lang/Object;)V
    .locals 5

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget v4, v3, Lcom/esotericsoftware/kryonet/Connection;->id:I

    if-eq v4, p1, :cond_0

    invoke-virtual {v3, p2}, Lcom/esotericsoftware/kryonet/Connection;->sendUDP(Ljava/lang/Object;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendToAllTCP(Ljava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendToAllUDP(Ljava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/esotericsoftware/kryonet/Connection;->sendUDP(Ljava/lang/Object;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendToTCP(ILjava/lang/Object;)V
    .locals 5

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget v4, v3, Lcom/esotericsoftware/kryonet/Connection;->id:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v3, p2}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public sendToUDP(ILjava/lang/Object;)V
    .locals 5

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget v4, v3, Lcom/esotericsoftware/kryonet/Connection;->id:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v3, p2}, Lcom/esotericsoftware/kryonet/Connection;->sendUDP(Ljava/lang/Object;)I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Server"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Server;->shutdown:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Server;->shutdown:Z

    goto :goto_0
.end method

.method public update(I)V
    .locals 12

    const-wide/16 v8, 0x19

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->updateThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->updateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;

    int-to-long v6, p1

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    iget v0, p0, Lcom/esotericsoftware/kryonet/Server;->emptySelects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryonet/Server;->emptySelects:I

    iget v0, p0, Lcom/esotericsoftware/kryonet/Server;->emptySelects:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/esotericsoftware/kryonet/Server;->emptySelects:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    sub-long v0, v8, v0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v2, v1

    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    iget-object v6, v3, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v6, v4, v5}, Lcom/esotericsoftware/kryonet/TcpConnection;->isTimedOut(J)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v3}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    :cond_1
    :goto_3
    invoke-virtual {v3}, Lcom/esotericsoftware/kryonet/Connection;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/esotericsoftware/kryonet/Connection;->notifyIdle()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/esotericsoftware/kryonet/Server;->emptySelects:I

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v5

    monitor-enter v5

    :try_start_3
    iget-object v6, p0, Lcom/esotericsoftware/kryonet/Server;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/kryonet/Connection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v2

    if-eqz v1, :cond_9

    if-eqz v6, :cond_6

    iget-object v4, v1, Lcom/esotericsoftware/kryonet/Connection;->udpRemoteAddress:Ljava/net/InetSocketAddress;

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/Connection;->close()V
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v2

    :goto_5
    if-eqz v1, :cond_f

    :try_start_5
    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_6
    and-int/lit8 v4, v2, 0x1

    const/4 v8, 0x1

    if-ne v4, v8, :cond_7

    :goto_6
    :try_start_6
    iget-object v4, v1, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v4, v1}, Lcom/esotericsoftware/kryonet/TcpConnection;->readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v4

    if-nez v4, :cond_8

    :cond_7
    :goto_7
    and-int/lit8 v2, v2, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_5

    :try_start_7
    iget-object v2, v1, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryonet/TcpConnection;->writeOperation()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_8
    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/Connection;->close()V
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :cond_8
    :try_start_9
    invoke-virtual {v1, v4}, Lcom/esotericsoftware/kryonet/Connection;->notifyReceived(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    :catch_2
    move-exception v4

    :try_start_a
    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto :goto_7

    :catch_3
    move-exception v4

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto :goto_7

    :cond_9
    and-int/lit8 v2, v2, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->serverChannel:Ljava/nio/channels/ServerSocketChannel;
    :try_end_a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v2, :cond_5

    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryonet/Server;->acceptOperation(Ljava/nio/channels/SocketChannel;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :cond_a
    if-nez v6, :cond_b

    :try_start_c
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_c
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_4

    :cond_b
    :try_start_d
    invoke-virtual {v6}, Lcom/esotericsoftware/kryonet/UdpConnection;->readFromAddress()Ljava/net/InetSocketAddress;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v8

    if-eqz v8, :cond_5

    :try_start_e
    iget-object v9, p0, Lcom/esotericsoftware/kryonet/Server;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v10, v9

    move v4, v3

    :goto_8
    if-ge v4, v10, :cond_13

    aget-object v2, v9, v4

    iget-object v11, v2, Lcom/esotericsoftware/kryonet/Connection;->udpRemoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v8, v11}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v11

    if-eqz v11, :cond_c

    :goto_9
    :try_start_f
    invoke-virtual {v6, v2}, Lcom/esotericsoftware/kryonet/UdpConnection;->readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;
    :try_end_f
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v1

    :try_start_10
    instance-of v4, v1, Lcom/esotericsoftware/kryonet/FrameworkMessage;

    if-eqz v4, :cond_e

    instance-of v4, v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    if-eqz v4, :cond_d

    check-cast v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    iget v1, v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;->connectionID:I

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Server;->pendingConnections:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v4, v1}, Lcom/esotericsoftware/kryo/util/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/kryonet/Connection;

    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/esotericsoftware/kryonet/Connection;->udpRemoteAddress:Ljava/net/InetSocketAddress;

    if-nez v4, :cond_5

    iput-object v8, v1, Lcom/esotericsoftware/kryonet/Connection;->udpRemoteAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryonet/Server;->addConnection(Lcom/esotericsoftware/kryonet/Connection;)V

    new-instance v4, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    invoke-direct {v4}, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;-><init>()V

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/Connection;->notifyConnected()V

    goto/16 :goto_4

    :catch_5
    move-exception v1

    move-object v1, v2

    goto/16 :goto_5

    :cond_c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_8

    :cond_d
    instance-of v4, v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;
    :try_end_10
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v4, :cond_e

    :try_start_11
    iget-object v1, v6, Lcom/esotericsoftware/kryonet/UdpConnection;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Server;->emptyBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v8}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_4

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :cond_e
    if-eqz v2, :cond_5

    :try_start_12
    invoke-virtual {v2, v1}, Lcom/esotericsoftware/kryonet/Connection;->notifyReceived(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_4

    :cond_f
    :try_start_13
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V

    goto/16 :goto_4

    :cond_10
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_1

    :cond_11
    iget-object v6, v3, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v6, v4, v5}, Lcom/esotericsoftware/kryonet/TcpConnection;->needsKeepAlive(J)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/esotericsoftware/kryonet/FrameworkMessage;->keepAlive:Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    invoke-virtual {v3, v6}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    goto/16 :goto_3

    :catch_7
    move-exception v0

    goto/16 :goto_1

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_4

    :cond_12
    return-void

    :cond_13
    move-object v2, v1

    goto :goto_9
.end method
