.class final Landroid/support/v4/view/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ce;Landroid/support/v4/view/ce;)I
    .locals 2

    iget v0, p1, Landroid/support/v4/view/ce;->b:I

    iget v1, p2, Landroid/support/v4/view/ce;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/support/v4/view/ce;

    check-cast p2, Landroid/support/v4/view/ce;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ca;->a(Landroid/support/v4/view/ce;Landroid/support/v4/view/ce;)I

    move-result v0

    return v0
.end method
