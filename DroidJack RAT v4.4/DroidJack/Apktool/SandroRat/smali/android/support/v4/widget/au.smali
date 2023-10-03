.class Landroid/support/v4/widget/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/16 v2, 0xff

    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/w;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/w;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/w;->start()V

    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/bc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/bc;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/widget/bc;->a()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v1, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->e(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/a;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/support/v4/widget/SwipeRefreshLayout;I)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/w;->stop()V

    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->e(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;I)V

    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->f(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v1, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/au;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->g(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
