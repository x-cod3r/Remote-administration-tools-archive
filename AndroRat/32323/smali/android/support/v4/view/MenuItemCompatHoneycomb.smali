.class Landroid/support/v4/view/MenuItemCompatHoneycomb;
.super Ljava/lang/Object;
.source "MenuItemCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .parameter "item"
    .parameter "view"

    .prologue
    .line 31
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 0
    .parameter "item"
    .parameter "actionEnum"

    .prologue
    .line 27
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 28
    return-void
.end method
