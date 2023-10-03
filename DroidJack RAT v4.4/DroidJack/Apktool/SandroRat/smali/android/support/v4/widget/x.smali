.class Landroid/support/v4/widget/x;
.super Landroid/view/animation/Animation;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ab;

.field final synthetic b:Landroid/support/v4/widget/w;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/w;Landroid/support/v4/widget/ab;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/w;

    iput-object p2, p0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/ab;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    const v6, 0x3f4ccccd    # 0.8f

    iget-object v0, p0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/w;

    iget-boolean v0, v0, Landroid/support/v4/widget/w;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/w;

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/ab;

    invoke-static {v0, p1, v1}, Landroid/support/v4/widget/w;->a(Landroid/support/v4/widget/w;FLandroid/support/v4/widget/ab;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v0}, Landroid/support/v4/widget/ab;->c()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget-object v4, p0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v4}, Landroid/support/v4/widget/ab;->h()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v1}, Landroid/support/v4/widget/ab;->f()F

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v2}, Landroid/support/v4/widget/ab;->e()F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v3}, Landroid/support/v4/widget/ab;->i()F

    move-result v3

    sub-float v0, v6, v0

    invoke-static {}, Landroid/support/v4/widget/w;->b()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ab;->c(F)V

    invoke-static {}, Landroid/support/v4/widget/w;->c()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ab;->b(F)V

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ab;->d(F)V

    const/high16 v0, 0x43100000    # 144.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x44340000    # 720.0f

    iget-object v2, p0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/w;

    invoke-static {v2}, Landroid/support/v4/widget/w;->a(Landroid/support/v4/widget/w;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/w;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/w;->c(F)V

    goto :goto_0
.end method
