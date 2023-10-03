.class final Landroid/support/v4/widget/f;
.super Landroid/support/v4/view/a;


# instance fields
.field final synthetic b:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/f;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method
