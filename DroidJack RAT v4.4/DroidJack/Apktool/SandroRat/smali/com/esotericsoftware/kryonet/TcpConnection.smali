.class Lcom/esotericsoftware/kryonet/TcpConnection;
.super Ljava/lang/Object;


# static fields
.field private static final IPTOS_LOWDELAY:I = 0x10


# instance fields
.field bufferPositionFix:Z

.field private currentObjectLength:I

.field idleThreshold:F

.field keepAliveMillis:I

.field private volatile lastReadTime:J

.field private volatile lastWriteTime:J

.field final readBuffer:Ljava/nio/ByteBuffer;

.field private selectionKey:Ljava/nio/channels/SelectionKey;

.field final serialization:Lcom/esotericsoftware/kryonet/Serialization;

.field socketChannel:Ljava/nio/channels/SocketChannel;

.field timeoutMillis:I

.field final writeBuffer:Ljava/nio/ByteBuffer;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Serialization;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->keepAliveMillis:I

    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->timeoutMillis:I

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->idleThreshold:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private writeToSocket()Z
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection is closed."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->bufferPositionFix:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/nio/channels/Selector;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SelectionKey;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->currentObjectLength:I

    :try_start_0
    iput-object p2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->lastWriteTime:J

    iput-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->lastReadTime:J

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->close()V

    throw v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

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

.method public connect(Ljava/nio/channels/Selector;Ljava/net/SocketAddress;I)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->close()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->currentObjectLength:I

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, p0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->lastWriteTime:J

    iput-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->lastReadTime:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->close()V

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

.method public isTimedOut(J)Z
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->timeoutMillis:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->lastReadTime:J

    sub-long v0, p1, v0

    iget v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->timeoutMillis:I

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

.method public needsKeepAlive(J)Z
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->keepAliveMillis:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->lastWriteTime:J

    sub-long v0, p1, v0

    iget v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->keepAliveMillis:I

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

.method public readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, -0x1

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-nez v1, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection is closed."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->currentObjectLength:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    invoke-interface {v2}, Lcom/esotericsoftware/kryonet/Serialization;->getLengthLength()I

    move-result v2

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_3

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-ne v3, v6, :cond_1

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection is closed."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->lastReadTime:J

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_3

    :cond_2
    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3}, Lcom/esotericsoftware/kryonet/Serialization;->readLength(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->currentObjectLength:I

    iget v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->currentObjectLength:I

    if-gtz v2, :cond_4

    new-instance v0, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->currentObjectLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->currentObjectLength:I

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_5

    new-instance v0, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read object larger than read buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->currentObjectLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->currentObjectLength:I

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_7

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-ne v1, v6, :cond_6

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection is closed."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->lastReadTime:J

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v2, :cond_2

    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->currentObjectLength:I

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    add-int v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1, v4}, Lcom/esotericsoftware/kryonet/Serialization;->read(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v3, v2, :cond_2

    new-instance v3, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect number of bytes ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remaining) used to deserialize object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryonet/KryoNetException;

    const-string v2, "Error during deserialization."

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public send(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)I
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection is closed."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    invoke-interface {v2}, Lcom/esotericsoftware/kryonet/Serialization;->getLengthLength()I

    move-result v2

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v3, p1, v4, p2}, Lcom/esotericsoftware/kryonet/Serialization;->write(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->serialization:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    sub-int v2, v3, v2

    sub-int/2addr v2, v0

    invoke-interface {v4, v5, v2}, Lcom/esotericsoftware/kryonet/Serialization;->writeLength(Ljava/nio/ByteBuffer;I)V

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->writeToSocket()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->lastWriteTime:J

    sub-int v0, v3, v0

    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/esotericsoftware/kryonet/KryoNetException;

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

    invoke-direct {v2, v3, v0}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public writeOperation()V
    .locals 4

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->writeToSocket()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->selectionKey:Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->lastWriteTime:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
