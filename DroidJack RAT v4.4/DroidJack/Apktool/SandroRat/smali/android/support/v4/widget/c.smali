.class Landroid/support/v4/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->a(Landroid/support/v4/widget/ContentLoadingProgressBar;Z)Z

    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Landroid/support/v4/widget/ContentLoadingProgressBar;->a(Landroid/support/v4/widget/ContentLoadingProgressBar;J)J

    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    return-void
.end method
