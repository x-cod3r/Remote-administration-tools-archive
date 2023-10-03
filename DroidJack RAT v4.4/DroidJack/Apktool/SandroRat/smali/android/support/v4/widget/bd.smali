.class public Landroid/support/v4/widget/bd;
.super Ljava/lang/Object;


# static fields
.field private static final v:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Landroid/support/v4/widget/ad;

.field private final r:Landroid/support/v4/widget/bg;

.field private s:Landroid/view/View;

.field private t:Z

.field private final u:Landroid/view/ViewGroup;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/widget/be;

    invoke-direct {v0}, Landroid/support/v4/widget/be;-><init>()V

    sput-object v0, Landroid/support/v4/widget/bd;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/bg;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/bd;->c:I

    new-instance v0, Landroid/support/v4/widget/bf;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/bf;-><init>(Landroid/support/v4/widget/bd;)V

    iput-object v0, p0, Landroid/support/v4/widget/bd;->w:Ljava/lang/Runnable;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/bd;->o:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/bd;->b:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/widget/bd;->m:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/bd;->n:F

    sget-object v0, Landroid/support/v4/widget/bd;->v:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ad;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ad;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    return-void
.end method

.method private a(FFF)F
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, p2

    if-gez v2, :cond_1

    move p3, v0

    :cond_0
    :goto_0
    return p3

    :cond_1
    cmpl-float v1, v1, p3

    if-lez v1, :cond_2

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    goto :goto_0
.end method

.method private a(III)I
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/bd;->b(F)F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_1

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_1
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method private a(Landroid/view/View;IIII)I
    .locals 8

    iget v0, p0, Landroid/support/v4/widget/bd;->n:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/bd;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Landroid/support/v4/widget/bd;->b(III)I

    move-result v2

    iget v0, p0, Landroid/support/v4/widget/bd;->n:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/bd;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Landroid/support/v4/widget/bd;->b(III)I

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v6, v1, v5

    add-int v7, v0, v4

    if-eqz v2, :cond_0

    int-to-float v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    move v1, v0

    :goto_0
    if-eqz v3, :cond_1

    int-to-float v0, v5

    int-to-float v4, v6

    div-float/2addr v0, v4

    :goto_1
    iget-object v4, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/bg;->a(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p2, v2, v4}, Landroid/support/v4/widget/bd;->a(III)I

    move-result v2

    iget-object v4, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/bg;->b(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Landroid/support/v4/widget/bd;->a(III)I

    move-result v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v7

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    int-to-float v0, v4

    int-to-float v4, v7

    div-float/2addr v0, v4

    goto :goto_1
.end method

.method public static a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/bg;)Landroid/support/v4/widget/bd;
    .locals 3

    invoke-static {p0, p2}, Landroid/support/v4/widget/bd;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/bg;)Landroid/support/v4/widget/bd;

    move-result-object v0

    iget v1, v0, Landroid/support/v4/widget/bd;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/support/v4/widget/bd;->b:I

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/support/v4/widget/bg;)Landroid/support/v4/widget/bd;
    .locals 2

    new-instance v0, Landroid/support/v4/widget/bd;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroid/support/v4/widget/bd;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/bg;)V

    return-object v0
.end method

.method private a(FF)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Landroid/support/v4/widget/bd;->t:Z

    iget-object v0, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/widget/bg;->a(Landroid/view/View;FF)V

    iput-boolean v2, p0, Landroid/support/v4/widget/bd;->t:Z

    iget v0, p0, Landroid/support/v4/widget/bd;->a:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/bd;->c(I)V

    :cond_0
    return-void
.end method

