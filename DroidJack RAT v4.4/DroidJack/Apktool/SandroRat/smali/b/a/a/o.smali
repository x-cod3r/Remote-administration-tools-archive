.class public Lb/a/a/o;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Lb/a/a/k;

.field g:Lb/a/a/o;

.field h:Lb/a/a/h;

.field i:Lb/a/a/o;

.field private j:I

.field private k:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lb/a/a/o;->k:[I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lb/a/a/o;->k:[I

    :cond_0
    iget v0, p0, Lb/a/a/o;->j:I

    iget-object v1, p0, Lb/a/a/o;->k:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lb/a/a/o;->k:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [I

    iget-object v1, p0, Lb/a/a/o;->k:[I

    iget-object v2, p0, Lb/a/a/o;->k:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lb/a/a/o;->k:[I

    :cond_1
    iget-object v0, p0, Lb/a/a/o;->k:[I

    iget v1, p0, Lb/a/a/o;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/a/o;->j:I

    aput p1, v0, v1

    iget-object v0, p0, Lb/a/a/o;->k:[I

    iget v1, p0, Lb/a/a/o;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/a/o;->j:I

    aput p2, v0, v1

    return-void
.end method


# virtual methods
.method a()Lb/a/a/o;
    .locals 1

    iget-object v0, p0, Lb/a/a/o;->f:Lb/a/a/k;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lb/a/a/o;->f:Lb/a/a/k;

    iget-object p0, v0, Lb/a/a/k;->b:Lb/a/a/o;

    goto :goto_0
.end method

.method a(JI)V
    .locals 5

    iget v0, p0, Lb/a/a/o;->a:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget v0, p0, Lb/a/a/o;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lb/a/a/o;->a:I

    add-int/lit8 v0, p3, -0x1

    div-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lb/a/a/o;->k:[I

    :cond_0
    iget-object v0, p0, Lb/a/a/o;->k:[I

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget v2, v0, v1

    long-to-int v3, p1

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method a(Lb/a/a/o;JI)V
    .locals 4

    :goto_0
    if-eqz p0, :cond_7

    iget-object v1, p0, Lb/a/a/o;->i:Lb/a/a/o;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/o;->i:Lb/a/a/o;

    if-eqz p1, :cond_4

    iget v0, p0, Lb/a/a/o;->a:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/a/a/o;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lb/a/a/o;->a:I

    iget v0, p0, Lb/a/a/o;->a:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lb/a/a/o;->a(Lb/a/a/o;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lb/a/a/h;

    invoke-direct {v0}, Lb/a/a/h;-><init>()V

    iget v2, p0, Lb/a/a/o;->d:I

    iput v2, v0, Lb/a/a/h;->a:I

    iget-object v2, p1, Lb/a/a/o;->h:Lb/a/a/h;

    iget-object v2, v2, Lb/a/a/h;->b:Lb/a/a/o;

    iput-object v2, v0, Lb/a/a/h;->b:Lb/a/a/o;

    iget-object v2, p0, Lb/a/a/o;->h:Lb/a/a/h;

    iput-object v2, v0, Lb/a/a/h;->c:Lb/a/a/h;

    iput-object v0, p0, Lb/a/a/o;->h:Lb/a/a/h;

    :cond_1
    :goto_1
    iget-object v0, p0, Lb/a/a/o;->h:Lb/a/a/h;

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_6

    iget v2, p0, Lb/a/a/o;->a:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/a/a/o;->h:Lb/a/a/h;

    iget-object v2, v2, Lb/a/a/h;->c:Lb/a/a/h;

    if-eq v1, v2, :cond_3

    :cond_2
    iget-object v2, v1, Lb/a/a/h;->b:Lb/a/a/o;

    iget-object v2, v2, Lb/a/a/o;->i:Lb/a/a/o;

    if-nez v2, :cond_3

    iget-object v2, v1, Lb/a/a/h;->b:Lb/a/a/o;

    iput-object v0, v2, Lb/a/a/o;->i:Lb/a/a/o;

    iget-object v0, v1, Lb/a/a/h;->b:Lb/a/a/o;

    :cond_3
    iget-object v1, v1, Lb/a/a/h;->c:Lb/a/a/h;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2, p3}, Lb/a/a/o;->a(J)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object p0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2, p3, p4}, Lb/a/a/o;->a(JI)V

    goto :goto_1

    :cond_6
    move-object p0, v0

    goto :goto_0

    :cond_7
    return-void
.end method

.method a(Lb/a/a/q;Lb/a/a/d;IZ)V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lb/a/a/o;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    rsub-int/lit8 v0, p3, -0x1

    iget v1, p2, Lb/a/a/d;->b:I

    invoke-direct {p0, v0, v1}, Lb/a/a/o;->a(II)V

    invoke-virtual {p2, v2}, Lb/a/a/d;->c(I)Lb/a/a/d;

    :goto_0
    return-void

    :cond_0
    iget v0, p2, Lb/a/a/d;->b:I

    invoke-direct {p0, p3, v0}, Lb/a/a/o;->a(II)V

    invoke-virtual {p2, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget v0, p0, Lb/a/a/o;->c:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lb/a/a/d;->c(I)Lb/a/a/d;

    goto :goto_0

    :cond_2
    iget v0, p0, Lb/a/a/o;->c:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto :goto_0
.end method

.method a(J)Z
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lb/a/a/o;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/o;->k:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aget v1, v1, v2

    long-to-int v2, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method a(Lb/a/a/o;)Z
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lb/a/a/o;->a:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    iget v0, p1, Lb/a/a/o;->a:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v2, p0, Lb/a/a/o;->k:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lb/a/a/o;->k:[I

    aget v2, v2, v0

    iget-object v3, p1, Lb/a/a/o;->k:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method a(Lb/a/a/q;I[B)Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lb/a/a/o;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lb/a/a/o;->a:I

    iput p2, p0, Lb/a/a/o;->c:I

    move v1, v0

    :goto_0
    iget v2, p0, Lb/a/a/o;->j:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lb/a/a/o;->k:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v0

    iget-object v4, p0, Lb/a/a/o;->k:[I

    add-int/lit8 v0, v3, 0x1

    aget v3, v4, v3

    if-ltz v2, :cond_3

    sub-int v2, p2, v2

    const/16 v4, -0x8000

    if-lt v2, v4, :cond_0

    const/16 v4, 0x7fff

    if-le v2, v4, :cond_1

    :cond_0
    add-int/lit8 v1, v3, -0x1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0xa8

    if-gt v1, v4, :cond_2

    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v1, v1, 0x31

    int-to-byte v1, v1

    aput-byte v1, p3, v4

    :goto_1
    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v1, v1, 0x14

    int-to-byte v1, v1

    aput-byte v1, p3, v4

    goto :goto_1

    :cond_3
    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v2, 0x18

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    goto :goto_0

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
