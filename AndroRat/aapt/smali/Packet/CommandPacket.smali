.class public LPacket/CommandPacket;
.super Ljava/lang/Object;
.source "CommandPacket.java"

# interfaces
.implements LPacket/Packet;


# instance fields
.field private argument:[B

.field private commande:S

.field private targetChannel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(SI[B)V
    .locals 0
    .parameter "cmd"
    .parameter "targetChannel"
    .parameter "arg"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-short p1, p0, LPacket/CommandPacket;->commande:S

    .line 35
    iput-object p3, p0, LPacket/CommandPacket;->argument:[B

    .line 36
    iput p2, p0, LPacket/CommandPacket;->targetChannel:I

    .line 37
    return-void
.end method


# virtual methods
.method public build()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 55
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-short v4, p0, LPacket/CommandPacket;->commande:S

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 56
    .local v0, byteCmd:[B
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, LPacket/CommandPacket;->targetChannel:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 57
    .local v1, byteTargChan:[B
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    iget-object v4, p0, LPacket/CommandPacket;->argument:[B

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 59
    .local v2, cmdToSend:[B
    array-length v3, v0

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    array-length v3, v0

    array-length v4, v1

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v3, p0, LPacket/CommandPacket;->argument:[B

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    iget-object v5, p0, LPacket/CommandPacket;->argument:[B

    array-length v5, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    return-object v2
.end method

.method public getArguments()[B
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, LPacket/CommandPacket;->argument:[B

    return-object v0
.end method

.method public getCommand()S
    .locals 1

    .prologue
    .line 67
    iget-short v0, p0, LPacket/CommandPacket;->commande:S

    return v0
.end method

.method public getTargetChannel()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, LPacket/CommandPacket;->targetChannel:I

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, LPacket/CommandPacket;->commande:S

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, LPacket/CommandPacket;->targetChannel:I

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, LPacket/CommandPacket;->argument:[B

    .line 51
    iget-object v0, p0, LPacket/CommandPacket;->argument:[B

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 52
    return-void
.end method

.method public parse([B)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 40
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    .local v0, b:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, LPacket/CommandPacket;->commande:S

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, LPacket/CommandPacket;->targetChannel:I

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, LPacket/CommandPacket;->argument:[B

    .line 44
    iget-object v1, p0, LPacket/CommandPacket;->argument:[B

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 45
    return-void
.end method
