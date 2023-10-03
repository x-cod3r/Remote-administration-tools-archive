.class Landroid/support/v4/app/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/q;


# instance fields
.field final synthetic a:Landroid/support/v4/app/l;


# direct methods
.method constructor <init>(Landroid/support/v4/app/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
