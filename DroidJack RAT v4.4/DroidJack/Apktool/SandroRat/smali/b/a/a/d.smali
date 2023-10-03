.class public Lb/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lb/a/a/d;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lb/a/a/d;->a:[B

    return-void
.end method

.method private d(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lb/a/a/d;->a:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lb/a/a/d;->b:I

    add-int/2addr v1, p1

    if-le v0, v1, :cond_0

    :goto_0
    new-array v0, v0, [B

    iget-object v1, p0, Lb/a/a/d;->a:[B

    iget v2, p0, Lb/a/a/d;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lb/a/a/d;->a:[B

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lb/a/a/d;
    .locals 4

    iget v0, p0, Lb/a/a/d;->b:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lb/a/a/d;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lb/a/a/d;->d(I)V

    :cond_0
    iget-object v1, p0, Lb/a/a/d;->a:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    iput v2, p0, Lb/a/a/d;->b:I

    return-object p0
.end method

.method a(II)Lb/a/a/d;
    .locals 4

    iget v0, p0, Lb/a/a/d;->b:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lb/a/a/d;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lb/a/a/d;->d(I)V

    :cond_0
    iget-object v1, p0, Lb/a/a/d;->a:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    iput v0, p0, Lb/a/a/d;->b:I

    return-object p0
.end method

.method public a(J)Lb/a/a/d;
    .locals 5

    iget v0, p0, Lb/a/a/d;->b:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lb/a/a/d;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lb/a/a/d;->d(I)V

    :cond_0
    iget-object v1, p0, Lb/a/a/d;->a:[B

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    long-to-int v2, p1

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    iput v0, p0, Lb/a/a/d;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/a/d;
    .locals 10

    const/16 v9, 0x7ff

    const/16 v8, 0x7f

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v0, p0, Lb/a/a/d;->b:I

    add-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v5

    iget-object v2, p0, Lb/a/a/d;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v5, 0x2

    invoke-direct {p0, v1}, Lb/a/a/d;->d(I)V

    :cond_0
    iget-object v1, p0, Lb/a/a/d;->a:[B

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v2, v5, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v2, v3, 0x1

    int-to-byte v0, v5

    aput-byte v0, v1, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v7, :cond_1

    if-gt v4, v8, :cond_1

    add-int/lit8 v0, v2, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v4, v3

    move v0, v3

    :goto_1
    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_2

    if-gt v6, v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-le v6, v9, :cond_3

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    iget v4, p0, Lb/a/a/d;->b:I

    ushr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget v4, p0, Lb/a/a/d;->b:I

    add-int/lit8 v4, v4, 0x1

    int-to-byte v6, v0

    aput-byte v6, v1, v4

    iget v4, p0, Lb/a/a/d;->b:I

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    array-length v6, v1

    if-le v4, v6, :cond_8

    iput v2, p0, Lb/a/a/d;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lb/a/a/d;->d(I)V

    iget-object v0, p0, Lb/a/a/d;->a:[B

    :goto_3
    if-ge v3, v5, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v7, :cond_5

    if-gt v4, v8, :cond_5

    add-int/lit8 v1, v2, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_3

    :cond_5
    if-le v4, v9, :cond_6

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0x1f

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v4, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_5
    iput v0, p0, Lb/a/a/d;->b:I

    return-object p0

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_5
.end method

.method public a([BII)Lb/a/a/d;
    .locals 2

    iget v0, p0, Lb/a/a/d;->b:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lb/a/a/d;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p3}, Lb/a/a/d;->d(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lb/a/a/d;->a:[B

    iget v1, p0, Lb/a/a/d;->b:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v0, p0, Lb/a/a/d;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lb/a/a/d;->b:I

    return-object p0
.end method

.method public b(I)Lb/a/a/d;
    .locals 4

    iget v0, p0, Lb/a/a/d;->b:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lb/a/a/d;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lb/a/a/d;->d(I)V

    :cond_0
    iget-object v1, p0, Lb/a/a/d;->a:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Lb/a/a/d;->b:I

    return-object p0
.end method

.method b(II)Lb/a/a/d;
    .locals 4

    iget v0, p0, Lb/a/a/d;->b:I

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lb/a/a/d;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lb/a/a/d;->d(I)V

    :cond_0
    iget-object v1, p0, Lb/a/a/d;->a:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v0

    iput v2, p0, Lb/a/a/d;->b:I

    return-object p0
.end method

.method public c(I)Lb/a/a/d;
    .locals 4

    iget v0, p0, Lb/a/a/d;->b:I

    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lb/a/a/d;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lb/a/a/d;->d(I)V

    :cond_0
    iget-object v1, p0, Lb/a/a/d;->a:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Lb/a/a/d;->b:I

    return-object p0
.end method
