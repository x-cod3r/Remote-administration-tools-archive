.class public LPacket/ShortSMSPacket;
.super Ljava/lang/Object;
.source "ShortSMSPacket.java"

# interfaces
.implements LPacket/Packet;


# instance fields
.field private address:Ljava/lang/String;

.field private address_size:I

.field private body:Ljava/lang/String;

.field private body_size:I

.field private date:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .parameter "ad"
    .parameter "dat"
    .parameter "body"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, LPacket/ShortSMSPacket;->address:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, LPacket/ShortSMSPacket;->address_size:I

    .line 39
    iput-wide p2, p0, LPacket/ShortSMSPacket;->date:J

    .line 40
    iput-object p4, p0, LPacket/ShortSMSPacket;->body:Ljava/lang/String;

    .line 41
    iget-object v0, p0, LPacket/ShortSMSPacket;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, LPacket/ShortSMSPacket;->body_size:I

    .line 42
    return-void
.end method


# virtual methods
.method public build()[B
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, LPacket/ShortSMSPacket;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, LPacket/ShortSMSPacket;->body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 47
    .local v0, b:Ljava/nio/ByteBuffer;
    iget v1, p0, LPacket/ShortSMSPacket;->address_size:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    iget-object v1, p0, LPacket/ShortSMSPacket;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    iget-wide v1, p0, LPacket/ShortSMSPacket;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 50
    iget v1, p0, LPacket/ShortSMSPacket;->body_size:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 51
    iget-object v1, p0, LPacket/ShortSMSPacket;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, LPacket/ShortSMSPacket;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, LPacket/ShortSMSPacket;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, LPacket/ShortSMSPacket;->date:J

    return-wide v0
.end method

.method public parse([B)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 56
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 57
    .local v0, b:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, LPacket/ShortSMSPacket;->address_size:I

    .line 58
    iget v2, p0, LPacket/ShortSMSPacket;->address_size:I

    new-array v1, v2, [B

    .line 59
    .local v1, tmp:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 60
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, LPacket/ShortSMSPacket;->address:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, LPacket/ShortSMSPacket;->date:J

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, LPacket/ShortSMSPacket;->body_size:I

    .line 63
    iget v2, p0, LPacket/ShortSMSPacket;->body_size:I

    new-array v1, v2, [B

    .line 64
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 65
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, LPacket/ShortSMSPacket;->body:Ljava/lang/String;

    .line 66
    return-void
.end method
