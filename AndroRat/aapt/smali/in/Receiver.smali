.class public Lin/Receiver;
.super Ljava/lang/Object;
.source "Receiver.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private is:Ljava/io/InputStream;

.field private received_data:[B

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x800

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lin/Receiver;->socket:Ljava/net/Socket;

    .line 42
    iget-object v0, p0, Lin/Receiver;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lin/Receiver;->is:Ljava/io/InputStream;

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Lin/Receiver;->received_data:[B

    .line 45
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lin/Receiver;->buffer:Ljava/nio/ByteBuffer;

    .line 46
    return-void
.end method


# virtual methods
.method public read()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, n:I
    iget-object v1, p0, Lin/Receiver;->is:Ljava/io/InputStream;

    iget-object v2, p0, Lin/Receiver;->received_data:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 53
    iget-object v1, p0, Lin/Receiver;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 54
    iget-object v1, p0, Lin/Receiver;->received_data:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lin/Receiver;->buffer:Ljava/nio/ByteBuffer;

    .line 57
    iget-object v1, p0, Lin/Receiver;->buffer:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public read(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 7
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, n:I
    const/4 v1, 0x0

    check-cast v1, [B

    .line 65
    .local v1, theRest:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    new-array v1, v2, [B

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v1, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 70
    iget-object v2, p0, Lin/Receiver;->received_data:[B

    array-length v3, v1

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v2, p0, Lin/Receiver;->is:Ljava/io/InputStream;

    iget-object v3, p0, Lin/Receiver;->received_data:[B

    array-length v4, v1

    array-length v5, v1

    rsub-int v5, v5, 0x800

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 76
    array-length v2, v1

    add-int/2addr v0, v2

    .line 83
    :goto_0
    iget-object v2, p0, Lin/Receiver;->received_data:[B

    invoke-static {v2, v6, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lin/Receiver;->buffer:Ljava/nio/ByteBuffer;

    .line 86
    iget-object v2, p0, Lin/Receiver;->buffer:Ljava/nio/ByteBuffer;

    return-object v2

    .line 79
    :cond_0
    iget-object v2, p0, Lin/Receiver;->is:Ljava/io/InputStream;

    iget-object v3, p0, Lin/Receiver;->received_data:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0
.end method
