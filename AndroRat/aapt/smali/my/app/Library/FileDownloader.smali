.class public Lmy/app/Library/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# instance fields
.field BUFF_SIZE:I

.field buffer:[B

.field channel:I

.field ctx:Lmy/app/client/ClientListener;

.field f:Ljava/io/File;

.field finalData:[B

.field in:Ljava/io/InputStream;

.field numseq:S

.field packet:LPacket/FilePacket;


# direct methods
.method public constructor <init>(Lmy/app/client/ClientListener;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-short v0, p0, Lmy/app/Library/FileDownloader;->numseq:S

    .line 42
    const/16 v0, 0x1000

    iput v0, p0, Lmy/app/Library/FileDownloader;->BUFF_SIZE:I

    .line 45
    iput-object p1, p0, Lmy/app/Library/FileDownloader;->ctx:Lmy/app/client/ClientListener;

    .line 46
    return-void
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;I)Z
    .locals 4
    .parameter "s"
    .parameter "chan"

    .prologue
    .line 49
    iput p2, p0, Lmy/app/Library/FileDownloader;->channel:I

    .line 50
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmy/app/Library/FileDownloader;->f:Ljava/io/File;

    .line 52
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lmy/app/Library/FileDownloader;->f:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lmy/app/Library/FileDownloader;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmy/app/Library/FileDownloader$1;

    invoke-direct {v2, p0}, Lmy/app/Library/FileDownloader$1;-><init>(Lmy/app/Library/FileDownloader;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    .local v1, loadf:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 64
    const/4 v2, 0x1

    .end local v1           #loadf:Ljava/lang/Thread;
    :goto_0
    return v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 7

    .prologue
    .line 70
    :goto_0
    :try_start_0
    iget v3, p0, Lmy/app/Library/FileDownloader;->BUFF_SIZE:I

    new-array v3, v3, [B

    iput-object v3, p0, Lmy/app/Library/FileDownloader;->buffer:[B

    .line 71
    iget-object v3, p0, Lmy/app/Library/FileDownloader;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lmy/app/Library/FileDownloader;->buffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 72
    .local v1, read:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 88
    :goto_1
    iget-object v3, p0, Lmy/app/Library/FileDownloader;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 93
    .end local v1           #read:I
    :goto_2
    return-void

    .line 75
    .restart local v1       #read:I
    :cond_0
    iget v3, p0, Lmy/app/Library/FileDownloader;->BUFF_SIZE:I

    if-ne v1, v3, :cond_1

    .line 76
    new-instance v3, LPacket/FilePacket;

    iget-short v4, p0, Lmy/app/Library/FileDownloader;->numseq:S

    const/4 v5, 0x1

    iget-object v6, p0, Lmy/app/Library/FileDownloader;->buffer:[B

    invoke-direct {v3, v4, v5, v6}, LPacket/FilePacket;-><init>(SB[B)V

    iput-object v3, p0, Lmy/app/Library/FileDownloader;->packet:LPacket/FilePacket;

    .line 77
    iget-object v3, p0, Lmy/app/Library/FileDownloader;->ctx:Lmy/app/client/ClientListener;

    iget v4, p0, Lmy/app/Library/FileDownloader;->channel:I

    iget-object v5, p0, Lmy/app/Library/FileDownloader;->packet:LPacket/FilePacket;

    invoke-virtual {v5}, LPacket/FilePacket;->build()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmy/app/client/ClientListener;->handleData(I[B)V

    .line 78
    iget-short v3, p0, Lmy/app/Library/FileDownloader;->numseq:S

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lmy/app/Library/FileDownloader;->numseq:S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1           #read:I
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lmy/app/Library/FileDownloader;->ctx:Lmy/app/client/ClientListener;

    const-string v4, "IOException loading file"

    invoke-virtual {v3, v4}, Lmy/app/client/ClientListener;->sendError(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #read:I
    :cond_1
    :try_start_1
    new-array v2, v1, [B

    .line 82
    .local v2, tmp:[B
    iget-object v3, p0, Lmy/app/Library/FileDownloader;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    new-instance v3, LPacket/FilePacket;

    iget-short v4, p0, Lmy/app/Library/FileDownloader;->numseq:S

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, LPacket/FilePacket;-><init>(SB[B)V

    iput-object v3, p0, Lmy/app/Library/FileDownloader;->packet:LPacket/FilePacket;

    .line 84
    iget-object v3, p0, Lmy/app/Library/FileDownloader;->ctx:Lmy/app/client/ClientListener;

    iget v4, p0, Lmy/app/Library/FileDownloader;->channel:I

    iget-object v5, p0, Lmy/app/Library/FileDownloader;->packet:LPacket/FilePacket;

    invoke-virtual {v5}, LPacket/FilePacket;->build()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmy/app/client/ClientListener;->handleData(I[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
