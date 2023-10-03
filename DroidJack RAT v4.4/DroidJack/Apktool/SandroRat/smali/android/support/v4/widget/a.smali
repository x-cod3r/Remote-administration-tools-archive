.class Landroid/support/v4/widget/a;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/view/animation/Animation$AnimationListener;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, p3, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/4 v3, 0x0

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x40600000    # 3.5f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/widget/a;->b:I

    invoke-direct {p0}, Landroid/support/v4/widget/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    invoke-static {p0, v1}, Landroid/support/v4/view/at;->c(Landroid/view/View;F)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v1, Landroid/support/v4/widget/b;

    iget v4, p0, Landroid/support/v4/widget/a;->b:I

    invoke-direct {v1, p0, v4, v0}, Landroid/support/v4/widget/b;-><init>(Landroid/support/v4/widget/a;II)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {p0, v1, v4}, Landroid/support/v4/view/at;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v4, p0, Landroid/support/v4/widget/a;->b:I

    int-to-float v4, v4

    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v5, 0x1e000000

    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v1, p0, Landroid/support/v4/widget/a;->b:I

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/support/v4/widget/a;->setPadding(IIII)V

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/a;->a:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-direct {p0}, Landroid/support/v4/widget/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/a;->b:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/a;->b:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/a;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
