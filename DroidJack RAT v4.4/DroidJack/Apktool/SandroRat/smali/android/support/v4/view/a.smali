.class public Landroid/support/v4/view/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Landroid/support/v4/view/d;

.field private static final c:Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/e;

    invoke-direct {v0}, Landroid/support/v4/view/e;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    :goto_0
    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    invoke-interface {v0}, Landroid/support/v4/view/d;->a()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/b;

    invoke-direct {v0}, Landroid/support/v4/view/b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/g;

    invoke-direct {v0}, Landroid/support/v4/view/g;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    invoke-interface {v0, p0}, Landroid/support/v4/view/d;->a(Landroid/support/v4/view/a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/support/v4/view/a/l;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/view/a/l;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/a/a;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/d;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/d;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/d;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
