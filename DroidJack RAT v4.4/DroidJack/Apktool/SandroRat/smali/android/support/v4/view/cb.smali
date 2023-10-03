.class final Landroid/support/v4/view/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, p1, v2

    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method
