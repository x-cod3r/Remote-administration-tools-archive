.class final Landroid/support/v4/view/l;
.super Landroid/view/View$AccessibilityDelegate;


# instance fields
.field final synthetic a:Landroid/support/v4/view/m;


# direct methods
.method constructor <init>(Landroid/support/v4/view/m;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1}, Landroid/support/v4/view/m;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->a(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/m;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/m;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->a(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
