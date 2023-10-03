.class public Lcom/esotericsoftware/kryo/io/OutputChunked;
.super Lcom/esotericsoftware/kryo/io/Output;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private writeChunkSize()V
    .locals 3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/OutputChunked;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/OutputChunked;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_3
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method public endChunks()V
    .locals 2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/OutputChunked;->flush()V

    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/OutputChunked;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/OutputChunked;->position()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/OutputChunked;->writeChunkSize()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
