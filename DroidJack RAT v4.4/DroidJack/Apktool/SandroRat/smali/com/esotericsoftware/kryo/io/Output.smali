.class public Lcom/esotericsoftware/kryo/io/Output;
.super Ljava/io/OutputStream;


# instance fields
.field private buffer:[B

.field private capacity:I

.field private maxCapacity:I

.field private outputStream:Ljava/io/OutputStream;

.field private position:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize cannot be < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne p2, v0, :cond_1

    const p2, 0x7fffffff

    :cond_1
    iput p2, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/16 v0, 0x1000

    invoke-direct {p0, v0, v0}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    invoke-direct {p0, p2, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->setBuffer([BI)V

    return-void
.end method

.method public static intLength(IZ)I
    .locals 2

    if-nez p1, :cond_0

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int p0, v0, v1

    :cond_0
    ushr-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    ushr-int/lit8 v0, p0, 0xe

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    ushr-int/lit8 v0, p0, 0x15

    if-nez v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    ushr-int/lit8 v0, p0, 0x1c

    if-nez v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static longLength(JZ)I
    .locals 8

    const/4 v1, 0x7

    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    if-nez p2, :cond_0

    shl-long v2, p0, v0

    const/16 v4, 0x3f

    shr-long v4, p0, v4

    xor-long p0, v2, v4

    :cond_0
    ushr-long v2, p0, v1

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xe

    ushr-long v2, p0, v0

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x15

    ushr-long v2, p0, v0

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/16 v0, 0x1c

    ushr-long v2, p0, v0

    cmp-long v0, v2, v6

    if-nez v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/16 v0, 0x23

    ushr-long v2, p0, v0

    cmp-long v0, v2, v6

    if-nez v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/16 v0, 0x2a

    ushr-long v2, p0, v0

    cmp-long v0, v2, v6

    if-nez v0, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    const/16 v0, 0x31

    ushr-long v2, p0, v0

    cmp-long v0, v2, v6

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    const/16 v0, 0x38

    ushr-long v0, p0, v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_8

    const/16 v0, 0x8

    goto :goto_0

    :cond_8
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private require(I)Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    if-le p1, v1, :cond_1

    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer overflow. Max capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

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
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    :goto_1
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    if-ne v1, v2, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer overflow. Available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v2, v3

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

    :cond_2
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    :cond_3
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private writeAscii_slow(Ljava/lang/String;I)V
    .locals 5

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    const/4 v1, 0x0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    :goto_0
    if-ge v1, p2, :cond_1

    add-int v3, v1, v0

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {p1, v1, v3, v2, v4}, Ljava/lang/String;->getBytes(II[BI)V

    add-int/2addr v1, v0

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int v0, p2, v1

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeString_slow(Ljava/lang/CharSequence;II)V
    .locals 4

    :goto_0
    if-ge p3, p2, :cond_3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    sub-int v1, p2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_0
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x7ff

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method private writeUtf8Length(I)V
    .locals 3

    ushr-int/lit8 v0, p1, 0x6

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    or-int/lit16 v2, p1, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_0
    return-void

    :cond_0
    ushr-int/lit8 v0, p1, 0xd

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    or-int/lit8 v2, p1, 0x40

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, p1, 0x14

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    or-int/lit8 v2, p1, 0x40

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0xd

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_2
    ushr-int/lit8 v0, p1, 0x1b

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    or-int/lit8 v2, p1, 0x40

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0xd

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x14

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    or-int/lit8 v2, p1, 0x40

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0xd

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x14

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x1b

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:I

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public flush()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:I

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public position()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return v0
.end method

.method public setBuffer([B)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->setBuffer([BI)V

    return-void
.end method

.method public setBuffer([BI)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize cannot be < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    if-ne p2, v0, :cond_2

    const p2, 0x7fffffff

    :cond_2
    iput p2, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    array-length v0, p1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->total:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public total()I
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v0, v1

    return v0
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    return-void
.end method

.method public writeAscii(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeAscii_slow(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getBytes(II[BI)V

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_1
.end method

.method public writeBoolean(Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    if-eqz p1, :cond_0

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeByte(B)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeByte(I)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeBytes([B)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    return-void
.end method

.method public writeBytes([BII)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    return-void

    :cond_1
    add-int/2addr p2, v0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    goto :goto_0
.end method

.method public writeChar(C)V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeDouble(DDZ)I
    .locals 3

    mul-double v0, p1, p3

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1, p5}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(JZ)I

    move-result v0

    return v0
.end method

.method public writeDouble(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    return-void
.end method

.method public writeFloat(FFZ)I
    .locals 1

    mul-float v0, p1, p2

    float-to-int v0, v0

    invoke-virtual {p0, v0, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    move-result v0

    return v0
.end method

.method public writeFloat(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method

.method public writeInt(IZ)I
    .locals 7

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    shl-int/lit8 v5, p1, 0x1

    shr-int/lit8 v6, p1, 0x1f

    xor-int p1, v5, v6

    :cond_0
    ushr-int/lit8 v5, p1, 0x7

    if-nez v5, :cond_1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    :goto_0
    return v0

    :cond_1
    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v3, p1, 0x7

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    move v0, v1

    goto :goto_0

    :cond_2
    ushr-int/lit8 v0, p1, 0x15

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v3, p1, 0x7

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v3, p1, 0xe

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    move v0, v2

    goto :goto_0

    :cond_3
    ushr-int/lit8 v0, p1, 0x1c

    if-nez v0, :cond_4

    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x7

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0xe

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x15

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v0, v3

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x7

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0xe

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x15

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x1c

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v0, v4

    goto/16 :goto_0
.end method

.method public writeInt(I)V
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeLong(JZ)I
    .locals 7

    if-nez p3, :cond_0

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long v2, p1, v2

    xor-long p1, v0, v2

    :cond_0
    const/4 v0, 0x7

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xe

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x15

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/16 v0, 0x1c

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x23

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x2a

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x31

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v0, 0x9

    goto/16 :goto_0
.end method

.method public writeLong(J)V
    .locals 5

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeShort(I)V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeString(Ljava/lang/CharSequence;)V
    .locals 6

    if-nez p1, :cond_1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeUtf8Length(I)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v2

    if-lt v1, v3, :cond_4

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    :goto_1
    if-ge v0, v3, :cond_3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v2, 0x7f

    if-le v5, v2, :cond_5

    :cond_3
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    :cond_4
    if-ge v0, v3, :cond_0

    invoke-direct {p0, p1, v3, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeString_slow(Ljava/lang/CharSequence;II)V

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v1, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x7f

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    goto :goto_0

    :cond_2
    if-le v3, v1, :cond_a

    const/16 v2, 0x40

    if-ge v3, v2, :cond_a

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v6, :cond_4

    move v1, v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_6

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v2

    if-ge v1, v3, :cond_5

    invoke-direct {p0, p1, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeAscii_slow(Ljava/lang/String;I)V

    :goto_3
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {p1, v0, v3, v1, v2}, Ljava/lang/String;->getBytes(II[BI)V

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v3, 0x1

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeUtf8Length(I)V

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v2

    if-lt v1, v3, :cond_8

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    :goto_4
    if-ge v0, v3, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v6, :cond_9

    :cond_7
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    :cond_8
    if-ge v0, v3, :cond_0

    invoke-direct {p0, p1, v3, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeString_slow(Ljava/lang/CharSequence;II)V

    goto :goto_0

    :cond_9
    add-int/lit8 v2, v1, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_4

    :cond_a
    move v1, v0

    goto :goto_2
.end method
