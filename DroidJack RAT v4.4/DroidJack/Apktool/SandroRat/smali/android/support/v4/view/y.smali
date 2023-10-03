.class Landroid/support/v4/view/y;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method

.method public static a(II)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static b(I)Z
    .locals 1

    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method
