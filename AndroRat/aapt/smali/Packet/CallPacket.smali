.class public LPacket/CallPacket;
.super Ljava/lang/Object;
.source "CallPacket.java"

# interfaces
.implements LPacket/Packet;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x37214c0a1f2548ffL


# instance fields
.field private contact_id:I

.field private date:J

.field private duration:J

.field private id:I

.field private name:Ljava/lang/String;

.field private nameSize:I

.field private phoneNumber:Ljava/lang/String;

.field private phoneNumberSize:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(IIJJILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "type"
    .parameter "date"
    .parameter "duration"
    .parameter "contact_id"
    .parameter "number"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, LPacket/CallPacket;->id:I

    .line 44
    iput p2, p0, LPacket/CallPacket;->type:I

    .line 45
    iput-wide p3, p0, LPacket/CallPacket;->date:J

    .line 46
    iput-wide p5, p0, LPacket/CallPacket;->duration:J

    .line 47
    iput p7, p0, LPacket/CallPacket;->contact_id:I

    .line 48
    iput-object p8, p0, LPacket/CallPacket;->phoneNumber:Ljava/lang/String;

    .line 49
    iget-object v0, p0, LPacket/CallPacket;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, LPacket/CallPacket;->phoneNumberSize:I

    .line 53
    :goto_0
    iput-object p9, p0, LPacket/CallPacket;->name:Ljava/lang/String;

    .line 54
    if-eqz p9, :cond_1

    .line 55
    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, LPacket/CallPacket;->nameSize:I

    .line 58
    :goto_1
    return-void

    .line 52
    :cond_0
    iput v1, p0, LPacket/CallPacket;->phoneNumberSize:I

    goto :goto_0

    .line 57
    :cond_1
    iput v1, p0, LPacket/CallPacket;->nameSize:I

    goto :goto_1
.end method


# virtual methods
.method public build()[B
    .locals 3

    .prologue
    .line 61
    iget v1, p0, LPacket/CallPacket;->phoneNumberSize:I

    add-int/lit8 v1, v1, 0x24

    iget v2, p0, LPacket/CallPacket;->nameSize:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, b:Ljava/nio/ByteBuffer;
    iget v1, p0, LPacket/CallPacket;->id:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    iget v1, p0, LPacket/CallPacket;->type:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    iget-wide v1, p0, LPacket/CallPacket;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 65
    iget-wide v1, p0, LPacket/CallPacket;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 66
    iget v1, p0, LPacket/CallPacket;->contact_id:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 67
    iget v1, p0, LPacket/CallPacket;->phoneNumberSize:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    iget-object v1, p0, LPacket/CallPacket;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 69
    iget v1, p0, LPacket/CallPacket;->nameSize:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 70
    iget-object v1, p0, LPacket/CallPacket;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getContact_id()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, LPacket/CallPacket;->contact_id:I

    return v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, LPacket/CallPacket;->date:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, LPacket/CallPacket;->duration:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, LPacket/CallPacket;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, LPacket/CallPacket;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSize()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, LPacket/CallPacket;->nameSize:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, LPacket/CallPacket;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumberSize()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, LPacket/CallPacket;->phoneNumberSize:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, LPacket/CallPacket;->type:I

    return v0
.end method

.method public parse([B)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 75
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    .local v0, b:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, LPacket/CallPacket;->id:I

    .line 77
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, LPacket/CallPacket;->type:I

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, LPacket/CallPacket;->date:J

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, LPacket/CallPacket;->duration:J

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, LPacket/CallPacket;->contact_id:I

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, LPacket/CallPacket;->phoneNumberSize:I

    .line 82
    iget v2, p0, LPacket/CallPacket;->phoneNumberSize:I

    new-array v1, v2, [B

    .line 83
    .local v1, tmp:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, LPacket/CallPacket;->phoneNumber:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, LPacket/CallPacket;->nameSize:I

    .line 86
    iget v2, p0, LPacket/CallPacket;->nameSize:I

    new-array v1, v2, [B

    .line 87
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 88
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, LPacket/CallPacket;->name:Ljava/lang/String;

    .line 89
    return-void
.end method
