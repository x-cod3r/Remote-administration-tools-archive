.class public Lcom/esotericsoftware/a/l;
.super Ljava/lang/Object;


# static fields
.field static final f:Ljava/util/Random;


# instance fields
.field public a:I

.field b:[Ljava/lang/Object;

.field c:[Ljava/lang/Object;

.field d:I

.field e:I

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/esotericsoftware/a/m;

.field private n:Lcom/esotericsoftware/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/esotericsoftware/a/l;->f:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/a/l;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    const/high16 v1, 0x40000000    # 2.0f

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/esotericsoftware/a/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/a/l;->d:I

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p2, p0, Lcom/esotericsoftware/a/l;->g:F

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/esotericsoftware/a/l;->j:I

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/a/l;->i:I

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/esotericsoftware/a/l;->h:I

    const/4 v0, 0x3

    iget v1, p0, Lcom/esotericsoftware/a/l;->d:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/a/l;->k:I

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/a/l;->d:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/a/l;->l:I

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->k:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 7

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    iget v4, p0, Lcom/esotericsoftware/a/l;->i:I

    const/4 v0, 0x0

    iget v5, p0, Lcom/esotericsoftware/a/l;->l:I

    :cond_0
    sget-object v1, Lcom/esotericsoftware/a/l;->f:Ljava/util/Random;

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    aget-object v1, v3, p7

    aput-object p1, v2, p7

    aput-object p2, v3, p7

    move-object p2, v1

    move-object p1, p8

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    and-int p3, v1, v4

    aget-object p4, v2, p3

    if-nez p4, :cond_2

    aput-object p1, v2, p3

    aput-object p2, v3, p3

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/l;->a:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->j:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->c(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    aget-object v1, v3, p3

    aput-object p1, v2, p3

    aput-object p2, v3, p3

    move-object p2, v1

    move-object p1, p4

    goto :goto_0

    :pswitch_1
    aget-object v1, v3, p5

    aput-object p1, v2, p5

    aput-object p2, v3, p5

    move-object p2, v1

    move-object p1, p6

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/esotericsoftware/a/l;->d(I)I

    move-result p5

    aget-object p6, v2, p5

    if-nez p6, :cond_3

    aput-object p1, v2, p5

    aput-object p2, v3, p5

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/l;->a:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->j:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->c(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/esotericsoftware/a/l;->e(I)I

    move-result p7

    aget-object p8, v2, p7

    if-nez p8, :cond_4

    aput-object p1, v2, p7

    aput-object p2, v3, p7

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/l;->a:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->j:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->c(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/a/l;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static b(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/a/l;->i:I

    and-int v3, v0, v1

    aget-object v4, v2, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v1, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->d(I)I

    move-result v5

    aget-object v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v1, v5

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->e(I)I

    move-result v7

    aget-object v8, v2, v7

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v1, v7

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->e:I

    add-int v10, v0, v1

    move v1, v0

    :goto_1
    if-ge v1, v10, :cond_4

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    if-nez v4, :cond_6

    aput-object p1, v2, v3

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v0, v3

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/l;->a:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->j:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->c(I)V

    :cond_5
    move-object v0, v9

    goto :goto_0

    :cond_6
    if-nez v6, :cond_8

    aput-object p1, v2, v5

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v0, v5

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/l;->a:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->j:I

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->c(I)V

    :cond_7
    move-object v0, v9

    goto :goto_0

    :cond_8
    if-nez v8, :cond_a

    aput-object p1, v2, v7

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v0, v7

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/l;->a:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->j:I

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->c(I)V

    :cond_9
    move-object v0, v9

    goto/16 :goto_0

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    move-object v0, v9

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    iget v2, p0, Lcom/esotericsoftware/a/l;->e:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(I)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    iget v2, p0, Lcom/esotericsoftware/a/l;->e:I

    add-int/2addr v2, v0

    iput p1, p0, Lcom/esotericsoftware/a/l;->d:I

    int-to-float v0, p1

    iget v3, p0, Lcom/esotericsoftware/a/l;->g:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/esotericsoftware/a/l;->j:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/esotericsoftware/a/l;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/esotericsoftware/a/l;->h:I

    const/4 v0, 0x3

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/a/l;->k:I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    div-int/lit8 v3, v3, 0x8

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/a/l;->l:I

    iget-object v3, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    iget v0, p0, Lcom/esotericsoftware/a/l;->k:I

    add-int/2addr v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget v0, p0, Lcom/esotericsoftware/a/l;->k:I

    add-int/2addr v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    iput v1, p0, Lcom/esotericsoftware/a/l;->a:I

    iput v1, p0, Lcom/esotericsoftware/a/l;->e:I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v1, v3, v0

    if-eqz v1, :cond_0

    aget-object v5, v4, v0

    invoke-direct {p0, v1, v5}, Lcom/esotericsoftware/a/l;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/a/l;->i:I

    and-int v3, v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aget-object v4, v1, v3

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aput-object p1, v0, v3

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v0, v3

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/l;->a:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->j:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->c(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->d(I)I

    move-result v5

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aget-object v6, v1, v5

    if-nez v6, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aput-object p1, v0, v5

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v0, v5

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/l;->a:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->j:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->c(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->e(I)I

    move-result v7

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aget-object v8, v0, v7

    if-nez v8, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aput-object p1, v0, v7

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v0, v7

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/l;->a:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->j:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->c(I)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private d(I)I
    .locals 2

    const v0, -0x4b47d1c7

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/esotericsoftware/a/l;->h:I

    ushr-int v1, v0, v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/esotericsoftware/a/l;->i:I

    and-int/2addr v0, v1

    return v0
.end method

.method private d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/a/l;->e:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->k:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/a/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->e:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object p2, v1, v0

    iget v0, p0, Lcom/esotericsoftware/a/l;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/a/l;->e:I

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/a/l;->a:I

    goto :goto_0
.end method

.method private d(Ljava/lang/Object;)Z
    .locals 4

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    iget v2, p0, Lcom/esotericsoftware/a/l;->e:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e(I)I
    .locals 2

    const v0, -0x312e3dbf

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/esotericsoftware/a/l;->h:I

    ushr-int v1, v0, v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/esotericsoftware/a/l;->i:I

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()Lcom/esotericsoftware/a/m;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->m:Lcom/esotericsoftware/a/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/a/m;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/a/m;-><init>(Lcom/esotericsoftware/a/l;)V

    iput-object v0, p0, Lcom/esotericsoftware/a/l;->m:Lcom/esotericsoftware/a/m;

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/l;->m:Lcom/esotericsoftware/a/m;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/l;->m:Lcom/esotericsoftware/a/m;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/m;->b()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v0, p0, Lcom/esotericsoftware/a/l;->i:I

    and-int/2addr v0, v1

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/esotericsoftware/a/l;->d(I)I

    move-result v0

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/esotericsoftware/a/l;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/a/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/esotericsoftware/a/l;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/a/l;->e:I

    iget v0, p0, Lcom/esotericsoftware/a/l;->d:I

    iget v1, p0, Lcom/esotericsoftware/a/l;->e:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object v3, v1, v0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    aput-object v3, v0, p1

    goto :goto_0
.end method

.method public b()Lcom/esotericsoftware/a/p;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->n:Lcom/esotericsoftware/a/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/a/p;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/a/p;-><init>(Lcom/esotericsoftware/a/l;)V

    iput-object v0, p0, Lcom/esotericsoftware/a/l;->n:Lcom/esotericsoftware/a/p;

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/l;->n:Lcom/esotericsoftware/a/p;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/l;->n:Lcom/esotericsoftware/a/p;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/p;->b()V

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/a/l;->i:I

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/l;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/l;->d(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x3d

    iget v0, p0, Lcom/esotericsoftware/a/l;->a:I

    if-nez v0, :cond_0

    const-string v0, "{}"

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    array-length v0, v3

    move v1, v0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_2

    aget-object v1, v3, v0

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v1, v4, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_4

    aget-object v0, v3, v1

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, v4, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
