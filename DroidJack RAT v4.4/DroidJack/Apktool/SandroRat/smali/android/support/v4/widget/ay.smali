.class Landroid/support/v4/widget/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/ay;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ay;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->f(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ay;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
