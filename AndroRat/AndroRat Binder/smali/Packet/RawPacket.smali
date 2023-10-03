.class public LPacket/RawPacket;
.super Ljava/lang/Object;
.source "RawPacket.java"

# interfaces
.implements LPacket/Packet;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, LPacket/RawPacket;->data:[B

    .line 32
    return-void
.end method


# virtual methods
.method public build()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, LPacket/RawPacket;->data:[B

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, LPacket/RawPacket;->data:[B

    return-object v0
.end method

.method public parse([B)V
    .locals 0
    .parameter "packet"

    .prologue
    .line 39
    iput-object p1, p0, LPacket/RawPacket;->data:[B

    .line 40
    return-void
.end method
