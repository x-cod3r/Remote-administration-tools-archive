.class public Lcom/esotericsoftware/kryonet/Connection;
.super Ljava/lang/Object;


# instance fields
.field endPoint:Lcom/esotericsoftware/kryonet/EndPoint;

.field id:I

.field volatile isConnected:Z

.field private lastPingID:I

.field private lastPingSendTime:J

.field private listenerLock:Ljava/lang/Object;

.field private listeners:[Lcom/esotericsoftware/kryonet/Listener;

.field private name:Ljava/lang/String;

.field private returnTripTime:I

.field tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

.field udp:Lcom/esotericsoftware/kryonet/UdpConnection;

.field udpRemoteAddress:Ljava/net/InetSocketAddress;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryonet/Connection;->id:I

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/esotericsoftware/kryonet/Listener;

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->listenerLock:Ljava/lang/Object;

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
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Connection;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

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

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Connection;->isConnected:Z

    iput-boolean v2, p0, Lcom/esotericsoftware/kryonet/Connection;->isConnected:Z

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/TcpConnection;->close()V

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v1, v1, Lcom/esotericsoftware/kryonet/UdpConnection;->connectedAddress:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->notifyDisconnected()V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryonet/Connection;->setConnected(Z)V

    return-void
.end method

.method public getEndPoint()Lcom/esotericsoftware/kryonet/EndPoint;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->endPoint:Lcom/esotericsoftware/kryonet/EndPoint;

    return-object v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryonet/Connection;->id:I

    return v0
.end method

.method public getRemoteAddressTCP()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemoteAddressUDP()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/UdpConnection;->connectedAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->udpRemoteAddress:Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public getReturnTripTime()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryonet/Connection;->returnTripTime:I

    return v0
.end method

.method public getTcpWriteBufferSize()I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method initialize(Lcom/esotericsoftware/kryonet/Serialization;II)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-direct {v0, p1, p2, p3}, Lcom/esotericsoftware/kryonet/TcpConnection;-><init>(Lcom/esotericsoftware/kryonet/Serialization;II)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Connection;->isConnected:Z

    return v0
.end method

.method public isIdle()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v1, v1, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget v1, v1, Lcom/esotericsoftware/kryonet/TcpConnection;->idleThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyConnected()V
    .locals 4

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Lcom/esotericsoftware/kryonet/Listener;->connected(Lcom/esotericsoftware/kryonet/Connection;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method notifyDisconnected()V
    .locals 4

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Lcom/esotericsoftware/kryonet/Listener;->disconnected(Lcom/esotericsoftware/kryonet/Connection;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method notifyIdle()V
    .locals 4

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Lcom/esotericsoftware/kryonet/Listener;->idle(Lcom/esotericsoftware/kryonet/Connection;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method notifyReceived(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;

    iget-boolean v1, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;->isReply:Z

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;->id:I

    iget v1, p0, Lcom/esotericsoftware/kryonet/Connection;->lastPingID:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/esotericsoftware/kryonet/Connection;->lastPingSendTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/esotericsoftware/kryonet/Connection;->returnTripTime:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3, p0, p1}, Lcom/esotericsoftware/kryonet/Listener;->received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;->isReply:Z

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
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
    iget-object v3, p0, Lcom/esotericsoftware/kryonet/Connection;->listenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Connection;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v5, v4

    if-nez v5, :cond_1

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v1, v5, -0x1

    new-array v6, v1, [Lcom/esotericsoftware/kryonet/Listener;

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v7, v4, v2

    if-ne p1, v7, :cond_2

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v5, -0x1

    if-ne v0, v1, :cond_3

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    :try_start_1
    aput-object v7, v6, v0

    move v0, v1

    goto :goto_2

    :cond_4
    iput-object v6, p0, Lcom/esotericsoftware/kryonet/Connection;->listeners:[Lcom/esotericsoftware/kryonet/Listener;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public sendTCP(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v1, p0, p1}, Lcom/esotericsoftware/kryonet/TcpConnection;->send(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto :goto_0
.end method

.method public sendUDP(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->udpRemoteAddress:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Connection;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v1, v1, Lcom/esotericsoftware/kryonet/UdpConnection;->connectedAddress:Ljava/net/InetSocketAddress;

    :cond_1
    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/esotericsoftware/kryonet/Connection;->isConnected:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not connected via UDP."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez v1, :cond_4

    :try_start_0
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Connection is closed."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    :cond_3
    :goto_0
    return v0

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Connection;->udp:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v2, p0, p1, v1}, Lcom/esotericsoftware/kryonet/UdpConnection;->send(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Ljava/net/SocketAddress;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto :goto_0
.end method

.method public setBufferPositionFix(Z)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iput-boolean p1, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->bufferPositionFix:Z

    return-void
.end method

.method setConnected(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryonet/Connection;->isConnected:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/esotericsoftware/kryonet/Connection;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setIdleThreshold(F)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iput p1, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->idleThreshold:F

    return-void
.end method

.method public setKeepAliveTCP(I)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iput p1, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->keepAliveMillis:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Connection;->name:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->tcp:Lcom/esotericsoftware/kryonet/TcpConnection;

    iput p1, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->timeoutMillis:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/esotericsoftware/kryonet/Connection;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateReturnTripTime()V
    .locals 4

    new-instance v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;-><init>()V

    iget v1, p0, Lcom/esotericsoftware/kryonet/Connection;->lastPingID:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryonet/Connection;->lastPingID:I

    iput v1, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/esotericsoftware/kryonet/Connection;->lastPingSendTime:J

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    return-void
.end method
