.class Landroid/support/v4/widget/o;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Object;)I
    .locals 1

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/widget/q;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/p;

    invoke-direct {v0}, Landroid/support/v4/widget/p;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 4

    const/4 v3, 0x0

    check-cast p1, Landroid/view/WindowInsets;

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 4

    const/4 v3, 0x0

    check-cast p1, Landroid/view/WindowInsets;

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_0
.end method
