.class public LPacket/TransportPacket;
.super Ljava/lang/Object;
.source "TransportPacket.java"

# interfaces
.implements LPacket/Packet;


# instance fields
.field private NumSeq:S

.field private awaitedLength:I

.field private channel:I

.field private data:[B

.field private fillingPosition:I

.field private last:Z

.field private localLength:I

.field private totalLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, LPacket/TransportPacket;->awaitedLength:I

    .line 40
    iput v0, p0, LPacket/TransportPacket;->fillingPosition:I

    .line 42
    return-void
.end method

.method public constructor <init>(IIIZS[B)V
    .locals 0
    .parameter "tdl"
    .parameter "ll"
    .parameter "channel"
    .parameter "last"
    .parameter "nums"
    .parameter "data"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, LPacket/TransportPacket;->totalLength:I

    .line 47
    iput p3, p0, LPacket/TransportPacket;->channel:I

    .line 48
    iput-boolean p4, p0, LPacket/TransportPacket;->last:Z

    .line 49
    iput-object p6, p0, LPacket/TransportPacket;->data:[B

    .line 50
    iput p2, p0, LPacket/TransportPacket;->localLength:I

    .line 51
    iput-short p5, p0, LPacket/TransportPacket;->NumSeq:S

    .line 52
    return-void
.end method


# virtual methods
.method public build()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 150
    iget-object v2, p0, LPacket/TransportPacket;->data:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0xf

    new-array v0, v2, [B

    .line 151
    .local v0, cmdToSend:[B
    iget v2, p0, LPacket/TransportPacket;->totalLength:I

    .line 152
    iget v3, p0, LPacket/TransportPacket;->localLength:I

    iget-boolean v4, p0, LPacket/TransportPacket;->last:Z

    iget-short v5, p0, LPacket/TransportPacket;->NumSeq:S

    iget v6, p0, LPacket/TransportPacket;->channel:I

    .line 151
    invoke-static {v2, v3, v4, v5, v6}, Linout/Protocol;->dataHeaderGenerator(IIZSI)[B

    move-result-object v1

    .line 153
    .local v1, header:[B
    array-length v2, v1

    invoke-static {v1, v7, v0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object v2, p0, LPacket/TransportPacket;->data:[B

    array-length v3, v1

    iget-object v4, p0, LPacket/TransportPacket;->data:[B

    array-length v4, v4

    invoke-static {v2, v7, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    return-object v0
.end method

.method public dataFilling(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .parameter "buffer"
    .parameter "length"

    .prologue
    .line 141
    iget-object v0, p0, LPacket/TransportPacket;->data:[B

    if-nez v0, :cond_0

    iget v0, p0, LPacket/TransportPacket;->localLength:I

    new-array v0, v0, [B

    iput-object v0, p0, LPacket/TransportPacket;->data:[B

    .line 143
    :cond_0
    iget-object v0, p0, LPacket/TransportPacket;->data:[B

    iget v1, p0, LPacket/TransportPacket;->fillingPosition:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 144
    iget v0, p0, LPacket/TransportPacket;->fillingPosition:I

    add-int/2addr v0, p2

    iput v0, p0, LPacket/TransportPacket;->fillingPosition:I

    .line 145
    iget v0, p0, LPacket/TransportPacket;->localLength:I

    iget v1, p0, LPacket/TransportPacket;->fillingPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, LPacket/TransportPacket;->awaitedLength:I

    .line 147
    return-void
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, LPacket/TransportPacket;->channel:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, LPacket/TransportPacket;->data:[B

    return-object v0
.end method

.method public getLocalLength()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, LPacket/TransportPacket;->localLength:I

    return v0
.end method

.method public getNumSeq()S
    .locals 1

    .prologue
    .line 172
    iget-short v0, p0, LPacket/TransportPacket;->NumSeq:S

    return v0
.end method

.method public getTotalLength()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, LPacket/TransportPacket;->totalLength:I

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, LPacket/TransportPacket;->last:Z

    return v0
.end method

.method public parse([B)V
    .locals 5
    .parameter "packet"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 55
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 57
    .local v0, b:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, LPacket/TransportPacket;->totalLength:I

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, LPacket/TransportPacket;->localLength:I

    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 61
    .local v1, checkLast:B
    if-ne v1, v3, :cond_0

    .line 62
    iput-boolean v3, p0, LPacket/TransportPacket;->last:Z

    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, LPacket/TransportPacket;->NumSeq:S

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, LPacket/TransportPacket;->channel:I

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, LPacket/TransportPacket;->data:[B

    .line 69
    iget-object v2, p0, LPacket/TransportPacket;->data:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 70
    return-void

    .line 64
    :cond_0
    iput-boolean v4, p0, LPacket/TransportPacket;->last:Z

    goto :goto_0
.end method

.method public parse(Ljava/nio/ByteBuffer;)Z
    .locals 5
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, LPacket/TransportPacket;->totalLength:I

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, LPacket/TransportPacket;->localLength:I

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 79
    .local v0, lst:B
    if-ne v0, v1, :cond_0

    .line 80
    iput-boolean v1, p0, LPacket/TransportPacket;->last:Z

    .line 84
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, p0, LPacket/TransportPacket;->NumSeq:S

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, LPacket/TransportPacket;->channel:I

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, LPacket/TransportPacket;->localLength:I

    if-ge v3, v4, :cond_1

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, p1, v2}, LPacket/TransportPacket;->dataFilling(Ljava/nio/ByteBuffer;I)V

    .line 107
    :goto_1
    return v1

    .line 82
    :cond_0
    iput-boolean v2, p0, LPacket/TransportPacket;->last:Z

    goto :goto_0

    .line 105
    :cond_1
    iget v1, p0, LPacket/TransportPacket;->localLength:I

    new-array v1, v1, [B

    iput-object v1, p0, LPacket/TransportPacket;->data:[B

    .line 106
    iget-object v1, p0, LPacket/TransportPacket;->data:[B

    iget-object v3, p0, LPacket/TransportPacket;->data:[B

    array-length v3, v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v1, v2

    .line 107
    goto :goto_1
.end method

.method public parseCompleter(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, LPacket/TransportPacket;->awaitedLength:I

    if-ge v0, v1, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, LPacket/TransportPacket;->dataFilling(Ljava/nio/ByteBuffer;I)V

    .line 121
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 126
    :cond_0
    iget v0, p0, LPacket/TransportPacket;->awaitedLength:I

    invoke-virtual {p0, p1, v0}, LPacket/TransportPacket;->dataFilling(Ljava/nio/ByteBuffer;I)V

    .line 127
    const/4 v0, 0x0

    goto :goto_0
.end method
