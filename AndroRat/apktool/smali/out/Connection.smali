.class public Lout/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field controler:Linout/Controler;

.field dem:Lin/Demux;

.field in:Ljava/io/DataInputStream;

.field ip:Ljava/lang/String;

.field m:Lout/Mux;

.field out:Ljava/io/DataOutputStream;

.field port:I

.field readInstruction:Ljava/nio/ByteBuffer;

.field receive:Lin/Receiver;

.field s:Ljava/net/Socket;

.field stop:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "localhost"

    iput-object v0, p0, Lout/Connection;->ip:Ljava/lang/String;

    .line 41
    const/16 v0, 0x15b3

    iput v0, p0, Lout/Connection;->port:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lout/Connection;->stop:Z

    .line 54
    iput-object p1, p0, Lout/Connection;->ip:Ljava/lang/String;

    .line 55
    iput p2, p0, Lout/Connection;->port:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILinout/Controler;)V
    .locals 1
    .parameter "ip"
    .parameter "port"
    .parameter "ctrl"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "localhost"

    iput-object v0, p0, Lout/Connection;->ip:Ljava/lang/String;

    .line 41
    const/16 v0, 0x15b3

    iput v0, p0, Lout/Connection;->port:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lout/Connection;->stop:Z

    .line 60
    iput-object p1, p0, Lout/Connection;->ip:Ljava/lang/String;

    .line 61
    iput p2, p0, Lout/Connection;->port:I

    .line 62
    iput-object p3, p0, Lout/Connection;->controler:Linout/Controler;

    .line 63
    return-void
.end method


# virtual methods
.method public accept(Ljava/net/ServerSocket;)Z
    .locals 3
    .parameter "ss"

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lout/Connection;->s:Ljava/net/Socket;

    .line 94
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lout/Connection;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lout/Connection;->in:Ljava/io/DataInputStream;

    .line 95
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lout/Connection;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lout/Connection;->out:Ljava/io/DataOutputStream;

    .line 96
    new-instance v1, Lout/Mux;

    iget-object v2, p0, Lout/Connection;->out:Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Lout/Mux;-><init>(Ljava/io/DataOutputStream;)V

    iput-object v1, p0, Lout/Connection;->m:Lout/Mux;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v1, 0x1

    .line 103
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect()Z
    .locals 4

    .prologue
    .line 69
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lout/Connection;->ip:Ljava/lang/String;

    iget v3, p0, Lout/Connection;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lout/Connection;->s:Ljava/net/Socket;

    .line 70
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lout/Connection;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lout/Connection;->in:Ljava/io/DataInputStream;

    .line 71
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lout/Connection;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lout/Connection;->out:Ljava/io/DataOutputStream;

    .line 72
    new-instance v1, Lout/Mux;

    iget-object v2, p0, Lout/Connection;->out:Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Lout/Mux;-><init>(Ljava/io/DataOutputStream;)V

    iput-object v1, p0, Lout/Connection;->m:Lout/Mux;

    .line 73
    new-instance v1, Lin/Demux;

    iget-object v2, p0, Lout/Connection;->controler:Linout/Controler;

    const-string v3, "moi"

    invoke-direct {v1, v2, v3}, Lin/Demux;-><init>(Linout/Controler;Ljava/lang/String;)V

    iput-object v1, p0, Lout/Connection;->dem:Lin/Demux;

    .line 74
    new-instance v1, Lin/Receiver;

    iget-object v2, p0, Lout/Connection;->s:Ljava/net/Socket;

    invoke-direct {v1, v2}, Lin/Receiver;-><init>(Ljava/net/Socket;)V

    iput-object v1, p0, Lout/Connection;->receive:Lin/Receiver;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v1, 0x1

    .line 79
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstruction()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lout/Connection;->receive:Lin/Receiver;

    invoke-virtual {v0}, Lin/Receiver;->read()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lout/Connection;->readInstruction:Ljava/nio/ByteBuffer;

    .line 111
    iget-object v0, p0, Lout/Connection;->dem:Lin/Demux;

    iget-object v1, p0, Lout/Connection;->readInstruction:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lin/Demux;->receive(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lout/Connection;->readInstruction:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 116
    :goto_0
    iget-object v0, p0, Lout/Connection;->readInstruction:Ljava/nio/ByteBuffer;

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lout/Connection;->readInstruction:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lout/Connection;->connect()Z

    move-result v0

    return v0
.end method

.method public sendData(I[B)V
    .locals 1
    .parameter "chan"
    .parameter "packet"

    .prologue
    .line 121
    iget-object v0, p0, Lout/Connection;->m:Lout/Mux;

    invoke-virtual {v0, p1, p2}, Lout/Mux;->send(I[B)V

    .line 122
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lout/Connection;->s:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method
