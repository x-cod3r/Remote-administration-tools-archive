.class Landroid/support/v4/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/d;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/d;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-static {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->b(Landroid/support/v4/widget/ContentLoadingProgressBar;Z)Z

    iget-object v0, p0, Landroid/support/v4/widget/d;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-static {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->a(Landroid/support/v4/widget/ContentLoadingProgressBar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/widget/ContentLoadingProgressBar;->a(Landroid/support/v4/widget/ContentLoadingProgressBar;J)J

    iget-object v0, p0, Landroid/support/v4/widget/d;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
