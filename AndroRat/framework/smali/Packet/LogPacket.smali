.class public LPacket/LogPacket;
.super Ljava/lang/Object;
.source "LogPacket.java"

# interfaces
.implements LPacket/Packet;


# instance fields
.field date:J

.field message:Ljava/lang/String;

.field type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(JBLjava/lang/String;)V
    .locals 0
    .parameter "date"
    .parameter "type"
    .parameter "message"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, LPacket/LogPacket;->date:J

    .line 36
    iput-byte p3, p0, LPacket/LogPacket;->type:B

    .line 37
    iput-object p4, p0, LPacket/LogPacket;->message:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public build()[B
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, LPacket/LogPacket;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    .local v0, b:Ljava/nio/ByteBuffer;
    iget-wide v1, p0, LPacket/LogPacket;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 43
    iget-byte v1, p0, LPacket/LogPacket;->type:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 44
    iget-object v1, p0, LPacket/LogPacket;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, LPacket/LogPacket;->date:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, LPacket/LogPacket;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 62
    iget-byte v0, p0, LPacket/LogPacket;->type:B

    return v0
.end method

.method public parse([B)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 49
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    .local v0, b:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, LPacket/LogPacket;->date:J

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, LPacket/LogPacket;->type:B

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [B

    .line 53
    .local v1, tmp:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 54
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, LPacket/LogPacket;->message:Ljava/lang/String;

    .line 55
    return-void
.end method
