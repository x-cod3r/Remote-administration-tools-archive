.class Landroid/support/v4/widget/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/ae;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;IIIII)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public e(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    return v0
.end method
