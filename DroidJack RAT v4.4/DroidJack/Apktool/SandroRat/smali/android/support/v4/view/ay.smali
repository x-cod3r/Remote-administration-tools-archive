.class Landroid/support/v4/view/ay;
.super Landroid/support/v4/view/ax;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ax;-><init>()V

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    invoke-static {}, Landroid/support/v4/view/bh;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/bh;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ay;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/ay;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/bh;->a(Landroid/view/View;F)V

    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/bh;->b(Landroid/view/View;F)V

    return-void
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/bh;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/bh;->b(Landroid/view/View;)F

    move-result v0

    return v0
.end method
