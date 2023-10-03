.class public Landroid/support/v4/view/s;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/v;

    invoke-direct {v0}, Landroid/support/v4/view/v;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/w;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/t;

    invoke-direct {v0}, Landroid/support/v4/view/t;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/w;

    goto :goto_0
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/w;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/w;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/w;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/w;->a(II)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/w;

    invoke-interface {v0, p0}, Landroid/support/v4/view/w;->a(Landroid/view/KeyEvent;)V

    return-void
.end method
