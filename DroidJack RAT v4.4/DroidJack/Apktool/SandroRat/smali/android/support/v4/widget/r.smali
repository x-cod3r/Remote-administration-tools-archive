.class public Landroid/support/v4/widget/r;
.super Ljava/lang/Object;


# static fields
.field private static final b:Landroid/support/v4/widget/u;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/t;

    invoke-direct {v0}, Landroid/support/v4/widget/t;-><init>()V

    sput-object v0, Landroid/support/v4/widget/r;->b:Landroid/support/v4/widget/u;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/s;

    invoke-direct {v0}, Landroid/support/v4/widget/s;-><init>()V

    sput-object v0, Landroid/support/v4/widget/r;->b:Landroid/support/v4/widget/u;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/widget/r;->b:Landroid/support/v4/widget/u;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/u;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/r;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    sget-object v0, Landroid/support/v4/widget/r;->b:Landroid/support/v4/widget/u;

    iget-object v1, p0, Landroid/support/v4/widget/r;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/u;->a(Ljava/lang/Object;II)V

    return-void
.end method

.method public a()Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/r;->b:Landroid/support/v4/widget/u;

    iget-object v1, p0, Landroid/support/v4/widget/r;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/u;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(F)Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/r;->b:Landroid/support/v4/widget/u;

    iget-object v1, p0, Landroid/support/v4/widget/r;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/u;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/r;->b:Landroid/support/v4/widget/u;

    iget-object v1, p0, Landroid/support/v4/widget/r;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/u;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    sget-object v0, Landroid/support/v4/widget/r;->b:Landroid/support/v4/widget/u;

    iget-object v1, p0, Landroid/support/v4/widget/r;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/u;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/r;->b:Landroid/support/v4/widget/u;

    iget-object v1, p0, Landroid/support/v4/widget/r;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/u;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
