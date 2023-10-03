.class Landroid/support/v4/view/ad;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;I)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
