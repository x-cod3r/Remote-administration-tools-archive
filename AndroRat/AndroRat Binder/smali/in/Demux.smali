.class public Lin/Demux;
.super Ljava/lang/Object;
.source "Demux.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private controler:Linout/Controler;

.field private imei:Ljava/lang/String;

.field private p:LPacket/TransportPacket;

.field private partialDataExpected:Z

.field private reading:Z


# direct methods
.method public constructor <init>(Linout/Controler;Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .parameter "i"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lin/Demux;->imei:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lin/Demux;->controler:Linout/Controler;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/Demux;->reading:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lin/Demux;->partialDataExpected:Z

    .line 50
    return-void
.end method


# virtual methods
.method public receive(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 55
    :goto_0
    iget-boolean v0, p0, Lin/Demux;->reading:Z

    if-nez v0, :cond_1

    .line 88
    iput-boolean v3, p0, Lin/Demux;->reading:Z

    .line 89
    :cond_0
    return v3

    .line 58
    :cond_1
    iget-boolean v0, p0, Lin/Demux;->partialDataExpected:Z

    if-nez v0, :cond_2

    .line 62
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 70
    :cond_2
    iget-boolean v0, p0, Lin/Demux;->partialDataExpected:Z

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lin/Demux;->p:LPacket/TransportPacket;

    invoke-virtual {v0, p1}, LPacket/TransportPacket;->parseCompleter(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lin/Demux;->partialDataExpected:Z

    .line 80
    :goto_1
    iget-boolean v0, p0, Lin/Demux;->partialDataExpected:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lin/Demux;->controler:Linout/Controler;

    iget-object v1, p0, Lin/Demux;->p:LPacket/TransportPacket;

    iget-object v2, p0, Lin/Demux;->imei:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Linout/Controler;->Storage(LPacket/TransportPacket;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, LPacket/TransportPacket;

    invoke-direct {v0}, LPacket/TransportPacket;-><init>()V

    iput-object v0, p0, Lin/Demux;->p:LPacket/TransportPacket;

    .line 75
    iget-object v0, p0, Lin/Demux;->p:LPacket/TransportPacket;

    invoke-virtual {v0, p1}, LPacket/TransportPacket;->parse(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lin/Demux;->partialDataExpected:Z

    goto :goto_1
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 93
    iput-object p1, p0, Lin/Demux;->imei:Ljava/lang/String;

    .line 94
    return-void
.end method
