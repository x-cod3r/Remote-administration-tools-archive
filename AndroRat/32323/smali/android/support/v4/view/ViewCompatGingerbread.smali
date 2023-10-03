.class Landroid/support/v4/view/ViewCompatGingerbread;
.super Ljava/lang/Object;
.source "ViewCompatGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "mode"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 28
    return-void
.end method
