.class Landroid/support/v4/widget/az;
.super Landroid/view/animation/Animation;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->h(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->i(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    iget-object v2, p0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->e(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/a;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->i(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method
