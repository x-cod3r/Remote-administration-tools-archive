.class Landroid/support/v4/view/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ac;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/MotionEvent;I)I
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b(Landroid/view/MotionEvent;I)I
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Landroid/view/MotionEvent;I)F
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Landroid/view/MotionEvent;I)F
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
