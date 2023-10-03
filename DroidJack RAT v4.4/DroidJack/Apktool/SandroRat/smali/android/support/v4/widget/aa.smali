.class Landroid/support/v4/widget/aa;
.super Landroid/view/animation/AccelerateDecelerateInterpolator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/x;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/widget/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-super {p0, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
