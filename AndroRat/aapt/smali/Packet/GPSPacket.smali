.class public LPacket/GPSPacket;
.super Ljava/lang/Object;
.source "GPSPacket.java"

# interfaces
.implements LPacket/Packet;


# instance fields
.field private accuracy:F

.field private altitude:D

.field private latitude:D

.field private longitude:D

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(DDDFF)V
    .locals 0
    .parameter "lat"
    .parameter "lon"
    .parameter "alt"
    .parameter "speed"
    .parameter "acc"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, LPacket/GPSPacket;->latitude:D

    .line 42
    iput-wide p3, p0, LPacket/GPSPacket;->longitude:D

    .line 43
    iput-wide p5, p0, LPacket/GPSPacket;->altitude:D

    .line 44
    iput p7, p0, LPacket/GPSPacket;->speed:F

    .line 45
    iput p8, p0, LPacket/GPSPacket;->accuracy:F

    .line 46
    return-void
.end method


# virtual methods
.method public build()[B
    .locals 5

    .prologue
    .line 50
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    .local v0, b:Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Longitude : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, LPacket/GPSPacket;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    iget-wide v1, p0, LPacket/GPSPacket;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 53
    iget-wide v1, p0, LPacket/GPSPacket;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 54
    iget-wide v1, p0, LPacket/GPSPacket;->altitude:D

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 55
    iget v1, p0, LPacket/GPSPacket;->speed:F

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 56
    iget v1, p0, LPacket/GPSPacket;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, LPacket/GPSPacket;->accuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, LPacket/GPSPacket;->altitude:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, LPacket/GPSPacket;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, LPacket/GPSPacket;->longitude:D

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, LPacket/GPSPacket;->speed:F

    return v0
.end method

.method public parse([B)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 62
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    .local v0, b:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v1

    iput-wide v1, p0, LPacket/GPSPacket;->longitude:D

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v1

    iput-wide v1, p0, LPacket/GPSPacket;->latitude:D

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v1

    iput-wide v1, p0, LPacket/GPSPacket;->altitude:D

    .line 66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, LPacket/GPSPacket;->speed:F

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, LPacket/GPSPacket;->accuracy:F

    .line 68
    return-void
.end method
