.class public Lcom/esotericsoftware/kryo/io/Input;
.super Ljava/io/InputStream;


# instance fields
.field private buffer:[B

.field private capacity:I

.field private chars:[C

.field private inputStream:Ljava/io/InputStream;

.field private limit:I

.field private position:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    return-void
.end method

.method private optional(I)I
    .locals 7

    const/4 v6, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    invoke-static {v3, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->total:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->total:I

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :cond_1
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v4, v0

    invoke-virtual {p0, v3, v0, v4}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    move p1, v0

    goto :goto_0

    :cond_2
    add-int/2addr v0, v3

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_3
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2
.end method

.method private readAscii()Ljava/lang/String;
    .locals 6

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    :goto_0
    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;->readAscii_slow()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, -0x1

    aget-byte v4, v2, v0

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    sub-int v5, v1, v3

    invoke-direct {v0, v2, v4, v3, v5}, Ljava/lang/String;-><init>([BIII)V

    add-int/lit8 v3, v1, -0x1

    aget-byte v4, v2, v3

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private readAscii_slow()Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    array-length v0, v0

    if-le v1, v0, :cond_0

    mul-int/lit8 v0, v1, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    move v4, v2

    move v2, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-byte v7, v5, v4

    int-to-char v7, v7

    aput-char v7, v0, v2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v4, v5, v2

    array-length v2, v0

    if-ne v1, v2, :cond_2

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [C

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    move-object v0, v2

    :cond_2
    and-int/lit16 v2, v4, 0x80

    const/16 v6, 0x80

    if-ne v2, v6, :cond_3

    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    aput-char v4, v0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    int-to-char v4, v4

    aput-char v4, v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private readInt_slow(Z)I
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit8 v0, v1, 0x7f

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    return v0

    :cond_1
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method private readLong_slow(Z)J
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v1

    and-int/lit8 v0, v2, 0x7f

    int-to-long v0, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-direct {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0x7

    int-to-long v4, v4

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    invoke-direct {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0xe

    int-to-long v4, v4

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    invoke-direct {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0x15

    int-to-long v4, v4

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    invoke-direct {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    invoke-direct {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x23

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    invoke-direct {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x2a

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    invoke-direct {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x31

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    invoke-direct {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    :cond_0
    if-nez p1, :cond_1

    ushr-long v2, v0, v7

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method private readUtf8(I)V
    .locals 7

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v6, v3, v0

    if-gez v6, :cond_2

    add-int/lit8 v0, v1, -0x1

    :cond_0
    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    if-ge v2, p1, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8_slow(II)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    int-to-char v6, v6

    aput-char v6, v4, v2

    move v2, v0

    move v0, v1

    goto :goto_0
.end method

.method private readUtf8Length(I)I
    .locals 4

    and-int/lit8 v0, p1, 0x3f

    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xd

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private readUtf8Length_slow(I)I
    .locals 5

    const/4 v4, 0x1

    and-int/lit8 v0, p1, 0x3f

    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_0

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xd

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private readUtf8_slow(II)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    :goto_0
    if-ge p2, p1, :cond_2

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v5}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v2, 0x4

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :pswitch_1
    int-to-char v2, v2

    aput-char v2, v0, p2

    goto :goto_1

    :pswitch_2
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v5}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_1
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, p2

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, p2

    goto :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private require(I)I
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    if-le p1, v1, :cond_1

    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer too small: capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->total:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->total:I

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    if-lt v0, p1, :cond_3

    :goto_1
    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "Buffer underflow."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/2addr v0, v1

    if-lt v0, p1, :cond_2

    goto :goto_1
.end method


# virtual methods
.method public canReadInt()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v2, v3

    if-lt v2, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    if-gtz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public canReadLong()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v2, v3

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    if-gtz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected fill([BII)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public limit()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return v0
.end method

.method public position()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    return v0
.end method

.method public read()I
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5

    const/4 v2, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p3

    :cond_1
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-static {v3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    sub-int v0, p3, v1

    :goto_1
    return v0

    :cond_3
    add-int/2addr p2, v0

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    if-ne p3, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v4, :cond_1

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readByteUnsigned()I
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V

    return-void
.end method

.method public readBytes([BII)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    return-void

    :cond_1
    add-int/2addr p2, v0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    goto :goto_0
.end method

.method public readBytes(I)[B
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V

    return-object v0
.end method

.method public readChar()C
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDouble(DZ)D
    .locals 3

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/Input;->readLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloat(FZ)F
    .locals 1

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    return v0
.end method

.method public readInt()I
    .locals 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public readInt(Z)I
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readInt_slow(Z)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit8 v0, v1, 0x7f

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    :cond_2
    if-nez p1, :cond_0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public readLong()J
    .locals 6

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    int-to-long v2, v1

    const/16 v1, 0x38

    shl-long/2addr v2, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readLong(Z)J
    .locals 8

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readLong_slow(Z)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v1

    and-int/lit8 v0, v2, 0x7f

    int-to-long v0, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0x7

    int-to-long v4, v4

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0xe

    int-to-long v4, v4

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0x15

    int-to-long v4, v4

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x23

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x2a

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x31

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    :cond_2
    if-nez p1, :cond_0

    ushr-long v2, v0, v7

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    goto/16 :goto_0
.end method

.method public readShort()S
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readShortUnsigned()I
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;->readAscii()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Length(I)I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    array-length v0, v0

    if-ge v0, v1, :cond_1

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    :cond_1
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8(I)V

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Length_slow(I)I

    move-result v0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v0, ""

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;->readAscii()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Length(I)I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    array-length v0, v0

    if-ge v0, v1, :cond_1

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    :cond_1
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Length_slow(I)I

    move-result v0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public rewind()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:I

    return-void
.end method

.method public setBuffer([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    return-void
.end method

.method public setBuffer([BII)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iput p2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iput p3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    array-length v0, p1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->rewind()V

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->total:I

    return-void
.end method

.method public skip(J)J
    .locals 5

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    long-to-int v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->skip(I)V

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public skip(I)V
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    goto :goto_0
.end method

.method public total()I
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v0, v1

    return v0
.end method
