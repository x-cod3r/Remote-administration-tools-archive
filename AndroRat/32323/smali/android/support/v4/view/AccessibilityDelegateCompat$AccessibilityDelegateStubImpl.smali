.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "delegate"
    .parameter "host"
    .parameter "event"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .locals 1
    .parameter "listener"

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "delegate"
    .parameter "host"
    .parameter "event"

    .prologue
    .line 66
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .parameter "delegate"
    .parameter "host"
    .parameter "info"

    .prologue
    .line 71
    return-void
.end method

.method public onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "delegate"
    .parameter "host"
    .parameter "event"

    .prologue
    .line 76
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "delegate"
    .parameter "host"
    .parameter "child"
    .parameter "event"

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .parameter "delegate"
    .parameter "host"
    .parameter "eventType"

    .prologue
    .line 85
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "delegate"
    .parameter "host"
    .parameter "event"

    .prologue
    .line 90
    return-void
.end method
