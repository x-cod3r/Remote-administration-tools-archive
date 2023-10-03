.class Landroid/support/v4/view/bi;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method
