.class Lb/a/a/q;
.super Lb/a/a/p;


# instance fields
.field private A:[I

.field private B:I

.field private C:[I

.field private D:I

.field private E:Lb/a/a/m;

.field private F:Lb/a/a/m;

.field private G:I

.field private H:Lb/a/a/d;

.field private I:I

.field private J:Lb/a/a/d;

.field private K:I

.field private L:Lb/a/a/d;

.field private M:Lb/a/a/c;

.field private N:Z

.field private O:I

.field private final P:I

.field private Q:Lb/a/a/o;

.field private R:Lb/a/a/o;

.field private S:Lb/a/a/o;

.field private T:I

.field private U:I

.field final c:Lb/a/a/g;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:I

.field h:[I

.field private i:I

.field private final j:I

.field private final k:I

.field private final l:Ljava/lang/String;

.field private m:Lb/a/a/d;

.field private n:Lb/a/a/b;

.field private o:Lb/a/a/b;

.field private p:[Lb/a/a/b;

.field private q:[Lb/a/a/b;

.field private r:I

.field private s:Lb/a/a/c;

.field private t:Lb/a/a/d;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Lb/a/a/d;

.field private z:I


# direct methods
.method constructor <init>(Lb/a/a/g;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 5

    const/high16 v4, 0x40000

    const/4 v1, 0x0

    invoke-direct {p0, v4}, Lb/a/a/p;-><init>(I)V

    new-instance v0, Lb/a/a/d;

    invoke-direct {v0}, Lb/a/a/d;-><init>()V

    iput-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v0, p1, Lb/a/a/g;->t:Lb/a/a/q;

    if-nez v0, :cond_0

    iput-object p0, p1, Lb/a/a/g;->t:Lb/a/a/q;

    :goto_0
    iput-object p0, p1, Lb/a/a/g;->u:Lb/a/a/q;

    iput-object p1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iput p2, p0, Lb/a/a/q;->i:I

    invoke-virtual {p1, p3}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lb/a/a/q;->j:I

    invoke-virtual {p1, p4}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lb/a/a/q;->k:I

    iput-object p4, p0, Lb/a/a/q;->l:Ljava/lang/String;

    iput-object p5, p0, Lb/a/a/q;->d:Ljava/lang/String;

    if-eqz p6, :cond_1

    array-length v0, p6

    if-lez v0, :cond_1

    array-length v0, p6

    iput v0, p0, Lb/a/a/q;->g:I

    iget v0, p0, Lb/a/a/q;->g:I

    new-array v0, v0, [I

    iput-object v0, p0, Lb/a/a/q;->h:[I

    move v0, v1

    :goto_1
    iget v2, p0, Lb/a/a/q;->g:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lb/a/a/q;->h:[I

    aget-object v3, p6, v0

    invoke-virtual {p1, v3}, Lb/a/a/g;->c(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lb/a/a/g;->u:Lb/a/a/q;

    iput-object p0, v0, Lb/a/a/q;->b:Lb/a/a/p;

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_6

    :goto_2
    iput v1, p0, Lb/a/a/q;->P:I

    if-nez p7, :cond_2

    if-eqz p8, :cond_5

    :cond_2
    if-eqz p8, :cond_3

    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lb/a/a/q;->i:I

    or-int/2addr v0, v4

    iput v0, p0, Lb/a/a/q;->i:I

    :cond_3
    iget-object v0, p0, Lb/a/a/q;->l:Ljava/lang/String;

    invoke-static {v0}, Lb/a/a/s;->e(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    iput v0, p0, Lb/a/a/q;->v:I

    iput v0, p0, Lb/a/a/q;->w:I

    new-instance v0, Lb/a/a/o;

    invoke-direct {v0}, Lb/a/a/o;-><init>()V

    iput-object v0, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    iget-object v0, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    iget v1, v0, Lb/a/a/o;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lb/a/a/o;->a:I

    iget-object v0, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    invoke-virtual {p0, v0}, Lb/a/a/q;->a(Lb/a/a/o;)V

    :cond_5
    return-void

    :cond_6
    if-eqz p7, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    goto :goto_2
.end method

.method static a([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static a([I[III)I
    .locals 3

    sub-int v1, p3, p2

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget v2, p0, v0

    if-ge p2, v2, :cond_1

    aget v2, p0, v0

    if-gt v2, p3, :cond_1

    aget v2, p1, v0

    add-int/2addr v1, v2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v2, p0, v0

    if-ge p3, v2, :cond_0

    aget v2, p0, v0

    if-gt v2, p2, :cond_0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_2
    return v1
.end method

.method private a(III)V
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    iget-object v1, p0, Lb/a/a/q;->C:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/q;->C:[I

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lb/a/a/q;->C:[I

    :cond_1
    iget-object v0, p0, Lb/a/a/q;->C:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lb/a/a/q;->C:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lb/a/a/q;->C:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v0, 0x3

    iput v0, p0, Lb/a/a/q;->B:I

    return-void
.end method

.method private a(Lb/a/a/k;)V
    .locals 11

    const v10, 0x1000004

    const v9, 0x1000003

    const/4 v1, 0x0

    iget-object v4, p1, Lb/a/a/k;->c:[I

    iget-object v5, p1, Lb/a/a/k;->d:[I

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_3

    aget v6, v4, v0

    const/high16 v7, 0x1000000

    if-ne v6, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    :goto_1
    if-eq v6, v10, :cond_0

    if-ne v6, v9, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    move v3, v1

    goto :goto_1

    :cond_3
    move v0, v1

    move v3, v1

    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_6

    aget v6, v5, v0

    add-int/lit8 v3, v3, 0x1

    if-eq v6, v10, :cond_4

    if-ne v6, v9, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lb/a/a/k;->b:Lb/a/a/o;

    iget v0, v0, Lb/a/a/o;->c:I

    invoke-direct {p0, v0, v2, v3}, Lb/a/a/q;->a(III)V

    move v0, v1

    :goto_3
    if-lez v2, :cond_9

    aget v3, v4, v0

    iget-object v6, p0, Lb/a/a/q;->C:[I

    iget v7, p0, Lb/a/a/q;->B:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lb/a/a/q;->B:I

    aput v3, v6, v7

    if-eq v3, v10, :cond_7

    if-ne v3, v9, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    array-length v0, v5

    if-ge v1, v0, :cond_c

    aget v0, v5, v1

    iget-object v2, p0, Lb/a/a/q;->C:[I

    iget v3, p0, Lb/a/a/q;->B:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lb/a/a/q;->B:I

    aput v0, v2, v3

    if-eq v0, v10, :cond_a

    if-ne v0, v9, :cond_b

    :cond_a
    add-int/lit8 v1, v1, 0x1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Lb/a/a/q;->f()V

    return-void
.end method

.method private a(Lb/a/a/o;[Lb/a/a/o;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v0, :cond_2

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    const/16 v2, 0xab

    invoke-virtual {v0, v2, v1, v3, v3}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    invoke-direct {p0, v1, p1}, Lb/a/a/q;->c(ILb/a/a/o;)V

    invoke-virtual {p1}, Lb/a/a/o;->a()Lb/a/a/o;

    move-result-object v0

    iget v2, v0, Lb/a/a/o;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lb/a/a/o;->a:I

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, Lb/a/a/q;->c(ILb/a/a/o;)V

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lb/a/a/o;->a()Lb/a/a/o;

    move-result-object v2

    iget v3, v2, Lb/a/a/o;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lb/a/a/o;->a:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/a/a/q;->T:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/a/a/q;->T:I

    iget v0, p0, Lb/a/a/q;->T:I

    invoke-direct {p0, v0, p1}, Lb/a/a/q;->c(ILb/a/a/o;)V

    :goto_1
    array-length v0, p2

    if-ge v1, v0, :cond_1

    iget v0, p0, Lb/a/a/q;->T:I

    aget-object v2, p2, v1

    invoke-direct {p0, v0, v2}, Lb/a/a/q;->c(ILb/a/a/o;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lb/a/a/q;->e()V

    :cond_2
    return-void
.end method

.method static a([BII)V
    .locals 2

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method static a([I[ILb/a/a/o;)V
    .locals 2

    iget v0, p2, Lb/a/a/o;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget v1, p2, Lb/a/a/o;->c:I

    invoke-static {p0, p1, v0, v1}, Lb/a/a/q;->a([I[III)I

    move-result v0

    iput v0, p2, Lb/a/a/o;->c:I

    iget v0, p2, Lb/a/a/o;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Lb/a/a/o;->a:I

    :cond_0
    return-void
.end method

.method static b([BI)S
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lb/a/a/g;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    check-cast p1, Lb/a/a/o;

    iget v1, p1, Lb/a/a/o;->c:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto :goto_0
.end method

.method static c([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private c(ILb/a/a/o;)V
    .locals 2

    new-instance v0, Lb/a/a/h;

    invoke-direct {v0}, Lb/a/a/h;-><init>()V

    iput p1, v0, Lb/a/a/h;->a:I

    iput-object p2, v0, Lb/a/a/h;->b:Lb/a/a/o;

    iget-object v1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v1, v1, Lb/a/a/o;->h:Lb/a/a/h;

    iput-object v1, v0, Lb/a/a/h;->c:Lb/a/a/h;

    iget-object v1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iput-object v0, v1, Lb/a/a/o;->h:Lb/a/a/h;

    return-void
.end method

.method private e()V
    .locals 3

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/o;

    invoke-direct {v0}, Lb/a/a/o;-><init>()V

    new-instance v1, Lb/a/a/k;

    invoke-direct {v1}, Lb/a/a/k;-><init>()V

    iput-object v1, v0, Lb/a/a/o;->f:Lb/a/a/k;

    iget-object v1, v0, Lb/a/a/o;->f:Lb/a/a/k;

    iput-object v0, v1, Lb/a/a/k;->b:Lb/a/a/o;

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v2, v2, Lb/a/a/d;->a:[B

    invoke-virtual {v0, p0, v1, v2}, Lb/a/a/o;->a(Lb/a/a/q;I[B)Z

    iget-object v1, p0, Lb/a/a/q;->R:Lb/a/a/o;

    iput-object v0, v1, Lb/a/a/o;->g:Lb/a/a/o;

    iput-object v0, p0, Lb/a/a/q;->R:Lb/a/a/o;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    return-void

    :cond_0
    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget v1, p0, Lb/a/a/q;->U:I

    iput v1, v0, Lb/a/a/o;->e:I

    goto :goto_0
.end method

.method private e(II)V
    .locals 7

    const/high16 v6, 0xff00000

    const v5, 0xfffff

    const/4 v4, 0x7

    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lb/a/a/q;->C:[I

    aget v2, v0, p1

    const/high16 v0, -0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    and-int v0, v2, v5

    and-int v1, v2, v6

    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    invoke-virtual {v1, v0}, Lb/a/a/d;->a(I)Lb/a/a/d;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    invoke-virtual {v1, v4}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v3, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v3, v3, Lb/a/a/g;->n:[Lb/a/a/n;

    aget-object v0, v3, v0

    iget-object v0, v0, Lb/a/a/n;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lb/a/a/g;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v2, v2, Lb/a/a/g;->n:[Lb/a/a/n;

    aget-object v0, v2, v0

    iget v0, v0, Lb/a/a/n;->c:I

    invoke-virtual {v1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    shr-int/lit8 v0, v0, 0x1c

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_2

    :cond_1
    and-int v0, v2, v6

    const/high16 v1, 0x1700000

    if-ne v0, v1, :cond_2

    const/16 v0, 0x4c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v0, v0, Lb/a/a/g;->n:[Lb/a/a/n;

    and-int v1, v2, v5

    aget-object v0, v0, v1

    iget-object v0, v0, Lb/a/a/n;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    invoke-virtual {v0, v4}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/g;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v2, 0xf

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x4a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_1
    const/16 v0, 0x49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_2
    const/16 v0, 0x46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_3
    const/16 v0, 0x44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_4
    const/16 v0, 0x5a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_5
    const/16 v0, 0x42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_6
    const/16 v0, 0x43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_7
    const/16 v0, 0x53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1700000 -> :sswitch_0
        0x1800000 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lb/a/a/q;->A:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/d;

    invoke-direct {v0}, Lb/a/a/d;-><init>()V

    iput-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    :cond_0
    invoke-direct {p0}, Lb/a/a/q;->g()V

    iget v0, p0, Lb/a/a/q;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/q;->x:I

    :cond_1
    iget-object v0, p0, Lb/a/a/q;->C:[I

    iput-object v0, p0, Lb/a/a/q;->A:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/q;->C:[I

    return-void
.end method

.method private g()V
    .locals 12

    const/16 v0, 0x40

    const/4 v5, 0x3

    const/4 v10, 0x1

    const/16 v2, 0xff

    const/4 v1, 0x0

    iget-object v3, p0, Lb/a/a/q;->C:[I

    aget v4, v3, v10

    iget-object v3, p0, Lb/a/a/q;->C:[I

    const/4 v6, 0x2

    aget v9, v3, v6

    iget-object v3, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget v3, v3, Lb/a/a/g;->e:I

    const v6, 0xffff

    and-int/2addr v3, v6

    const/16 v6, 0x32

    if-ge v3, v6, :cond_0

    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/q;->C:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lb/a/a/d;->b(I)Lb/a/a/d;

    add-int/lit8 v0, v4, 0x3

    invoke-direct {p0, v5, v0}, Lb/a/a/q;->e(II)V

    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    invoke-virtual {v0, v9}, Lb/a/a/d;->b(I)Lb/a/a/d;

    add-int/lit8 v0, v4, 0x3

    add-int/lit8 v1, v4, 0x3

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lb/a/a/q;->e(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lb/a/a/q;->A:[I

    aget v3, v3, v10

    iget v6, p0, Lb/a/a/q;->x:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lb/a/a/q;->C:[I

    aget v6, v6, v1

    move v8, v6

    :goto_1
    if-nez v9, :cond_4

    sub-int v6, v4, v3

    packed-switch v6, :pswitch_data_0

    move v0, v2

    :goto_2
    move v7, v3

    :goto_3
    if-eq v0, v2, :cond_1

    move v3, v5

    :goto_4
    if-ge v1, v7, :cond_1

    iget-object v10, p0, Lb/a/a/q;->C:[I

    aget v10, v10, v3

    iget-object v11, p0, Lb/a/a/q;->A:[I

    aget v11, v11, v3

    if-eq v10, v11, :cond_6

    move v0, v2

    :cond_1
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    invoke-virtual {v0, v2}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lb/a/a/d;->b(I)Lb/a/a/d;

    add-int/lit8 v0, v4, 0x3

    invoke-direct {p0, v5, v0}, Lb/a/a/q;->e(II)V

    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    invoke-virtual {v0, v9}, Lb/a/a/d;->b(I)Lb/a/a/d;

    add-int/lit8 v0, v4, 0x3

    add-int/lit8 v1, v4, 0x3

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lb/a/a/q;->e(II)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lb/a/a/q;->C:[I

    aget v6, v6, v1

    iget-object v7, p0, Lb/a/a/q;->A:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    move v8, v6

    goto :goto_1

    :pswitch_0
    const/16 v0, 0xf8

    move v3, v4

    goto :goto_2

    :pswitch_1
    if-ge v8, v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    const/16 v0, 0xfb

    goto :goto_2

    :pswitch_2
    const/16 v0, 0xfc

    goto :goto_2

    :cond_4
    if-ne v4, v3, :cond_7

    if-ne v9, v10, :cond_7

    const/16 v6, 0x3f

    if-ge v8, v6, :cond_5

    :goto_5
    move v6, v1

    move v7, v3

    goto :goto_3

    :cond_5
    const/16 v0, 0xf7

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :sswitch_0
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    invoke-virtual {v0, v8}, Lb/a/a/d;->a(I)Lb/a/a/d;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    add-int/lit8 v1, v8, 0x40

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    add-int/lit8 v0, v4, 0x3

    add-int/lit8 v1, v4, 0x4

    invoke-direct {p0, v0, v1}, Lb/a/a/q;->e(II)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lb/a/a/d;->b(I)Lb/a/a/d;

    add-int/lit8 v0, v4, 0x3

    add-int/lit8 v1, v4, 0x4

    invoke-direct {p0, v0, v1}, Lb/a/a/q;->e(II)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    add-int/lit16 v1, v6, 0xfb

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    add-int/lit16 v1, v6, 0xfb

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lb/a/a/d;->b(I)Lb/a/a/d;

    add-int/lit8 v0, v7, 0x3

    add-int/lit8 v1, v4, 0x3

    invoke-direct {p0, v0, v1}, Lb/a/a/q;->e(II)V

    goto/16 :goto_0

    :cond_7
    move v6, v1

    move v0, v2

    move v7, v3

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0xf7 -> :sswitch_2
        0xf8 -> :sswitch_4
        0xfb -> :sswitch_3
        0xfc -> :sswitch_5
    .end sparse-switch
.end method

.method private h()V
    .locals 13

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v7, v0, Lb/a/a/d;->a:[B

    const/4 v0, 0x0

    new-array v3, v0, [I

    const/4 v0, 0x0

    new-array v2, v0, [I

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    new-array v8, v0, [Z

    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    const/4 v1, 0x0

    move v12, v1

    move v1, v0

    move v0, v12

    :cond_1
    :goto_1
    array-length v4, v7

    if-ge v0, v4, :cond_c

    aget-byte v4, v7, v0

    and-int/lit16 v5, v4, 0xff

    const/4 v6, 0x0

    sget-object v4, Lb/a/a/g;->c:[B

    aget-byte v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x4

    :goto_2
    if-eqz v6, :cond_1

    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v5, v4, [I

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v3

    invoke-static {v3, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v2, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    aput v0, v5, v3

    array-length v2, v2

    aput v6, v4, v2

    if-lez v6, :cond_23

    const/4 v1, 0x3

    move-object v2, v4

    move-object v3, v5

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_2
    const/16 v4, 0xc9

    if-le v5, v4, :cond_5

    const/16 v4, 0xda

    if-ge v5, v4, :cond_4

    add-int/lit8 v4, v5, -0x31

    :goto_3
    add-int/lit8 v5, v0, 0x1

    invoke-static {v7, v5}, Lb/a/a/q;->a([BI)I

    move-result v5

    add-int/2addr v5, v0

    move v12, v5

    move v5, v4

    move v4, v12

    :goto_4
    invoke-static {v3, v2, v0, v4}, Lb/a/a/q;->a([I[III)I

    move-result v4

    const/16 v9, -0x8000

    if-lt v4, v9, :cond_2

    const/16 v9, 0x7fff

    if-le v4, v9, :cond_24

    :cond_2
    aget-boolean v4, v8, v0

    if-nez v4, :cond_24

    const/16 v4, 0xa7

    if-eq v5, v4, :cond_3

    const/16 v4, 0xa8

    if-ne v5, v4, :cond_6

    :cond_3
    const/4 v4, 0x2

    :goto_5
    const/4 v5, 0x1

    aput-boolean v5, v8, v0

    :goto_6
    add-int/lit8 v0, v0, 0x3

    move v6, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v5, -0x14

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v0, 0x1

    invoke-static {v7, v4}, Lb/a/a/q;->b([BI)S

    move-result v4

    add-int/2addr v4, v0

    goto :goto_4

    :cond_6
    const/4 v4, 0x5

    goto :goto_5

    :pswitch_3
    add-int/lit8 v0, v0, 0x5

    goto :goto_2

    :pswitch_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v0}, Lb/a/a/q;->a([I[III)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    neg-int v6, v4

    :cond_7
    :goto_7
    add-int/lit8 v4, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    sub-int v0, v4, v0

    add-int/lit8 v4, v0, 0x8

    invoke-static {v7, v4}, Lb/a/a/q;->c([BI)I

    move-result v4

    add-int/lit8 v5, v0, 0x4

    invoke-static {v7, v5}, Lb/a/a/q;->c([BI)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0xc

    add-int/2addr v0, v4

    goto/16 :goto_2

    :cond_8
    aget-boolean v4, v8, v0

    if-nez v4, :cond_7

    and-int/lit8 v6, v0, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v8, v0

    goto :goto_7

    :pswitch_5
    const/4 v4, 0x1

    if-ne v1, v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v0}, Lb/a/a/q;->a([I[III)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    neg-int v6, v4

    :cond_9
    :goto_8
    add-int/lit8 v4, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    sub-int v0, v4, v0

    add-int/lit8 v4, v0, 0x4

    invoke-static {v7, v4}, Lb/a/a/q;->c([BI)I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    goto/16 :goto_2

    :cond_a
    aget-boolean v4, v8, v0

    if-nez v4, :cond_9

    and-int/lit8 v6, v0, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v8, v0

    goto :goto_8

    :pswitch_6
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x84

    if-ne v4, v5, :cond_b

    add-int/lit8 v0, v0, 0x6

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_2

    :pswitch_7
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    :pswitch_8
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_2

    :pswitch_9
    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x3

    if-ge v1, v0, :cond_d

    add-int/lit8 v1, v1, -0x1

    :cond_d
    if-nez v1, :cond_22

    new-instance v6, Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    invoke-direct {v6, v0}, Lb/a/a/d;-><init>(I)V

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    if-ge v0, v1, :cond_15

    aget-byte v1, v7, v0

    and-int/lit16 v4, v1, 0xff

    sget-object v1, Lb/a/a/g;->c:[B

    aget-byte v1, v1, v4

    packed-switch v1, :pswitch_data_1

    :pswitch_a
    const/4 v1, 0x4

    invoke-virtual {v6, v7, v0, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    add-int/lit8 v0, v0, 0x4

    goto :goto_9

    :pswitch_b
    invoke-virtual {v6, v4}, Lb/a/a/d;->a(I)Lb/a/a/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :pswitch_c
    const/16 v1, 0xc9

    if-le v4, v1, :cond_f

    const/16 v1, 0xda

    if-ge v4, v1, :cond_e

    add-int/lit8 v1, v4, -0x31

    :goto_a
    add-int/lit8 v4, v0, 0x1

    invoke-static {v7, v4}, Lb/a/a/q;->a([BI)I

    move-result v4

    add-int/2addr v4, v0

    move v12, v4

    move v4, v1

    move v1, v12

    :goto_b
    invoke-static {v3, v2, v0, v1}, Lb/a/a/q;->a([I[III)I

    move-result v5

    aget-boolean v1, v8, v0

    if-eqz v1, :cond_13

    const/16 v1, 0xa7

    if-ne v4, v1, :cond_10

    const/16 v1, 0xc8

    invoke-virtual {v6, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move v1, v5

    :goto_c
    invoke-virtual {v6, v1}, Lb/a/a/d;->c(I)Lb/a/a/d;

    :goto_d
    add-int/lit8 v0, v0, 0x3

    goto :goto_9

    :cond_e
    add-int/lit8 v1, v4, -0x14

    goto :goto_a

    :cond_f
    add-int/lit8 v1, v0, 0x1

    invoke-static {v7, v1}, Lb/a/a/q;->b([BI)S

    move-result v1

    add-int/2addr v1, v0

    goto :goto_b

    :cond_10
    const/16 v1, 0xa8

    if-ne v4, v1, :cond_11

    const/16 v1, 0xc9

    invoke-virtual {v6, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move v1, v5

    goto :goto_c

    :cond_11
    const/16 v1, 0xa6

    if-gt v4, v1, :cond_12

    add-int/lit8 v1, v4, 0x1

    xor-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    invoke-virtual {v6, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    const/16 v1, 0xc8

    invoke-virtual {v6, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    add-int/lit8 v1, v5, -0x3

    goto :goto_c

    :cond_12
    xor-int/lit8 v1, v4, 0x1

    goto :goto_e

    :cond_13
    invoke-virtual {v6, v4}, Lb/a/a/d;->a(I)Lb/a/a/d;

    invoke-virtual {v6, v5}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto :goto_d

    :pswitch_d
    add-int/lit8 v1, v0, 0x1

    invoke-static {v7, v1}, Lb/a/a/q;->c([BI)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v3, v2, v0, v1}, Lb/a/a/q;->a([I[III)I

    move-result v1

    invoke-virtual {v6, v4}, Lb/a/a/d;->a(I)Lb/a/a/d;

    invoke-virtual {v6, v1}, Lb/a/a/d;->c(I)Lb/a/a/d;

    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_9

    :pswitch_e
    add-int/lit8 v1, v0, 0x4

    and-int/lit8 v4, v0, 0x3

    sub-int/2addr v1, v4

    const/16 v4, 0xaa

    invoke-virtual {v6, v4}, Lb/a/a/d;->a(I)Lb/a/a/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v9, v6, Lb/a/a/d;->b:I

    rem-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    rem-int/lit8 v9, v9, 0x4

    invoke-virtual {v6, v4, v5, v9}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    invoke-static {v7, v1}, Lb/a/a/q;->c([BI)I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v1, v1, 0x4

    invoke-static {v3, v2, v0, v4}, Lb/a/a/q;->a([I[III)I

    move-result v4

    invoke-virtual {v6, v4}, Lb/a/a/d;->c(I)Lb/a/a/d;

    invoke-static {v7, v1}, Lb/a/a/q;->c([BI)I

    move-result v4

    add-int/lit8 v5, v1, 0x4

    invoke-virtual {v6, v4}, Lb/a/a/d;->c(I)Lb/a/a/d;

    invoke-static {v7, v5}, Lb/a/a/q;->c([BI)I

    move-result v1

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v5, 0x4

    add-int/lit8 v5, v4, -0x4

    invoke-static {v7, v5}, Lb/a/a/q;->c([BI)I

    move-result v5

    invoke-virtual {v6, v5}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move v12, v1

    move v1, v4

    move v4, v12

    :goto_f
    if-lez v4, :cond_21

    invoke-static {v7, v1}, Lb/a/a/q;->c([BI)I

    move-result v5

    add-int v9, v0, v5

    add-int/lit8 v5, v1, 0x4

    invoke-static {v3, v2, v0, v9}, Lb/a/a/q;->a([I[III)I

    move-result v1

    invoke-virtual {v6, v1}, Lb/a/a/d;->c(I)Lb/a/a/d;

    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v1, v5

    goto :goto_f

    :pswitch_f
    add-int/lit8 v1, v0, 0x4

    and-int/lit8 v4, v0, 0x3

    sub-int/2addr v1, v4

    const/16 v4, 0xab

    invoke-virtual {v6, v4}, Lb/a/a/d;->a(I)Lb/a/a/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v9, v6, Lb/a/a/d;->b:I

    rem-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    rem-int/lit8 v9, v9, 0x4

    invoke-virtual {v6, v4, v5, v9}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    invoke-static {v7, v1}, Lb/a/a/q;->c([BI)I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v5, v1, 0x4

    invoke-static {v3, v2, v0, v4}, Lb/a/a/q;->a([I[III)I

    move-result v1

    invoke-virtual {v6, v1}, Lb/a/a/d;->c(I)Lb/a/a/d;

    invoke-static {v7, v5}, Lb/a/a/q;->c([BI)I

    move-result v1

    add-int/lit8 v4, v5, 0x4

    invoke-virtual {v6, v1}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move v12, v1

    move v1, v4

    move v4, v12

    :goto_10
    if-lez v4, :cond_21

    invoke-static {v7, v1}, Lb/a/a/q;->c([BI)I

    move-result v5

    invoke-virtual {v6, v5}, Lb/a/a/d;->c(I)Lb/a/a/d;

    add-int/lit8 v1, v1, 0x4

    invoke-static {v7, v1}, Lb/a/a/q;->c([BI)I

    move-result v5

    add-int v9, v0, v5

    add-int/lit8 v5, v1, 0x4

    invoke-static {v3, v2, v0, v9}, Lb/a/a/q;->a([I[III)I

    move-result v1

    invoke-virtual {v6, v1}, Lb/a/a/d;->c(I)Lb/a/a/d;

    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v1, v5

    goto :goto_10

    :pswitch_10
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0x84

    if-ne v1, v4, :cond_14

    const/4 v1, 0x6

    invoke-virtual {v6, v7, v0, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    add-int/lit8 v0, v0, 0x6

    goto/16 :goto_9

    :cond_14
    const/4 v1, 0x4

    invoke-virtual {v6, v7, v0, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_9

    :pswitch_11
    const/4 v1, 0x2

    invoke-virtual {v6, v7, v0, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_9

    :pswitch_12
    const/4 v1, 0x3

    invoke-virtual {v6, v7, v0, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_9

    :pswitch_13
    const/4 v1, 0x5

    invoke-virtual {v6, v7, v0, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_9

    :cond_15
    iget v0, p0, Lb/a/a/q;->x:I

    if-lez v0, :cond_19

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_18

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/q;->x:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/q;->A:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/q;->C:[I

    new-instance v0, Lb/a/a/k;

    invoke-direct {v0}, Lb/a/a/k;-><init>()V

    iget-object v1, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    iput-object v1, v0, Lb/a/a/k;->b:Lb/a/a/o;

    iget-object v1, p0, Lb/a/a/q;->l:Ljava/lang/String;

    invoke-static {v1}, Lb/a/a/s;->d(Ljava/lang/String;)[Lb/a/a/s;

    move-result-object v1

    iget-object v4, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget v5, p0, Lb/a/a/q;->i:I

    iget v7, p0, Lb/a/a/q;->v:I

    invoke-virtual {v0, v4, v5, v1, v7}, Lb/a/a/k;->a(Lb/a/a/g;I[Lb/a/a/s;I)V

    invoke-direct {p0, v0}, Lb/a/a/q;->a(Lb/a/a/k;)V

    iget-object v0, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    :goto_11
    if-eqz v0, :cond_19

    iget v1, v0, Lb/a/a/o;->c:I

    add-int/lit8 v1, v1, -0x3

    iget v4, v0, Lb/a/a/o;->a:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_16

    if-ltz v1, :cond_17

    aget-boolean v1, v8, v1

    if-eqz v1, :cond_17

    :cond_16
    invoke-static {v3, v2, v0}, Lb/a/a/q;->a([I[ILb/a/a/o;)V

    iget-object v1, v0, Lb/a/a/o;->f:Lb/a/a/k;

    invoke-direct {p0, v1}, Lb/a/a/q;->a(Lb/a/a/k;)V

    :cond_17
    iget-object v0, v0, Lb/a/a/o;->g:Lb/a/a/o;

    goto :goto_11

    :cond_18
    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/a/a/g;->v:Z

    :cond_19
    iget-object v0, p0, Lb/a/a/q;->E:Lb/a/a/m;

    :goto_12
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lb/a/a/m;->a:Lb/a/a/o;

    invoke-static {v3, v2, v1}, Lb/a/a/q;->a([I[ILb/a/a/o;)V

    iget-object v1, v0, Lb/a/a/m;->b:Lb/a/a/o;

    invoke-static {v3, v2, v1}, Lb/a/a/q;->a([I[ILb/a/a/o;)V

    iget-object v1, v0, Lb/a/a/m;->c:Lb/a/a/o;

    invoke-static {v3, v2, v1}, Lb/a/a/q;->a([I[ILb/a/a/o;)V

    iget-object v0, v0, Lb/a/a/m;->f:Lb/a/a/m;

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    move v4, v0

    :goto_13
    const/4 v0, 0x2

    if-ge v4, v0, :cond_1d

    if-nez v4, :cond_1b

    iget-object v0, p0, Lb/a/a/q;->H:Lb/a/a/d;

    move-object v1, v0

    :goto_14
    if-eqz v1, :cond_1c

    iget-object v5, v1, Lb/a/a/d;->a:[B

    const/4 v0, 0x0

    :goto_15
    iget v7, v1, Lb/a/a/d;->b:I

    if-ge v0, v7, :cond_1c

    invoke-static {v5, v0}, Lb/a/a/q;->a([BI)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v3, v2, v8, v7}, Lb/a/a/q;->a([I[III)I

    move-result v8

    invoke-static {v5, v0, v8}, Lb/a/a/q;->a([BII)V

    add-int/lit8 v9, v0, 0x2

    invoke-static {v5, v9}, Lb/a/a/q;->a([BI)I

    move-result v9

    add-int/2addr v7, v9

    const/4 v9, 0x0

    invoke-static {v3, v2, v9, v7}, Lb/a/a/q;->a([I[III)I

    move-result v7

    sub-int/2addr v7, v8

    add-int/lit8 v8, v0, 0x2

    invoke-static {v5, v8, v7}, Lb/a/a/q;->a([BII)V

    add-int/lit8 v0, v0, 0xa

    goto :goto_15

    :cond_1b
    iget-object v0, p0, Lb/a/a/q;->J:Lb/a/a/d;

    move-object v1, v0

    goto :goto_14

    :cond_1c
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_13

    :cond_1d
    iget-object v0, p0, Lb/a/a/q;->L:Lb/a/a/d;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lb/a/a/q;->L:Lb/a/a/d;

    iget-object v1, v0, Lb/a/a/d;->a:[B

    const/4 v0, 0x0

    :goto_16
    iget-object v4, p0, Lb/a/a/q;->L:Lb/a/a/d;

    iget v4, v4, Lb/a/a/d;->b:I

    if-ge v0, v4, :cond_1e

    const/4 v4, 0x0

    invoke-static {v1, v0}, Lb/a/a/q;->a([BI)I

    move-result v5

    invoke-static {v3, v2, v4, v5}, Lb/a/a/q;->a([I[III)I

    move-result v4

    invoke-static {v1, v0, v4}, Lb/a/a/q;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_16

    :cond_1e
    iget-object v0, p0, Lb/a/a/q;->M:Lb/a/a/c;

    move-object v1, v0

    :goto_17
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lb/a/a/c;->b()[Lb/a/a/o;

    move-result-object v4

    if-eqz v4, :cond_1f

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_1f

    aget-object v5, v4, v0

    invoke-static {v3, v2, v5}, Lb/a/a/q;->a([I[ILb/a/a/o;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_1f
    iget-object v0, v1, Lb/a/a/c;->c:Lb/a/a/c;

    move-object v1, v0

    goto :goto_17

    :cond_20
    iput-object v6, p0, Lb/a/a/q;->t:Lb/a/a/d;

    return-void

    :cond_21
    move v0, v1

    goto/16 :goto_9

    :cond_22
    move v0, v1

    goto/16 :goto_0

    :cond_23
    move-object v2, v4

    move-object v3, v5

    goto/16 :goto_1

    :cond_24
    move v4, v6

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_b
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_c
        :pswitch_d
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public a()Lb/a/a/a;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lb/a/a/d;

    invoke-direct {v0}, Lb/a/a/d;-><init>()V

    iput-object v0, p0, Lb/a/a/q;->m:Lb/a/a/d;

    new-instance v0, Lb/a/a/b;

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v3, p0, Lb/a/a/q;->m:Lb/a/a/d;

    const/4 v4, 0x0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lb/a/a/b;-><init>(Lb/a/a/g;ZLb/a/a/d;Lb/a/a/d;I)V

    return-object v0
.end method

.method public a(ILjava/lang/String;Z)Lb/a/a/a;
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Lb/a/a/d;

    invoke-direct {v3}, Lb/a/a/d;-><init>()V

    const-string v0, "Ljava/lang/Synthetic;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/a/q;->r:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lb/a/a/q;->r:I

    new-instance v0, Lb/a/a/b;

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const/4 v4, 0x0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lb/a/a/b;-><init>(Lb/a/a/g;ZLb/a/a/d;Lb/a/a/d;I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v0, p2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    new-instance v0, Lb/a/a/b;

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lb/a/a/b;-><init>(Lb/a/a/g;ZLb/a/a/d;Lb/a/a/d;I)V

    if-eqz p3, :cond_2

    iget-object v1, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/a/a/q;->l:Ljava/lang/String;

    invoke-static {v1}, Lb/a/a/s;->d(Ljava/lang/String;)[Lb/a/a/s;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lb/a/a/b;

    iput-object v1, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    :cond_1
    iget-object v1, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    aget-object v1, v1, p1

    iput-object v1, v0, Lb/a/a/b;->c:Lb/a/a/b;

    iget-object v1, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    aput-object v0, v1, p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    if-nez v1, :cond_3

    iget-object v1, p0, Lb/a/a/q;->l:Ljava/lang/String;

    invoke-static {v1}, Lb/a/a/s;->d(Ljava/lang/String;)[Lb/a/a/s;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lb/a/a/b;

    iput-object v1, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    :cond_3
    iget-object v1, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    aget-object v1, v1, p1

    iput-object v1, v0, Lb/a/a/b;->c:Lb/a/a/b;

    iget-object v1, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    aput-object v0, v1, p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Lb/a/a/a;
    .locals 6

    new-instance v3, Lb/a/a/d;

    invoke-direct {v3}, Lb/a/a/d;-><init>()V

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v0, p1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    new-instance v0, Lb/a/a/b;

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lb/a/a/b;-><init>(Lb/a/a/g;ZLb/a/a/d;Lb/a/a/d;I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lb/a/a/q;->n:Lb/a/a/b;

    iput-object v1, v0, Lb/a/a/b;->c:Lb/a/a/b;

    iput-object v0, p0, Lb/a/a/q;->n:Lb/a/a/b;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lb/a/a/q;->o:Lb/a/a/b;

    iput-object v1, v0, Lb/a/a/b;->c:Lb/a/a/b;

    iput-object v0, p0, Lb/a/a/q;->o:Lb/a/a/b;

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v0, p1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v0, :cond_2

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    :goto_0
    const/16 v0, 0xac

    if-lt p1, v0, :cond_0

    const/16 v0, 0xb1

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lb/a/a/q;->e()V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lb/a/a/q;->T:I

    sget-object v1, Lb/a/a/k;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lb/a/a/q;->U:I

    if-le v0, v1, :cond_4

    iput v0, p0, Lb/a/a/q;->U:I

    :cond_4
    iput v0, p0, Lb/a/a/q;->T:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    invoke-virtual {v0, p1, p2, v1, v1}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    :cond_0
    :goto_0
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v0, p1, p2}, Lb/a/a/d;->b(II)Lb/a/a/d;

    :goto_1
    return-void

    :cond_1
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_0

    iget v0, p0, Lb/a/a/q;->T:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lb/a/a/q;->U:I

    if-le v0, v1, :cond_2

    iput v0, p0, Lb/a/a/q;->U:I

    :cond_2
    iput v0, p0, Lb/a/a/q;->T:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v0, p1, p2}, Lb/a/a/d;->a(II)Lb/a/a/d;

    goto :goto_1
.end method

.method public varargs a(IILb/a/a/o;[Lb/a/a/o;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/16 v3, 0xaa

    invoke-virtual {v2, v3}, Lb/a/a/d;->a(I)Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v4, v4, Lb/a/a/d;->b:I

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {p3, p0, v2, v1, v5}, Lb/a/a/o;->a(Lb/a/a/q;Lb/a/a/d;IZ)V

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v2, p1}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move-result-object v2

    invoke-virtual {v2, p2}, Lb/a/a/d;->c(I)Lb/a/a/d;

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    aget-object v2, p4, v0

    iget-object v3, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v2, p0, v3, v1, v5}, Lb/a/a/o;->a(Lb/a/a/q;Lb/a/a/d;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p4}, Lb/a/a/q;->a(Lb/a/a/o;[Lb/a/a/o;)V

    return-void
.end method

.method public a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 9

    const/high16 v8, 0x1800000

    const/high16 v7, 0x1700000

    const/16 v3, 0x40

    const/4 v1, 0x0

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    iput p2, p0, Lb/a/a/q;->w:I

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    invoke-direct {p0, v0, p2, p4}, Lb/a/a/q;->a(III)V

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_4

    aget-object v0, p3, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lb/a/a/q;->C:[I

    iget v4, p0, Lb/a/a/q;->B:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lb/a/a/q;->B:I

    iget-object v5, p0, Lb/a/a/q;->c:Lb/a/a/g;

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lb/a/a/g;->e(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v7

    aput v0, v3, v4

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    aget-object v0, p3, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lb/a/a/q;->C:[I

    iget v4, p0, Lb/a/a/q;->B:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lb/a/a/q;->B:I

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v4

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lb/a/a/q;->C:[I

    iget v4, p0, Lb/a/a/q;->B:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lb/a/a/q;->B:I

    iget-object v5, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v6, ""

    aget-object v0, p3, v2

    check-cast v0, Lb/a/a/o;

    iget v0, v0, Lb/a/a/o;->c:I

    invoke-virtual {v5, v6, v0}, Lb/a/a/g;->a(Ljava/lang/String;I)I

    move-result v0

    or-int/2addr v0, v8

    aput v0, v3, v4

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v1, p4, :cond_7

    aget-object v0, p5, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lb/a/a/q;->C:[I

    iget v3, p0, Lb/a/a/q;->B:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lb/a/a/q;->B:I

    iget-object v4, p0, Lb/a/a/q;->c:Lb/a/a/g;

    aget-object v0, p5, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lb/a/a/g;->e(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v7

    aput v0, v2, v3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    aget-object v0, p5, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lb/a/a/q;->C:[I

    iget v3, p0, Lb/a/a/q;->B:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lb/a/a/q;->B:I

    aget-object v0, p5, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lb/a/a/q;->C:[I

    iget v3, p0, Lb/a/a/q;->B:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lb/a/a/q;->B:I

    iget-object v4, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v5, ""

    aget-object v0, p5, v1

    check-cast v0, Lb/a/a/o;

    iget v0, v0, Lb/a/a/o;->c:I

    invoke-virtual {v4, v5, v0}, Lb/a/a/g;->a(Ljava/lang/String;I)I

    move-result v0

    or-int/2addr v0, v8

    aput v0, v2, v3

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lb/a/a/q;->f()V

    :goto_5
    iget v0, p0, Lb/a/a/q;->u:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lb/a/a/q;->u:I

    iget v0, p0, Lb/a/a/q;->v:I

    iget v1, p0, Lb/a/a/q;->w:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lb/a/a/q;->v:I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    if-nez v0, :cond_b

    new-instance v0, Lb/a/a/d;

    invoke-direct {v0}, Lb/a/a/d;-><init>()V

    iput-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    :cond_9
    packed-switch p1, :pswitch_data_0

    :cond_a
    :goto_6
    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    iput v0, p0, Lb/a/a/q;->z:I

    iget v0, p0, Lb/a/a/q;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/q;->x:I

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    iget v2, p0, Lb/a/a/q;->z:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    iput p2, p0, Lb/a/a/q;->w:I

    iget-object v2, p0, Lb/a/a/q;->y:Lb/a/a/d;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move v0, v1

    :goto_7
    if-ge v0, p2, :cond_c

    aget-object v2, p3, v0

    invoke-direct {p0, v2}, Lb/a/a/q;->b(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    invoke-virtual {v0, p4}, Lb/a/a/d;->b(I)Lb/a/a/d;

    :goto_8
    if-ge v1, p4, :cond_a

    aget-object v0, p5, v1

    invoke-direct {p0, v0}, Lb/a/a/q;->b(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :pswitch_1
    iget v2, p0, Lb/a/a/q;->w:I

    add-int/2addr v2, p2

    iput v2, p0, Lb/a/a/q;->w:I

    iget-object v2, p0, Lb/a/a/q;->y:Lb/a/a/d;

    add-int/lit16 v3, p2, 0xfb

    invoke-virtual {v2, v3}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move v0, v1

    :goto_9
    if-ge v0, p2, :cond_a

    aget-object v1, p3, v0

    invoke-direct {p0, v1}, Lb/a/a/q;->b(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :pswitch_2
    iget v1, p0, Lb/a/a/q;->w:I

    sub-int/2addr v1, p2

    iput v1, p0, Lb/a/a/q;->w:I

    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    rsub-int v2, p2, 0xfb

    invoke-virtual {v1, v2}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto :goto_6

    :pswitch_3
    if-ge v0, v3, :cond_d

    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    invoke-virtual {v1, v0}, Lb/a/a/d;->a(I)Lb/a/a/d;

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    const/16 v2, 0xfb

    invoke-virtual {v1, v2}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto/16 :goto_6

    :pswitch_4
    if-ge v0, v3, :cond_e

    iget-object v2, p0, Lb/a/a/q;->y:Lb/a/a/d;

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {v2, v0}, Lb/a/a/d;->a(I)Lb/a/a/d;

    :goto_a
    aget-object v0, p5, v1

    invoke-direct {p0, v0}, Lb/a/a/q;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_e
    iget-object v2, p0, Lb/a/a/q;->y:Lb/a/a/d;

    const/16 v3, 0xf7

    invoke-virtual {v2, v3}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(ILb/a/a/o;)V
    .locals 7

    const/16 v6, 0xc8

    const/16 v5, 0xa8

    const/4 v0, 0x0

    const/16 v4, 0xa7

    const/4 v3, 0x0

    iget-object v1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v1, :cond_0

    iget v1, p0, Lb/a/a/q;->P:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v1, v1, Lb/a/a/o;->f:Lb/a/a/k;

    invoke-virtual {v1, p1, v3, v0, v0}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    invoke-virtual {p2}, Lb/a/a/o;->a()Lb/a/a/o;

    move-result-object v1

    iget v2, v1, Lb/a/a/o;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lb/a/a/o;->a:I

    invoke-direct {p0, v3, p2}, Lb/a/a/q;->c(ILb/a/a/o;)V

    if-eq p1, v4, :cond_0

    new-instance v0, Lb/a/a/o;

    invoke-direct {v0}, Lb/a/a/o;-><init>()V

    :cond_0
    :goto_0
    iget v1, p2, Lb/a/a/o;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    iget v1, p2, Lb/a/a/o;->c:I

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v2, v2, Lb/a/a/d;->b:I

    sub-int/2addr v1, v2

    const/16 v2, -0x8000

    if-ge v1, v2, :cond_a

    if-ne p1, v4, :cond_6

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v1, v6}, Lb/a/a/d;->a(I)Lb/a/a/d;

    :goto_1
    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v2, v2, Lb/a/a/d;->b:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {p2, p0, v1, v2, v3}, Lb/a/a/o;->a(Lb/a/a/q;Lb/a/a/d;IZ)V

    :goto_2
    iget-object v1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lb/a/a/q;->a(Lb/a/a/o;)V

    :cond_1
    if-ne p1, v4, :cond_2

    invoke-direct {p0}, Lb/a/a/q;->e()V

    :cond_2
    return-void

    :cond_3
    if-ne p1, v5, :cond_5

    iget v0, p2, Lb/a/a/o;->a:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_4

    iget v0, p2, Lb/a/a/o;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p2, Lb/a/a/o;->a:I

    iget v0, p0, Lb/a/a/q;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/q;->O:I

    :cond_4
    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget v1, v0, Lb/a/a/o;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lb/a/a/o;->a:I

    iget v0, p0, Lb/a/a/q;->T:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lb/a/a/q;->c(ILb/a/a/o;)V

    new-instance v0, Lb/a/a/o;

    invoke-direct {v0}, Lb/a/a/o;-><init>()V

    goto :goto_0

    :cond_5
    iget v1, p0, Lb/a/a/q;->T:I

    sget-object v2, Lb/a/a/k;->a:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lb/a/a/q;->T:I

    iget v1, p0, Lb/a/a/q;->T:I

    invoke-direct {p0, v1, p2}, Lb/a/a/q;->c(ILb/a/a/o;)V

    goto :goto_0

    :cond_6
    if-ne p1, v5, :cond_7

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Lb/a/a/d;->a(I)Lb/a/a/d;

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    iget v1, v0, Lb/a/a/o;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lb/a/a/o;->a:I

    :cond_8
    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/16 v1, 0xa6

    if-gt p1, v1, :cond_9

    add-int/lit8 v1, p1, 0x1

    xor-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    invoke-virtual {v2, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v1, v6}, Lb/a/a/d;->a(I)Lb/a/a/d;

    goto :goto_1

    :cond_9
    xor-int/lit8 v1, p1, 0x1

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v1, p1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v2, v2, Lb/a/a/d;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, p0, v1, v2, v3}, Lb/a/a/o;->a(Lb/a/a/q;Lb/a/a/d;IZ)V

    goto/16 :goto_2
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v0, p2}, Lb/a/a/g;->b(Ljava/lang/String;)Lb/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v1, :cond_0

    iget v1, p0, Lb/a/a/q;->P:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v1, v1, Lb/a/a/o;->f:Lb/a/a/k;

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v2, v2, Lb/a/a/d;->b:I

    iget-object v3, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v1, p1, v2, v3, v0}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/n;->a:I

    invoke-virtual {v1, p1, v0}, Lb/a/a/d;->b(II)Lb/a/a/d;

    return-void

    :cond_1
    const/16 v1, 0xbb

    if-ne p1, v1, :cond_0

    iget v1, p0, Lb/a/a/q;->T:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lb/a/a/q;->U:I

    if-le v1, v2, :cond_2

    iput v1, p0, Lb/a/a/q;->U:I

    :cond_2
    iput v1, p0, Lb/a/a/q;->T:I

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/16 v6, 0x4a

    const/16 v5, 0x44

    iget-object v3, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v3, p2, p3, p4}, Lb/a/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/a/a/n;

    move-result-object v3

    iget-object v4, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v4, :cond_0

    iget v4, p0, Lb/a/a/q;->P:I

    if-nez v4, :cond_1

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v0, p1, v2, v1, v3}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v1, v3, Lb/a/a/n;->a:I

    invoke-virtual {v0, p1, v1}, Lb/a/a/d;->b(II)Lb/a/a/d;

    return-void

    :cond_1
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch p1, :pswitch_data_0

    iget v0, p0, Lb/a/a/q;->T:I

    if-eq v4, v5, :cond_2

    if-ne v4, v6, :cond_3

    :cond_2
    const/4 v1, -0x3

    :cond_3
    add-int/2addr v0, v1

    :goto_1
    iget v1, p0, Lb/a/a/q;->U:I

    if-le v0, v1, :cond_4

    iput v0, p0, Lb/a/a/q;->U:I

    :cond_4
    iput v0, p0, Lb/a/a/q;->T:I

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lb/a/a/q;->T:I

    if-eq v4, v5, :cond_5

    if-ne v4, v6, :cond_6

    :cond_5
    const/4 v0, 0x2

    :cond_6
    add-int/2addr v0, v1

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lb/a/a/q;->T:I

    if-eq v4, v5, :cond_7

    if-ne v4, v6, :cond_8

    :cond_7
    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    goto :goto_1

    :cond_8
    const/4 v0, -0x1

    goto :goto_2

    :pswitch_2
    iget v1, p0, Lb/a/a/q;->T:I

    if-eq v4, v5, :cond_9

    if-ne v4, v6, :cond_a

    :cond_9
    :goto_3
    add-int/2addr v0, v1

    goto :goto_1

    :cond_a
    move v0, v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lb/a/a/c;)V
    .locals 1

    invoke-virtual {p1}, Lb/a/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->M:Lb/a/a/c;

    iput-object v0, p1, Lb/a/a/c;->c:Lb/a/a/c;

    iput-object p1, p0, Lb/a/a/q;->M:Lb/a/a/c;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/c;

    iput-object v0, p1, Lb/a/a/c;->c:Lb/a/a/c;

    iput-object p1, p0, Lb/a/a/q;->s:Lb/a/a/c;

    goto :goto_0
.end method

.method final a(Lb/a/a/d;)V
    .locals 12

    const/4 v11, -0x1

    const/high16 v10, 0x40000

    const v9, 0xffff

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v0, 0x60000

    iget v1, p0, Lb/a/a/q;->i:I

    and-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x40

    or-int/2addr v0, v1

    iget v1, p0, Lb/a/a/q;->i:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/q;->j:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/q;->k:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget v0, p0, Lb/a/a/q;->e:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v0, v0, Lb/a/a/g;->d:Lb/a/a/e;

    iget-object v0, v0, Lb/a/a/e;->a:[B

    iget v1, p0, Lb/a/a/q;->e:I

    iget v2, p0, Lb/a/a/q;->f:I

    invoke-virtual {p1, v0, v1, v2}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    if-lez v0, :cond_29

    move v0, v6

    :goto_1
    iget v1, p0, Lb/a/a/q;->g:I

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v1, p0, Lb/a/a/q;->i:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_4

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget v1, v1, Lb/a/a/g;->e:I

    and-int/2addr v1, v9

    const/16 v2, 0x31

    if-lt v1, v2, :cond_3

    iget v1, p0, Lb/a/a/q;->i:I

    and-int/2addr v1, v10

    if-eqz v1, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v1, p0, Lb/a/a/q;->i:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget-object v1, p0, Lb/a/a/q;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v1, p0, Lb/a/a/q;->m:Lb/a/a/d;

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    iget-object v1, p0, Lb/a/a/q;->n:Lb/a/a/b;

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    iget-object v1, p0, Lb/a/a/q;->o:Lb/a/a/b;

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    iget-object v1, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    if-eqz v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    iget-object v1, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    iget-object v1, p0, Lb/a/a/q;->s:Lb/a/a/c;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lb/a/a/q;->s:Lb/a/a/c;

    invoke-virtual {v1}, Lb/a/a/c;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    if-lez v0, :cond_1a

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lb/a/a/q;->D:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/a/a/q;->H:Lb/a/a/d;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lb/a/a/q;->H:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lb/a/a/q;->J:Lb/a/a/d;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lb/a/a/q;->J:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lb/a/a/q;->L:Lb/a/a/d;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lb/a/a/q;->L:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v8, v0

    :goto_2
    iget-object v0, p0, Lb/a/a/q;->M:Lb/a/a/c;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lb/a/a/q;->M:Lb/a/a/c;

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v2, v2, Lb/a/a/d;->a:[B

    iget-object v3, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v3, v3, Lb/a/a/d;->b:I

    iget v4, p0, Lb/a/a/q;->u:I

    iget v5, p0, Lb/a/a/q;->v:I

    invoke-virtual/range {v0 .. v5}, Lb/a/a/c;->b(Lb/a/a/g;[BIII)I

    move-result v0

    add-int/2addr v8, v0

    :cond_10
    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lb/a/a/d;->c(I)Lb/a/a/d;

    iget v0, p0, Lb/a/a/q;->u:I

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/q;->v:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    invoke-virtual {p1, v0}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v1, v1, Lb/a/a/d;->a:[B

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v2, v2, Lb/a/a/d;->b:I

    invoke-virtual {v0, v1, v7, v2}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    iget v0, p0, Lb/a/a/q;->D:I

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget v0, p0, Lb/a/a/q;->D:I

    if-lez v0, :cond_11

    iget-object v0, p0, Lb/a/a/q;->E:Lb/a/a/m;

    :goto_3
    if-eqz v0, :cond_11

    iget-object v1, v0, Lb/a/a/m;->a:Lb/a/a/o;

    iget v1, v1, Lb/a/a/o;->c:I

    invoke-virtual {p1, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    iget-object v2, v0, Lb/a/a/m;->b:Lb/a/a/o;

    iget v2, v2, Lb/a/a/o;->c:I

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    iget-object v2, v0, Lb/a/a/m;->c:Lb/a/a/o;

    iget v2, v2, Lb/a/a/o;->c:I

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    iget v2, v0, Lb/a/a/m;->e:I

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, v0, Lb/a/a/m;->f:Lb/a/a/m;

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lb/a/a/q;->H:Lb/a/a/d;

    if-eqz v0, :cond_27

    move v0, v6

    :goto_4
    iget-object v1, p0, Lb/a/a/q;->J:Lb/a/a/d;

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, 0x1

    :cond_12
    iget-object v1, p0, Lb/a/a/q;->L:Lb/a/a/d;

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    if-eqz v1, :cond_14

    add-int/lit8 v0, v0, 0x1

    :cond_14
    iget-object v1, p0, Lb/a/a/q;->M:Lb/a/a/c;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lb/a/a/q;->M:Lb/a/a/c;

    invoke-virtual {v1}, Lb/a/a/c;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->H:Lb/a/a/d;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->H:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/q;->G:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->H:Lb/a/a/d;

    iget-object v0, v0, Lb/a/a/d;->a:[B

    iget-object v1, p0, Lb/a/a/q;->H:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    :cond_16
    iget-object v0, p0, Lb/a/a/q;->J:Lb/a/a/d;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->J:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/q;->I:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->J:Lb/a/a/d;

    iget-object v0, v0, Lb/a/a/d;->a:[B

    iget-object v1, p0, Lb/a/a/q;->J:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    :cond_17
    iget-object v0, p0, Lb/a/a/q;->L:Lb/a/a/d;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->L:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/q;->K:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->L:Lb/a/a/d;

    iget-object v0, v0, Lb/a/a/d;->a:[B

    iget-object v1, p0, Lb/a/a/q;->L:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    :cond_18
    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget v0, v0, Lb/a/a/g;->e:I

    and-int/2addr v0, v9

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1b

    :goto_5
    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    if-eqz v6, :cond_1c

    const-string v0, "StackMapTable"

    :goto_6
    invoke-virtual {v1, v0}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/q;->x:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->y:Lb/a/a/d;

    iget-object v0, v0, Lb/a/a/d;->a:[B

    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    :cond_19
    iget-object v0, p0, Lb/a/a/q;->M:Lb/a/a/c;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lb/a/a/q;->M:Lb/a/a/c;

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v2, v2, Lb/a/a/d;->a:[B

    iget-object v3, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v3, v3, Lb/a/a/d;->b:I

    iget v4, p0, Lb/a/a/q;->v:I

    iget v5, p0, Lb/a/a/q;->u:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lb/a/a/c;->a(Lb/a/a/g;[BIIILb/a/a/d;)V

    :cond_1a
    iget v0, p0, Lb/a/a/q;->g:I

    if-lez v0, :cond_1d

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/q;->g:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lb/a/a/d;->c(I)Lb/a/a/d;

    iget v0, p0, Lb/a/a/q;->g:I

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move v0, v7

    :goto_7
    iget v1, p0, Lb/a/a/q;->g:I

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lb/a/a/q;->h:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1b
    move v6, v7

    goto :goto_5

    :cond_1c
    const-string v0, "StackMap"

    goto :goto_6

    :cond_1d
    iget v0, p0, Lb/a/a/q;->i:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget v0, v0, Lb/a/a/g;->e:I

    and-int/2addr v0, v9

    const/16 v1, 0x31

    if-lt v0, v1, :cond_1e

    iget v0, p0, Lb/a/a/q;->i:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_1f

    :cond_1e
    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v7}, Lb/a/a/d;->c(I)Lb/a/a/d;

    :cond_1f
    iget v0, p0, Lb/a/a/q;->i:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v7}, Lb/a/a/d;->c(I)Lb/a/a/d;

    :cond_20
    iget-object v0, p0, Lb/a/a/q;->d:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v2, p0, Lb/a/a/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    :cond_21
    iget-object v0, p0, Lb/a/a/q;->m:Lb/a/a/d;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->m:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    invoke-virtual {p1, v0}, Lb/a/a/d;->c(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->m:Lb/a/a/d;

    iget-object v0, v0, Lb/a/a/d;->a:[B

    iget-object v1, p0, Lb/a/a/q;->m:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    :cond_22
    iget-object v0, p0, Lb/a/a/q;->n:Lb/a/a/b;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->n:Lb/a/a/b;

    invoke-virtual {v0, p1}, Lb/a/a/b;->a(Lb/a/a/d;)V

    :cond_23
    iget-object v0, p0, Lb/a/a/q;->o:Lb/a/a/b;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->o:Lb/a/a/b;

    invoke-virtual {v0, p1}, Lb/a/a/b;->a(Lb/a/a/d;)V

    :cond_24
    iget-object v0, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    iget v1, p0, Lb/a/a/q;->r:I

    invoke-static {v0, v1, p1}, Lb/a/a/b;->a([Lb/a/a/b;ILb/a/a/d;)V

    :cond_25
    iget-object v0, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    iget v1, p0, Lb/a/a/q;->r:I

    invoke-static {v0, v1, p1}, Lb/a/a/b;->a([Lb/a/a/b;ILb/a/a/d;)V

    :cond_26
    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/c;

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const/4 v2, 0x0

    move v3, v7

    move v4, v11

    move v5, v11

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lb/a/a/c;->a(Lb/a/a/g;[BIIILb/a/a/d;)V

    goto/16 :goto_0

    :cond_27
    move v0, v7

    goto/16 :goto_4

    :cond_28
    move v8, v0

    goto/16 :goto_2

    :cond_29
    move v0, v7

    goto/16 :goto_1
.end method

.method public a(Lb/a/a/o;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lb/a/a/q;->N:Z

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v2, v2, Lb/a/a/d;->a:[B

    invoke-virtual {p1, p0, v1, v2}, Lb/a/a/o;->a(Lb/a/a/q;I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lb/a/a/q;->N:Z

    iget v0, p1, Lb/a/a/o;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v0, :cond_3

    iget v0, p1, Lb/a/a/o;->c:I

    iget-object v1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget v1, v1, Lb/a/a/o;->c:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget v1, v0, Lb/a/a/o;->a:I

    iget v2, p1, Lb/a/a/o;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lb/a/a/o;->a:I

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    iput-object v0, p1, Lb/a/a/o;->f:Lb/a/a/k;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, p1}, Lb/a/a/q;->c(ILb/a/a/o;)V

    :cond_3
    iput-object p1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v0, p1, Lb/a/a/o;->f:Lb/a/a/k;

    if-nez v0, :cond_4

    new-instance v0, Lb/a/a/k;

    invoke-direct {v0}, Lb/a/a/k;-><init>()V

    iput-object v0, p1, Lb/a/a/o;->f:Lb/a/a/k;

    iget-object v0, p1, Lb/a/a/o;->f:Lb/a/a/k;

    iput-object p1, v0, Lb/a/a/k;->b:Lb/a/a/o;

    :cond_4
    iget-object v0, p0, Lb/a/a/q;->R:Lb/a/a/o;

    if-eqz v0, :cond_6

    iget v0, p1, Lb/a/a/o;->c:I

    iget-object v1, p0, Lb/a/a/q;->R:Lb/a/a/o;

    iget v1, v1, Lb/a/a/o;->c:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lb/a/a/q;->R:Lb/a/a/o;

    iget v1, v0, Lb/a/a/o;->a:I

    iget v2, p1, Lb/a/a/o;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lb/a/a/o;->a:I

    iget-object v0, p0, Lb/a/a/q;->R:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    iput-object v0, p1, Lb/a/a/o;->f:Lb/a/a/k;

    iget-object v0, p0, Lb/a/a/q;->R:Lb/a/a/o;

    iput-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lb/a/a/q;->R:Lb/a/a/o;

    iput-object p1, v0, Lb/a/a/o;->g:Lb/a/a/o;

    :cond_6
    iput-object p1, p0, Lb/a/a/q;->R:Lb/a/a/o;

    goto :goto_0

    :cond_7
    iget v0, p0, Lb/a/a/q;->P:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget v1, p0, Lb/a/a/q;->U:I

    iput v1, v0, Lb/a/a/o;->e:I

    iget v0, p0, Lb/a/a/q;->T:I

    invoke-direct {p0, v0, p1}, Lb/a/a/q;->c(ILb/a/a/o;)V

    :cond_8
    iput-object p1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iput v3, p0, Lb/a/a/q;->T:I

    iput v3, p0, Lb/a/a/q;->U:I

    iget-object v0, p0, Lb/a/a/q;->R:Lb/a/a/o;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lb/a/a/q;->R:Lb/a/a/o;

    iput-object p1, v0, Lb/a/a/o;->g:Lb/a/a/o;

    :cond_9
    iput-object p1, p0, Lb/a/a/q;->R:Lb/a/a/o;

    goto/16 :goto_0
.end method

.method public a(Lb/a/a/o;Lb/a/a/o;Lb/a/a/o;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lb/a/a/q;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/q;->D:I

    new-instance v1, Lb/a/a/m;

    invoke-direct {v1}, Lb/a/a/m;-><init>()V

    iput-object p1, v1, Lb/a/a/m;->a:Lb/a/a/o;

    iput-object p2, v1, Lb/a/a/m;->b:Lb/a/a/o;

    iput-object p3, v1, Lb/a/a/m;->c:Lb/a/a/o;

    iput-object p4, v1, Lb/a/a/m;->d:Ljava/lang/String;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v0, p4}, Lb/a/a/g;->c(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, v1, Lb/a/a/m;->e:I

    iget-object v0, p0, Lb/a/a/q;->F:Lb/a/a/m;

    if-nez v0, :cond_1

    iput-object v1, p0, Lb/a/a/q;->E:Lb/a/a/m;

    :goto_1
    iput-object v1, p0, Lb/a/a/q;->F:Lb/a/a/m;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/a/a/q;->F:Lb/a/a/m;

    iput-object v1, v0, Lb/a/a/m;->f:Lb/a/a/m;

    goto :goto_1
.end method

.method public a(Lb/a/a/o;[I[Lb/a/a/o;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lb/a/a/d;->a(I)Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v4, v4, Lb/a/a/d;->b:I

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Lb/a/a/d;->a([BII)Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {p1, p0, v2, v1, v5}, Lb/a/a/o;->a(Lb/a/a/q;Lb/a/a/d;IZ)V

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    array-length v3, p3

    invoke-virtual {v2, v3}, Lb/a/a/d;->c(I)Lb/a/a/d;

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lb/a/a/d;->c(I)Lb/a/a/d;

    aget-object v2, p3, v0

    iget-object v3, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v2, p0, v3, v1, v5}, Lb/a/a/o;->a(Lb/a/a/q;Lb/a/a/d;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lb/a/a/q;->a(Lb/a/a/o;[Lb/a/a/o;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 7

    const/16 v6, 0x12

    const/4 v5, 0x6

    const/4 v4, 0x5

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v0, p1}, Lb/a/a/g;->a(Ljava/lang/Object;)Lb/a/a/n;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    const/4 v2, 0x0

    iget-object v3, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v0, v6, v2, v3, v1}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    :cond_0
    :goto_0
    iget v0, v1, Lb/a/a/n;->a:I

    iget v2, v1, Lb/a/a/n;->b:I

    if-eq v2, v4, :cond_1

    iget v1, v1, Lb/a/a/n;->b:I

    if-ne v1, v5, :cond_6

    :cond_1
    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lb/a/a/d;->b(II)Lb/a/a/d;

    :goto_1
    return-void

    :cond_2
    iget v0, v1, Lb/a/a/n;->b:I

    if-eq v0, v4, :cond_3

    iget v0, v1, Lb/a/a/n;->b:I

    if-ne v0, v5, :cond_5

    :cond_3
    iget v0, p0, Lb/a/a/q;->T:I

    add-int/lit8 v0, v0, 0x2

    :goto_2
    iget v2, p0, Lb/a/a/q;->U:I

    if-le v0, v2, :cond_4

    iput v0, p0, Lb/a/a/q;->U:I

    :cond_4
    iput v0, p0, Lb/a/a/q;->T:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lb/a/a/q;->T:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/16 v1, 0x100

    if-lt v0, v1, :cond_7

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Lb/a/a/d;->b(II)Lb/a/a/d;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v1, v6, v0}, Lb/a/a/d;->a(II)Lb/a/a/d;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    const/16 v3, 0xc5

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v0, p1}, Lb/a/a/g;->b(Ljava/lang/String;)Lb/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v1, :cond_0

    iget v1, p0, Lb/a/a/q;->P:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v1, v1, Lb/a/a/o;->f:Lb/a/a/k;

    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v1, v3, p2, v2, v0}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/n;->a:I

    invoke-virtual {v1, v3, v0}, Lb/a/a/d;->b(II)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/a/a/d;->a(I)Lb/a/a/d;

    return-void

    :cond_1
    iget v1, p0, Lb/a/a/q;->T:I

    rsub-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lb/a/a/q;->T:I

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Lb/a/a/l;[Ljava/lang/Object;)V
    .locals 6

    const/16 v5, 0xba

    const/4 v4, 0x0

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lb/a/a/l;[Ljava/lang/Object;)Lb/a/a/n;

    move-result-object v1

    iget v0, v1, Lb/a/a/n;->c:I

    iget-object v2, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v2, :cond_0

    iget v2, p0, Lb/a/a/q;->P:I

    if-nez v2, :cond_1

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v0, v5, v4, v2, v1}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v1, v1, Lb/a/a/n;->a:I

    invoke-virtual {v0, v5, v1}, Lb/a/a/d;->b(II)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v0, v4}, Lb/a/a/d;->b(I)Lb/a/a/d;

    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p2}, Lb/a/a/s;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lb/a/a/n;->c:I

    :cond_2
    iget v2, p0, Lb/a/a/q;->T:I

    shr-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    and-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lb/a/a/q;->U:I

    if-le v0, v2, :cond_3

    iput v0, p0, Lb/a/a/q;->U:I

    :cond_3
    iput v0, p0, Lb/a/a/q;->T:I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/a/a/o;Lb/a/a/o;I)V
    .locals 4

    const/4 v0, 0x2

    if-eqz p3, :cond_1

    iget-object v1, p0, Lb/a/a/q;->J:Lb/a/a/d;

    if-nez v1, :cond_0

    new-instance v1, Lb/a/a/d;

    invoke-direct {v1}, Lb/a/a/d;-><init>()V

    iput-object v1, p0, Lb/a/a/q;->J:Lb/a/a/d;

    :cond_0
    iget v1, p0, Lb/a/a/q;->I:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/a/a/q;->I:I

    iget-object v1, p0, Lb/a/a/q;->J:Lb/a/a/d;

    iget v2, p4, Lb/a/a/o;->c:I

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    iget v2, p5, Lb/a/a/o;->c:I

    iget v3, p4, Lb/a/a/o;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v2, p1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v2, p3}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    invoke-virtual {v1, p6}, Lb/a/a/d;->b(I)Lb/a/a/d;

    :cond_1
    iget-object v1, p0, Lb/a/a/q;->H:Lb/a/a/d;

    if-nez v1, :cond_2

    new-instance v1, Lb/a/a/d;

    invoke-direct {v1}, Lb/a/a/d;-><init>()V

    iput-object v1, p0, Lb/a/a/q;->H:Lb/a/a/d;

    :cond_2
    iget v1, p0, Lb/a/a/q;->G:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/a/a/q;->G:I

    iget-object v1, p0, Lb/a/a/q;->H:Lb/a/a/d;

    iget v2, p4, Lb/a/a/o;->c:I

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    iget v2, p5, Lb/a/a/o;->c:I

    iget v3, p4, Lb/a/a/o;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v2, p1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v2, p2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v1

    invoke-virtual {v1, p6}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget v1, p0, Lb/a/a/q;->P:I

    if-eq v1, v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x44

    if-ne v1, v2, :cond_5

    :cond_3
    :goto_0
    add-int/2addr v0, p6

    iget v1, p0, Lb/a/a/q;->v:I

    if-le v0, v1, :cond_4

    iput v0, p0, Lb/a/a/q;->v:I

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0xa9

    const/16 v2, 0x36

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    invoke-virtual {v0, p1, p2, v1, v1}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    :cond_0
    :goto_0
    iget v0, p0, Lb/a/a/q;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v0, 0x39

    if-ne p1, v0, :cond_7

    :cond_1
    add-int/lit8 v0, p2, 0x2

    :goto_1
    iget v1, p0, Lb/a/a/q;->v:I

    if-le v0, v1, :cond_2

    iput v0, p0, Lb/a/a/q;->v:I

    :cond_2
    const/4 v0, 0x4

    if-ge p2, v0, :cond_9

    if-eq p1, v3, :cond_9

    if-ge p1, v2, :cond_8

    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    :goto_2
    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v1, v0}, Lb/a/a/d;->a(I)Lb/a/a/d;

    :goto_3
    if-lt p1, v2, :cond_3

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_3

    iget v0, p0, Lb/a/a/q;->D:I

    if-lez v0, :cond_3

    new-instance v0, Lb/a/a/o;

    invoke-direct {v0}, Lb/a/a/o;-><init>()V

    invoke-virtual {p0, v0}, Lb/a/a/q;->a(Lb/a/a/o;)V

    :cond_3
    return-void

    :cond_4
    if-ne p1, v3, :cond_5

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget v1, v0, Lb/a/a/o;->a:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lb/a/a/o;->a:I

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget v1, p0, Lb/a/a/q;->T:I

    iput v1, v0, Lb/a/a/o;->d:I

    invoke-direct {p0}, Lb/a/a/q;->e()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lb/a/a/q;->T:I

    sget-object v1, Lb/a/a/k;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lb/a/a/q;->U:I

    if-le v0, v1, :cond_6

    iput v0, p0, Lb/a/a/q;->U:I

    :cond_6
    iput v0, p0, Lb/a/a/q;->T:I

    goto :goto_0

    :cond_7
    add-int/lit8 v0, p2, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    goto :goto_2

    :cond_9
    const/16 v0, 0x100

    if-lt p2, v0, :cond_a

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/d;->b(II)Lb/a/a/d;

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v0, p1, p2}, Lb/a/a/d;->a(II)Lb/a/a/d;

    goto :goto_3
.end method

.method public b(ILb/a/a/o;)V
    .locals 2

    iget-object v0, p0, Lb/a/a/q;->L:Lb/a/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/d;

    invoke-direct {v0}, Lb/a/a/d;-><init>()V

    iput-object v0, p0, Lb/a/a/q;->L:Lb/a/a/d;

    :cond_0
    iget v0, p0, Lb/a/a/q;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/q;->K:I

    iget-object v0, p0, Lb/a/a/q;->L:Lb/a/a/d;

    iget v1, p2, Lb/a/a/o;->c:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/q;->L:Lb/a/a/d;

    invoke-virtual {v0, p1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0xb9

    const/4 v1, 0x0

    if-ne p1, v6, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v2, p2, p3, p4, v0}, Lb/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lb/a/a/n;

    move-result-object v4

    iget v2, v4, Lb/a/a/n;->c:I

    iget-object v3, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v3, :cond_0

    iget v3, p0, Lb/a/a/q;->P:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v3, v3, Lb/a/a/o;->f:Lb/a/a/k;

    iget-object v5, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v3, p1, v1, v5, v4}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    :cond_0
    :goto_1
    if-eqz v0, :cond_5

    if-nez v2, :cond_6

    invoke-static {p4}, Lb/a/a/s;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lb/a/a/n;->c:I

    :goto_2
    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v3, v4, Lb/a/a/n;->a:I

    invoke-virtual {v2, v6, v3}, Lb/a/a/d;->b(II)Lb/a/a/d;

    move-result-object v2

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0, v1}, Lb/a/a/d;->a(II)Lb/a/a/d;

    :goto_3
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_7

    invoke-static {p4}, Lb/a/a/s;->e(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lb/a/a/n;->c:I

    :goto_4
    const/16 v2, 0xb8

    if-ne p1, v2, :cond_4

    iget v2, p0, Lb/a/a/q;->T:I

    shr-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    and-int/lit8 v5, v3, 0x3

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    :goto_5
    iget v5, p0, Lb/a/a/q;->U:I

    if-le v2, v5, :cond_3

    iput v2, p0, Lb/a/a/q;->U:I

    :cond_3
    iput v2, p0, Lb/a/a/q;->T:I

    move v2, v3

    goto :goto_1

    :cond_4
    iget v2, p0, Lb/a/a/q;->T:I

    shr-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    and-int/lit8 v5, v3, 0x3

    add-int/2addr v2, v5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v1, v4, Lb/a/a/n;->a:I

    invoke-virtual {v0, p1, v1}, Lb/a/a/d;->b(II)Lb/a/a/d;

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_4
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(II)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x84

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->S:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    invoke-virtual {v0, v2, p1, v1, v1}, Lb/a/a/k;->a(IILb/a/a/g;Lb/a/a/n;)V

    :cond_0
    iget v0, p0, Lb/a/a/q;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lb/a/a/q;->v:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lb/a/a/q;->v:I

    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_2

    const/16 v0, -0x80

    if-ge p2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lb/a/a/d;->b(II)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/a/a/d;->b(I)Lb/a/a/d;

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    invoke-virtual {v0, v2}, Lb/a/a/d;->a(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/d;->a(II)Lb/a/a/d;

    goto :goto_0
.end method

.method final d()I
    .locals 10

    const v9, 0xffff

    const/4 v8, -0x1

    const/4 v6, 0x0

    iget v0, p0, Lb/a/a/q;->e:I

    if-eqz v0, :cond_1

    iget v0, p0, Lb/a/a/q;->f:I

    add-int/lit8 v7, v0, 0x6

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-boolean v0, p0, Lb/a/a/q;->N:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lb/a/a/q;->h()V

    :cond_2
    const/16 v7, 0x8

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method code too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    add-int/lit8 v0, v0, 0x12

    iget v1, p0, Lb/a/a/q;->D:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    iget-object v1, p0, Lb/a/a/q;->H:Lb/a/a/d;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lb/a/a/q;->H:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lb/a/a/q;->J:Lb/a/a/d;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lb/a/a/q;->J:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lb/a/a/q;->L:Lb/a/a/d;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lb/a/a/q;->L:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget v1, v1, Lb/a/a/g;->e:I

    and-int/2addr v1, v9

    const/16 v2, 0x32

    if-lt v1, v2, :cond_10

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    if-eqz v1, :cond_11

    const-string v1, "StackMapTable"

    :goto_2
    invoke-virtual {v2, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lb/a/a/q;->y:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v7, v0

    :goto_3
    iget-object v0, p0, Lb/a/a/q;->M:Lb/a/a/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lb/a/a/q;->M:Lb/a/a/c;

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v2, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v2, v2, Lb/a/a/d;->a:[B

    iget-object v3, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v3, v3, Lb/a/a/d;->b:I

    iget v4, p0, Lb/a/a/q;->u:I

    iget v5, p0, Lb/a/a/q;->v:I

    invoke-virtual/range {v0 .. v5}, Lb/a/a/c;->b(Lb/a/a/g;[BIII)I

    move-result v0

    add-int/2addr v7, v0

    :cond_7
    iget v0, p0, Lb/a/a/q;->g:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget v0, p0, Lb/a/a/q;->g:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    :cond_8
    iget v0, p0, Lb/a/a/q;->i:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget v0, v0, Lb/a/a/g;->e:I

    and-int/2addr v0, v9

    const/16 v1, 0x31

    if-lt v0, v1, :cond_9

    iget v0, p0, Lb/a/a/q;->i:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x6

    :cond_a
    iget v0, p0, Lb/a/a/q;->i:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x6

    :cond_b
    iget-object v0, p0, Lb/a/a/q;->d:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v1, p0, Lb/a/a/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x8

    :cond_c
    iget-object v0, p0, Lb/a/a/q;->m:Lb/a/a/d;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lb/a/a/q;->m:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->b:I

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v7, v0

    :cond_d
    iget-object v0, p0, Lb/a/a/q;->n:Lb/a/a/b;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lb/a/a/q;->n:Lb/a/a/b;

    invoke-virtual {v0}, Lb/a/a/b;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    :cond_e
    iget-object v0, p0, Lb/a/a/q;->o:Lb/a/a/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lb/a/a/q;->o:Lb/a/a/b;

    invoke-virtual {v0}, Lb/a/a/b;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    :cond_f
    iget-object v0, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    array-length v0, v0

    iget v1, p0, Lb/a/a/q;->r:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    add-int v1, v7, v0

    iget-object v0, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iget v2, p0, Lb/a/a/q;->r:I

    if-lt v0, v2, :cond_14

    iget-object v2, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    aget-object v2, v2, v0

    if-nez v2, :cond_12

    move v2, v6

    :goto_5
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_10
    move v1, v6

    goto/16 :goto_1

    :cond_11
    const-string v1, "StackMap"

    goto/16 :goto_2

    :cond_12
    iget-object v2, p0, Lb/a/a/q;->p:[Lb/a/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lb/a/a/b;->b()I

    move-result v2

    goto :goto_5

    :cond_13
    move v1, v7

    :cond_14
    iget-object v0, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    array-length v0, v0

    iget v2, p0, Lb/a/a/q;->r:I

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v1, v0

    iget-object v0, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    iget v2, p0, Lb/a/a/q;->r:I

    if-lt v0, v2, :cond_16

    iget-object v2, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    aget-object v2, v2, v0

    if-nez v2, :cond_15

    move v2, v6

    :goto_7
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_15
    iget-object v2, p0, Lb/a/a/q;->q:[Lb/a/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lb/a/a/b;->b()I

    move-result v2

    goto :goto_7

    :cond_16
    move v7, v1

    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/q;->s:Lb/a/a/c;

    iget-object v1, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const/4 v2, 0x0

    move v3, v6

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lb/a/a/c;->b(Lb/a/a/g;[BIII)I

    move-result v0

    add-int/2addr v7, v0

    goto/16 :goto_0

    :cond_17
    move v7, v0

    goto/16 :goto_3
.end method

.method public d(II)V
    .locals 13

    const v12, 0x7fffffff

    const/high16 v11, 0x1700000

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lb/a/a/q;->P:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lb/a/a/q;->E:Lb/a/a/m;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Lb/a/a/m;->a:Lb/a/a/o;

    invoke-virtual {v0}, Lb/a/a/o;->a()Lb/a/a/o;

    move-result-object v1

    iget-object v0, v2, Lb/a/a/m;->c:Lb/a/a/o;

    invoke-virtual {v0}, Lb/a/a/o;->a()Lb/a/a/o;

    move-result-object v4

    iget-object v0, v2, Lb/a/a/m;->b:Lb/a/a/o;

    invoke-virtual {v0}, Lb/a/a/o;->a()Lb/a/a/o;

    move-result-object v6

    iget-object v0, v2, Lb/a/a/m;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "java/lang/Throwable"

    :goto_1
    iget-object v7, p0, Lb/a/a/q;->c:Lb/a/a/g;

    invoke-virtual {v7, v0}, Lb/a/a/g;->e(Ljava/lang/String;)I

    move-result v0

    or-int v7, v11, v0

    iget v0, v4, Lb/a/a/o;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v4, Lb/a/a/o;->a:I

    move-object v0, v1

    :goto_2
    if-eq v0, v6, :cond_1

    new-instance v1, Lb/a/a/h;

    invoke-direct {v1}, Lb/a/a/h;-><init>()V

    iput v7, v1, Lb/a/a/h;->a:I

    iput-object v4, v1, Lb/a/a/h;->b:Lb/a/a/o;

    iget-object v8, v0, Lb/a/a/o;->h:Lb/a/a/h;

    iput-object v8, v1, Lb/a/a/h;->c:Lb/a/a/h;

    iput-object v1, v0, Lb/a/a/o;->h:Lb/a/a/h;

    iget-object v0, v0, Lb/a/a/o;->g:Lb/a/a/o;

    goto :goto_2

    :cond_0
    iget-object v0, v2, Lb/a/a/m;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lb/a/a/m;->f:Lb/a/a/m;

    move-object v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    iget-object v0, v0, Lb/a/a/o;->f:Lb/a/a/k;

    iget-object v1, p0, Lb/a/a/q;->l:Ljava/lang/String;

    invoke-static {v1}, Lb/a/a/s;->d(Ljava/lang/String;)[Lb/a/a/s;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget v4, p0, Lb/a/a/q;->i:I

    iget v6, p0, Lb/a/a/q;->v:I

    invoke-virtual {v0, v2, v4, v1, v6}, Lb/a/a/k;->a(Lb/a/a/g;I[Lb/a/a/s;I)V

    invoke-direct {p0, v0}, Lb/a/a/q;->a(Lb/a/a/k;)V

    iget-object v2, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    move-object v4, v2

    move v1, v5

    :goto_3
    if-eqz v4, :cond_5

    iget-object v2, v4, Lb/a/a/o;->i:Lb/a/a/o;

    iput-object v10, v4, Lb/a/a/o;->i:Lb/a/a/o;

    iget-object v6, v4, Lb/a/a/o;->f:Lb/a/a/k;

    iget v0, v4, Lb/a/a/o;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget v0, v4, Lb/a/a/o;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v4, Lb/a/a/o;->a:I

    :cond_3
    iget v0, v4, Lb/a/a/o;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v4, Lb/a/a/o;->a:I

    iget-object v0, v6, Lb/a/a/k;->d:[I

    array-length v0, v0

    iget v7, v4, Lb/a/a/o;->e:I

    add-int/2addr v0, v7

    if-le v0, v1, :cond_1d

    :goto_4
    iget-object v1, v4, Lb/a/a/o;->h:Lb/a/a/h;

    move-object v4, v1

    :goto_5
    if-eqz v4, :cond_4

    iget-object v1, v4, Lb/a/a/h;->b:Lb/a/a/o;

    invoke-virtual {v1}, Lb/a/a/o;->a()Lb/a/a/o;

    move-result-object v1

    iget-object v7, p0, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v8, v1, Lb/a/a/o;->f:Lb/a/a/k;

    iget v9, v4, Lb/a/a/h;->a:I

    invoke-virtual {v6, v7, v8, v9}, Lb/a/a/k;->a(Lb/a/a/g;Lb/a/a/k;I)Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v7, v1, Lb/a/a/o;->i:Lb/a/a/o;

    if-nez v7, :cond_1c

    iput-object v2, v1, Lb/a/a/o;->i:Lb/a/a/o;

    :goto_6
    iget-object v2, v4, Lb/a/a/h;->c:Lb/a/a/h;

    move-object v4, v2

    move-object v2, v1

    goto :goto_5

    :cond_4
    move-object v4, v2

    move v1, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    move-object v4, v0

    move v0, v1

    :goto_7
    if-eqz v4, :cond_a

    iget-object v1, v4, Lb/a/a/o;->f:Lb/a/a/k;

    iget v2, v4, Lb/a/a/o;->a:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    invoke-direct {p0, v1}, Lb/a/a/q;->a(Lb/a/a/k;)V

    :cond_6
    iget v1, v4, Lb/a/a/o;->a:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_9

    iget-object v6, v4, Lb/a/a/o;->g:Lb/a/a/o;

    iget v2, v4, Lb/a/a/o;->c:I

    if-nez v6, :cond_7

    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->b:I

    :goto_8
    add-int/lit8 v7, v1, -0x1

    if-lt v7, v2, :cond_9

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v2

    :goto_9
    if-ge v1, v7, :cond_8

    iget-object v8, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v8, v8, Lb/a/a/d;->a:[B

    aput-byte v5, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_7
    iget v1, v6, Lb/a/a/o;->c:I

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lb/a/a/q;->t:Lb/a/a/d;

    iget-object v1, v1, Lb/a/a/d;->a:[B

    const/16 v8, -0x41

    aput-byte v8, v1, v7

    invoke-direct {p0, v2, v5, v3}, Lb/a/a/q;->a(III)V

    iget-object v1, p0, Lb/a/a/q;->C:[I

    iget v2, p0, Lb/a/a/q;->B:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lb/a/a/q;->B:I

    iget-object v7, p0, Lb/a/a/q;->c:Lb/a/a/g;

    const-string v8, "java/lang/Throwable"

    invoke-virtual {v7, v8}, Lb/a/a/g;->e(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v7, v11

    aput v7, v1, v2

    invoke-direct {p0}, Lb/a/a/q;->f()V

    iget-object v1, p0, Lb/a/a/q;->E:Lb/a/a/m;

    invoke-static {v1, v4, v6}, Lb/a/a/m;->a(Lb/a/a/m;Lb/a/a/o;Lb/a/a/o;)Lb/a/a/m;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/q;->E:Lb/a/a/m;

    :cond_9
    iget-object v1, v4, Lb/a/a/o;->g:Lb/a/a/o;

    move-object v4, v1

    goto :goto_7

    :cond_a
    iget-object v1, p0, Lb/a/a/q;->E:Lb/a/a/m;

    iput v5, p0, Lb/a/a/q;->D:I

    :goto_a
    if-eqz v1, :cond_b

    iget v2, p0, Lb/a/a/q;->D:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/a/a/q;->D:I

    iget-object v1, v1, Lb/a/a/m;->f:Lb/a/a/m;

    goto :goto_a

    :cond_b
    iput v0, p0, Lb/a/a/q;->u:I

    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lb/a/a/q;->P:I

    if-ne v0, v3, :cond_18

    iget-object v0, p0, Lb/a/a/q;->E:Lb/a/a/m;

    move-object v1, v0

    :goto_c
    if-eqz v1, :cond_f

    iget-object v0, v1, Lb/a/a/m;->a:Lb/a/a/o;

    iget-object v2, v1, Lb/a/a/m;->c:Lb/a/a/o;

    iget-object v4, v1, Lb/a/a/m;->b:Lb/a/a/o;

    :goto_d
    if-eq v0, v4, :cond_e

    new-instance v6, Lb/a/a/h;

    invoke-direct {v6}, Lb/a/a/h;-><init>()V

    iput v12, v6, Lb/a/a/h;->a:I

    iput-object v2, v6, Lb/a/a/h;->b:Lb/a/a/o;

    iget v7, v0, Lb/a/a/o;->a:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_d

    iget-object v7, v0, Lb/a/a/o;->h:Lb/a/a/h;

    iput-object v7, v6, Lb/a/a/h;->c:Lb/a/a/h;

    iput-object v6, v0, Lb/a/a/o;->h:Lb/a/a/h;

    :goto_e
    iget-object v0, v0, Lb/a/a/o;->g:Lb/a/a/o;

    goto :goto_d

    :cond_d
    iget-object v7, v0, Lb/a/a/o;->h:Lb/a/a/h;

    iget-object v7, v7, Lb/a/a/h;->c:Lb/a/a/h;

    iget-object v7, v7, Lb/a/a/h;->c:Lb/a/a/h;

    iput-object v7, v6, Lb/a/a/h;->c:Lb/a/a/h;

    iget-object v7, v0, Lb/a/a/o;->h:Lb/a/a/h;

    iget-object v7, v7, Lb/a/a/h;->c:Lb/a/a/h;

    iput-object v6, v7, Lb/a/a/h;->c:Lb/a/a/h;

    goto :goto_e

    :cond_e
    iget-object v0, v1, Lb/a/a/m;->f:Lb/a/a/m;

    move-object v1, v0

    goto :goto_c

    :cond_f
    iget v0, p0, Lb/a/a/q;->O:I

    if-lez v0, :cond_14

    iget-object v0, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    const-wide/16 v6, 0x1

    iget v1, p0, Lb/a/a/q;->O:I

    invoke-virtual {v0, v10, v6, v7, v1}, Lb/a/a/o;->a(Lb/a/a/o;JI)V

    iget-object v0, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    move-object v1, v0

    move v0, v5

    :goto_f
    if-eqz v1, :cond_11

    iget v2, v1, Lb/a/a/o;->a:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_10

    iget-object v2, v1, Lb/a/a/o;->h:Lb/a/a/h;

    iget-object v2, v2, Lb/a/a/h;->c:Lb/a/a/h;

    iget-object v2, v2, Lb/a/a/h;->b:Lb/a/a/o;

    iget v4, v2, Lb/a/a/o;->a:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_10

    add-int/lit8 v0, v0, 0x1

    int-to-long v6, v0

    const-wide/16 v8, 0x20

    div-long/2addr v6, v8

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    const-wide/16 v8, 0x1

    rem-int/lit8 v4, v0, 0x20

    shl-long/2addr v8, v4

    or-long/2addr v6, v8

    iget v4, p0, Lb/a/a/q;->O:I

    invoke-virtual {v2, v10, v6, v7, v4}, Lb/a/a/o;->a(Lb/a/a/o;JI)V

    :cond_10
    iget-object v1, v1, Lb/a/a/o;->g:Lb/a/a/o;

    goto :goto_f

    :cond_11
    iget-object v0, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    move-object v1, v0

    :goto_10
    if-eqz v1, :cond_14

    iget v0, v1, Lb/a/a/o;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_13

    iget-object v0, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    :goto_11
    if-eqz v0, :cond_12

    iget v2, v0, Lb/a/a/o;->a:I

    and-int/lit16 v2, v2, -0x801

    iput v2, v0, Lb/a/a/o;->a:I

    iget-object v0, v0, Lb/a/a/o;->g:Lb/a/a/o;

    goto :goto_11

    :cond_12
    iget-object v0, v1, Lb/a/a/o;->h:Lb/a/a/h;

    iget-object v0, v0, Lb/a/a/h;->c:Lb/a/a/h;

    iget-object v0, v0, Lb/a/a/h;->b:Lb/a/a/o;

    const-wide/16 v6, 0x0

    iget v2, p0, Lb/a/a/q;->O:I

    invoke-virtual {v0, v1, v6, v7, v2}, Lb/a/a/o;->a(Lb/a/a/o;JI)V

    :cond_13
    iget-object v0, v1, Lb/a/a/o;->g:Lb/a/a/o;

    move-object v1, v0

    goto :goto_10

    :cond_14
    iget-object v4, p0, Lb/a/a/q;->Q:Lb/a/a/o;

    move-object v2, v4

    move v1, v5

    :goto_12
    if-eqz v2, :cond_17

    iget-object v4, v2, Lb/a/a/o;->i:Lb/a/a/o;

    iget v6, v2, Lb/a/a/o;->d:I

    iget v0, v2, Lb/a/a/o;->e:I

    add-int/2addr v0, v6

    if-le v0, v1, :cond_1b

    :goto_13
    iget-object v1, v2, Lb/a/a/o;->h:Lb/a/a/h;

    iget v2, v2, Lb/a/a/o;->a:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1a

    iget-object v1, v1, Lb/a/a/h;->c:Lb/a/a/h;

    move-object v5, v1

    :goto_14
    if-eqz v5, :cond_16

    iget-object v2, v5, Lb/a/a/h;->b:Lb/a/a/o;

    iget v1, v2, Lb/a/a/o;->a:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_19

    iget v1, v5, Lb/a/a/h;->a:I

    if-ne v1, v12, :cond_15

    move v1, v3

    :goto_15
    iput v1, v2, Lb/a/a/o;->d:I

    iget v1, v2, Lb/a/a/o;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v2, Lb/a/a/o;->a:I

    iput-object v4, v2, Lb/a/a/o;->i:Lb/a/a/o;

    move-object v1, v2

    :goto_16
    iget-object v2, v5, Lb/a/a/h;->c:Lb/a/a/h;

    move-object v5, v2

    move-object v4, v1

    goto :goto_14

    :cond_15
    iget v1, v5, Lb/a/a/h;->a:I

    add-int/2addr v1, v6

    goto :goto_15

    :cond_16
    move-object v2, v4

    move v1, v0

    goto :goto_12

    :cond_17
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lb/a/a/q;->u:I

    goto/16 :goto_b

    :cond_18
    iput p1, p0, Lb/a/a/q;->u:I

    iput p2, p0, Lb/a/a/q;->v:I

    goto/16 :goto_b

    :cond_19
    move-object v1, v4

    goto :goto_16

    :cond_1a
    move-object v5, v1

    goto :goto_14

    :cond_1b
    move v0, v1

    goto :goto_13

    :cond_1c
    move-object v1, v2

    goto/16 :goto_6

    :cond_1d
    move v0, v1

    goto/16 :goto_4
.end method
