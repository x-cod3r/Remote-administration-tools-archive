.class public Lcom/esotericsoftware/kryo/io/InputChunked;
.super Lcom/esotericsoftware/kryo/io/Input;


# instance fields
.field private chunkSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    return-void
.end method

.method private readChunkSize()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move v1, v0

    :goto_0
    const/16 v3, 0x20

    if-ge v1, v3, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "Buffer underflow."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v1

    or-int/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    :try_start_1
    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "Malformed integer."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected fill([BII)I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->readChunkSize()V

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->readChunkSize()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public nextChunks()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->readChunkSize()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/InputChunked;->skip(I)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    return-void
.end method

.method public rewind()V
    .locals 1

    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Input;->rewind()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    return-void
.end method

.method public setBuffer([BII)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->setInputStream(Ljava/io/InputStream;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    return-void
.end method