.method private a(FFI)V
    .locals 3

    invoke-direct {p0, p3}, Landroid/support/v4/widget/bd;->f(I)V

    iget-object v0, p0, Landroid/support/v4/widget/bd;->d:[F

    iget-object v1, p0, Landroid/support/v4/widget/bd;->f:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Landroid/support/v4/widget/bd;->e:[F

    iget-object v1, p0, Landroid/support/v4/widget/bd;->g:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Landroid/support/v4/widget/bd;->h:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/bd;->e(II)I

    move-result v1

    aput v1, v0, p3

    iget v0, p0, Landroid/support/v4/widget/bd;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/bd;->k:I

    return-void
.end method

.method private a(FFII)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/bd;->h:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/bd;->p:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/bd;->j:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/bd;->i:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/bd;->b:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Landroid/support/v4/widget/bd;->b:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v2, p4}, Landroid/support/v4/widget/bg;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/bd;->j:[I

    aget v2, v1, p3

    or-int/2addr v2, p4

    aput v2, v1, p3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/bd;->i:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/bd;->b:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(IIII)Z
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v2, p1, v7

    sub-int v3, p2, v6

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v1}, Landroid/support/v4/widget/ad;->f()V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/bd;->c(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/bd;->a(Landroid/view/View;IIII)I

    move-result v9

    iget-object v4, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    move v5, v7

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ad;->a(IIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/bd;->c(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/bg;->a(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/bg;->b(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_3

    move v3, v1

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    mul-float v0, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v0, v3

    iget v3, p0, Landroid/support/v4/widget/bd;->b:I

    iget v4, p0, Landroid/support/v4/widget/bd;->b:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/bd;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/bd;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method private b(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(III)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    :cond_0
    :goto_0
    return p3

    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    goto :goto_0
.end method

.method private b(FFI)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/bd;->a(FFII)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/bd;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/bd;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/bd;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/bd;->i:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    iget-object v1, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/bg;->b(II)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private b(IIII)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_3

    iget-object v2, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    iget-object v3, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Landroid/support/v4/widget/bg;->a(Landroid/view/View;II)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    sub-int v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_0
    if-eqz p4, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    iget-object v4, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v3, v4, p2, p4}, Landroid/support/v4/widget/bg;->b(Landroid/view/View;II)I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    sub-int v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_1
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    sub-int v4, v2, v0

    sub-int v5, v3, v1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/bg;->a(Landroid/view/View;IIII)V

    :cond_1
    return-void

    :cond_2
    move v3, p2

    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-static {p1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/bd;->f:[F

    aput v3, v5, v2

    iget-object v3, p0, Landroid/support/v4/widget/bd;->g:[F

    aput v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(II)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/bd;->o:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/bd;->o:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/bd;->o:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/bd;->o:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method private e(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/bd;->d:[F

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/bd;->d:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->e:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->f:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->g:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->h:[I

    aput v2, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->i:[I

    aput v2, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->j:[I

    aput v2, v0, p1

    iget v0, p0, Landroid/support/v4/widget/bd;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/bd;->k:I

    goto :goto_0
.end method

.method private f(I)V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/bd;->d:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/bd;->d:[F

    array-length v0, v0

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    iget-object v7, p0, Landroid/support/v4/widget/bd;->d:[F

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/support/v4/widget/bd;->d:[F

    iget-object v8, p0, Landroid/support/v4/widget/bd;->d:[F

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/bd;->e:[F

    iget-object v8, p0, Landroid/support/v4/widget/bd;->e:[F

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/bd;->f:[F

    iget-object v8, p0, Landroid/support/v4/widget/bd;->f:[F

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/bd;->g:[F

    iget-object v8, p0, Landroid/support/v4/widget/bd;->g:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/bd;->h:[I

    iget-object v8, p0, Landroid/support/v4/widget/bd;->h:[I

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/bd;->i:[I

    iget-object v8, p0, Landroid/support/v4/widget/bd;->i:[I

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/bd;->j:[I

    iget-object v8, p0, Landroid/support/v4/widget/bd;->j:[I

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v0, p0, Landroid/support/v4/widget/bd;->d:[F

    iput-object v1, p0, Landroid/support/v4/widget/bd;->e:[F

    iput-object v2, p0, Landroid/support/v4/widget/bd;->f:[F

    iput-object v3, p0, Landroid/support/v4/widget/bd;->g:[F

    iput-object v4, p0, Landroid/support/v4/widget/bd;->h:[I

    iput-object v5, p0, Landroid/support/v4/widget/bd;->i:[I

    iput-object v6, p0, Landroid/support/v4/widget/bd;->j:[I

    :cond_2
    return-void
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/bd;->d:[F

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/bd;->d:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/bd;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/bd;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/bd;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/bd;->h:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/bd;->i:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/bd;->j:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Landroid/support/v4/widget/bd;->k:I

    goto :goto_0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/widget/bd;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/bd;->c:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ao;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/bd;->n:F

    iget v2, p0, Landroid/support/v4/widget/bd;->m:F

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/bd;->a(FFF)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/bd;->c:I

    invoke-static {v1, v2}, Landroid/support/v4/view/ao;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/bd;->n:F

    iget v3, p0, Landroid/support/v4/widget/bd;->m:F

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/bd;->a(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/bd;->a(FF)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/bd;->a:I

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/bd;->n:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/bd;->p:I

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    iput p2, p0, Landroid/support/v4/widget/bd;->c:I

    iget-object v0, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/bg;->b(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/bd;->c(I)V

    return-void
.end method

.method public a(II)Z
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/widget/bd;->t:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/bd;->c:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ao;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/bd;->c:I

    invoke-static {v1, v2}, Landroid/support/v4/view/ao;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/bd;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-static {p1}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/bd;->e()V

    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    iget v0, p0, Landroid/support/v4/widget/bd;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/bd;->a(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/bd;->d(II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    if-ne v0, v1, :cond_3

    iget v1, p0, Landroid/support/v4/widget/bd;->a:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/bd;->b(Landroid/view/View;I)Z

    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/bd;->h:[I

    aget v0, v0, v2

    iget v1, p0, Landroid/support/v4/widget/bd;->p:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    iget v3, p0, Landroid/support/v4/widget/bd;->p:I

    and-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/bg;->a(II)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-static {p1, v1}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Landroid/support/v4/widget/bd;->a(FFI)V

    iget v3, p0, Landroid/support/v4/widget/bd;->a:I

    if-nez v3, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/bd;->h:[I

    aget v1, v1, v0

    iget v2, p0, Landroid/support/v4/widget/bd;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    iget v3, p0, Landroid/support/v4/widget/bd;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/bg;->a(II)V

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/support/v4/widget/bd;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    float-to-int v2, v2

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/bd;->d(II)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/bd;->b(Landroid/view/View;I)Z

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;)I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_6

    invoke-static {p1, v1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    invoke-static {p1, v1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p1, v1}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/bd;->d:[F

    aget v5, v5, v3

    sub-float v5, v0, v5

    iget-object v6, p0, Landroid/support/v4/widget/bd;->e:[F

    aget v6, v6, v3

    sub-float v6, v4, v6

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4}, Landroid/support/v4/widget/bd;->d(II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v4/widget/bd;->a(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    float-to-int v8, v5

    add-int/2addr v8, v7

    iget-object v9, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    float-to-int v10, v5

    invoke-virtual {v9, v4, v8, v10}, Landroid/support/v4/widget/bg;->a(Landroid/view/View;II)I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    float-to-int v10, v6

    add-int/2addr v10, v9

    iget-object v11, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    float-to-int v12, v6

    invoke-virtual {v11, v4, v10, v12}, Landroid/support/v4/widget/bg;->b(Landroid/view/View;II)I

    move-result v10

    iget-object v11, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v11, v4}, Landroid/support/v4/widget/bg;->a(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v12, v4}, Landroid/support/v4/widget/bg;->b(Landroid/view/View;)I

    move-result v12

    if-eqz v11, :cond_5

    if-lez v11, :cond_8

    if-ne v8, v7, :cond_8

    :cond_5
    if-eqz v12, :cond_6

    if-lez v12, :cond_8

    if-ne v10, v9, :cond_8

    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v4/widget/bd;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    invoke-direct {p0, v5, v6, v3}, Landroid/support/v4/widget/bd;->b(FFI)V

    iget v5, p0, Landroid/support/v4/widget/bd;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    if-eqz v0, :cond_9

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/bd;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/bd;->e(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v4/widget/bd;->e()V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/view/View;II)Z
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/bd;->c:I

    invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/bd;->a(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Landroid/support/v4/widget/bd;->a:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    :cond_0
    return v0
.end method

.method public a(Z)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v6, 0x0

    iget v0, p0, Landroid/support/v4/widget/bd;->a:I

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->e()Z

    move-result v7

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->a()I

    move-result v2

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->b()I

    move-result v3

    iget-object v0, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    iget-object v0, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    if-eqz v4, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz v5, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/bg;->a(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v7, :cond_7

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->c()I

    move-result v0

    if-ne v2, v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->d()I

    move-result v0

    if-ne v3, v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->f()V

    move v0, v6

    :goto_0
    if-nez v0, :cond_4

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/bd;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    iget v0, p0, Landroid/support/v4/widget/bd;->a:I

    if-ne v0, v8, :cond_6

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_5
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/bd;->c(I)V

    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_2

    :cond_7
    move v0, v7

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/bd;->o:I

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-static {p1}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/bd;->e()V

    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/bd;->d(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/bd;->a(FFI)V

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/widget/bd;->b(Landroid/view/View;I)Z

    iget-object v1, p0, Landroid/support/v4/widget/bd;->h:[I

    aget v1, v1, v0

    iget v2, p0, Landroid/support/v4/widget/bd;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    iget v3, p0, Landroid/support/v4/widget/bd;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/bg;->a(II)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v3}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v3}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/bd;->a(FFI)V

    iget v3, p0, Landroid/support/v4/widget/bd;->a:I

    if-nez v3, :cond_3

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/bd;->d(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/bd;->b(Landroid/view/View;I)Z

    iget-object v1, p0, Landroid/support/v4/widget/bd;->h:[I

    aget v1, v1, v0

    iget v2, p0, Landroid/support/v4/widget/bd;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    iget v3, p0, Landroid/support/v4/widget/bd;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/bg;->a(II)V

    goto :goto_0

    :cond_3
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/bd;->c(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/bd;->b(Landroid/view/View;I)Z

    goto :goto_0

    :pswitch_3
    iget v1, p0, Landroid/support/v4/widget/bd;->a:I

    if-ne v1, v8, :cond_4

    iget v0, p0, Landroid/support/v4/widget/bd;->c:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    iget-object v2, p0, Landroid/support/v4/widget/bd;->f:[F

    iget v3, p0, Landroid/support/v4/widget/bd;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/v4/widget/bd;->g:[F

    iget v3, p0, Landroid/support/v4/widget/bd;->c:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/support/v4/widget/bd;->b(IIII)V

    invoke-direct {p0, p1}, Landroid/support/v4/widget/bd;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/bd;->d:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    iget-object v6, p0, Landroid/support/v4/widget/bd;->e:[F

    aget v6, v6, v2

    sub-float v6, v4, v6

    invoke-direct {p0, v5, v6, v2}, Landroid/support/v4/widget/bd;->b(FFI)V

    iget v7, p0, Landroid/support/v4/widget/bd;->a:I

    if-ne v7, v8, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/bd;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_6
    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/bd;->d(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v5, v6}, Landroid/support/v4/widget/bd;->a(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/bd;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/bd;->a:I

    if-ne v3, v8, :cond_a

    iget v3, p0, Landroid/support/v4/widget/bd;->c:I

    if-ne v2, v3, :cond_a

    invoke-static {p1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;)I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_d

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/widget/bd;->c:I

    if-ne v4, v5, :cond_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/bd;->d(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {p0, v5, v4}, Landroid/support/v4/widget/bd;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v0, p0, Landroid/support/v4/widget/bd;->c:I

    :goto_3
    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Landroid/support/v4/widget/bd;->h()V

    :cond_a
    invoke-direct {p0, v2}, Landroid/support/v4/widget/bd;->e(I)V

    goto/16 :goto_0

    :pswitch_5
    iget v0, p0, Landroid/support/v4/widget/bd;->a:I

    if-ne v0, v8, :cond_b

    invoke-direct {p0}, Landroid/support/v4/widget/bd;->h()V

    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/widget/bd;->e()V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Landroid/support/v4/widget/bd;->a:I

    if-ne v0, v8, :cond_c

    invoke-direct {p0, v5, v5}, Landroid/support/v4/widget/bd;->a(FF)V

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/widget/bd;->e()V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public b(I)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v4/widget/bd;->k:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/bd;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_2

    move v3, v1

    :goto_1
    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_2
    iget-object v4, p0, Landroid/support/v4/widget/bd;->f:[F

    aget v4, v4, p2

    iget-object v5, p0, Landroid/support/v4/widget/bd;->d:[F

    aget v5, v5, p2

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/support/v4/widget/bd;->g:[F

    aget v5, v5, p2

    iget-object v6, p0, Landroid/support/v4/widget/bd;->e:[F

    aget v6, v6, p2

    sub-float/2addr v5, v6

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    mul-float v0, v4, v4

    mul-float v3, v5, v5

    add-float/2addr v0, v3

    iget v3, p0, Landroid/support/v4/widget/bd;->b:I

    iget v4, p0, Landroid/support/v4/widget/bd;->b:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/bd;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/bd;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method b(Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/bd;->c:I

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/widget/bg;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput p2, p0, Landroid/support/v4/widget/bd;->c:I

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/bd;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    return-object v0
.end method

.method c(I)V
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/bd;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v4/widget/bd;->a:I

    iget-object v0, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/bg;->a(I)V

    iget v0, p0, Landroid/support/v4/widget/bd;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public c(II)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/widget/bd;->b(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/bd;->b:I

    return v0
.end method

.method public d(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/bd;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/bg;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public d(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/bd;->d:[F

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/bd;->b(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/bd;->c:I

    invoke-direct {p0}, Landroid/support/v4/widget/bd;->g()V

    iget-object v0, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/bd;->l:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v4/widget/bd;->e()V

    iget v0, p0, Landroid/support/v4/widget/bd;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->a()I

    move-result v4

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->b()I

    move-result v5

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->f()V

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->a()I

    move-result v2

    iget-object v0, p0, Landroid/support/v4/widget/bd;->q:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->b()I

    move-result v3

    iget-object v0, p0, Landroid/support/v4/widget/bd;->r:Landroid/support/v4/widget/bg;

    iget-object v1, p0, Landroid/support/v4/widget/bd;->s:Landroid/view/View;

    sub-int v4, v2, v4

    sub-int v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/bg;->a(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/bd;->c(I)V

    return-void
.end method
