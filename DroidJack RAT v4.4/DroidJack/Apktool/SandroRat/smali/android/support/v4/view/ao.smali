.class public Landroid/support/v4/view/ao;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/aq;

    invoke-direct {v0}, Landroid/support/v4/view/aq;-><init>()V

    sput-object v0, Landroid/support/v4/view/ao;->a:Landroid/support/v4/view/ar;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/ap;

    invoke-direct {v0}, Landroid/support/v4/view/ap;-><init>()V

    sput-object v0, Landroid/support/v4/view/ao;->a:Landroid/support/v4/view/ar;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/ao;->a:Landroid/support/v4/view/ar;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ar;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/ao;->a:Landroid/support/v4/view/ar;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ar;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
