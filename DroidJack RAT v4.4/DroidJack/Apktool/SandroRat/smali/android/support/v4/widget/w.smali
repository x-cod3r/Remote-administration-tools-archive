.class Landroid/support/v4/widget/w;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;

.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field a:Z

.field private final f:[I

.field private final g:Ljava/util/ArrayList;

.field private final h:Landroid/support/v4/widget/ab;

.field private i:F

.field private j:Landroid/content/res/Resources;

.field private k:Landroid/view/View;

.field private l:Landroid/view/animation/Animation;

.field private m:F

.field private n:D

.field private o:D

.field private final p:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/w;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/widget/aa;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/aa;-><init>(Landroid/support/v4/widget/x;)V

    sput-object v0, Landroid/support/v4/widget/w;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/widget/ac;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/ac;-><init>(Landroid/support/v4/widget/x;)V

    sput-object v0, Landroid/support/v4/widget/w;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/w;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-array v0, v3, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    iput-object v0, p0, Landroid/support/v4/widget/w;->f:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/w;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/widget/z;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/z;-><init>(Landroid/support/v4/widget/w;)V

    iput-object v0, p0, Landroid/support/v4/widget/w;->p:Landroid/graphics/drawable/Drawable$Callback;

    iput-object p2, p0, Landroid/support/v4/widget/w;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/w;->j:Landroid/content/res/Resources;

    new-instance v0, Landroid/support/v4/widget/ab;

    iget-object v1, p0, Landroid/support/v4/widget/w;->p:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/ab;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    iget-object v1, p0, Landroid/support/v4/widget/w;->f:[I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ab;->a([I)V

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/w;->a(I)V

    invoke-direct {p0}, Landroid/support/v4/widget/w;->d()V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/w;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/w;->m:F

    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/w;F)F
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/w;->m:F

    return p1
.end method

.method private a(DDDDFF)V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    iget-object v1, p0, Landroid/support/v4/widget/w;->j:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double/2addr v2, p1

    iput-wide v2, p0, Landroid/support/v4/widget/w;->n:D

    float-to-double v2, v1

    mul-double/2addr v2, p3

    iput-wide v2, p0, Landroid/support/v4/widget/w;->o:D

    double-to-float v2, p7

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ab;->a(F)V

    float-to-double v2, v1

    mul-double/2addr v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/ab;->a(D)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ab;->b(I)V

    mul-float v2, p9, v1

    mul-float/2addr v1, p10

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/ab;->a(FF)V

    iget-wide v2, p0, Landroid/support/v4/widget/w;->n:D

    double-to-int v1, v2

    iget-wide v2, p0, Landroid/support/v4/widget/w;->o:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ab;->a(II)V

    return-void
.end method

.method private a(FLandroid/support/v4/widget/ab;)V
    .locals 4

    invoke-virtual {p2}, Landroid/support/v4/widget/ab;->i()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p2}, Landroid/support/v4/widget/ab;->e()F

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/widget/ab;->f()F

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/widget/ab;->e()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/ab;->b(F)V

    invoke-virtual {p2}, Landroid/support/v4/widget/ab;->i()F

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/widget/ab;->i()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/ab;->d(F)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/w;FLandroid/support/v4/widget/ab;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/w;->a(FLandroid/support/v4/widget/ab;)V

    return-void
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/w;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic c()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/w;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    new-instance v1, Landroid/support/v4/widget/x;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/widget/x;-><init>(Landroid/support/v4/widget/w;Landroid/support/v4/widget/ab;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    sget-object v2, Landroid/support/v4/widget/w;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/support/v4/widget/y;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/y;-><init>(Landroid/support/v4/widget/w;Landroid/support/v4/widget/ab;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v1, p0, Landroid/support/v4/widget/w;->l:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0}, Landroid/support/v4/widget/ab;->b()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->e(F)V

    return-void
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->b(F)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/ab;->c(F)V

    return-void
.end method

.method public a(I)V
    .locals 14

    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    if-nez p1, :cond_0

    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/w;->a(DDDDFF)V

    :goto_0
    return-void

    :cond_0
    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/w;->a(DDDDFF)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->a(Z)V

    return-void
.end method

.method public varargs a([I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->a([I)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ab;->b(I)V

    return-void
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->d(F)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->a(I)V

    return-void
.end method

.method c(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/w;->i:F

    invoke-virtual {p0}, Landroid/support/v4/widget/w;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v4/widget/w;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/w;->i:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/widget/ab;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/widget/w;->o:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/widget/w;->n:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v4/widget/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->c(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->a(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/w;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0}, Landroid/support/v4/widget/ab;->j()V

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0}, Landroid/support/v4/widget/ab;->g()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v1}, Landroid/support/v4/widget/ab;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/w;->a:Z

    iget-object v0, p0, Landroid/support/v4/widget/w;->l:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->k:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/w;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ab;->b(I)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0}, Landroid/support/v4/widget/ab;->k()V

    iget-object v0, p0, Landroid/support/v4/widget/w;->l:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x535

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->k:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/w;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/w;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/w;->c(F)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ab;->a(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ab;->b(I)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->h:Landroid/support/v4/widget/ab;

    invoke-virtual {v0}, Landroid/support/v4/widget/ab;->k()V

    return-void
.end method
