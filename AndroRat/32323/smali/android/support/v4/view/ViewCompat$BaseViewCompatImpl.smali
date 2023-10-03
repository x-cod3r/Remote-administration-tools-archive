.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1
    .parameter "v"
    .parameter "direction"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 1
    .parameter "v"
    .parameter "direction"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "v"
    .parameter "event"

    .prologue
    .line 78
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .parameter "v"
    .parameter "info"

    .prologue
    .line 81
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "v"
    .parameter "event"

    .prologue
    .line 75
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0
    .parameter "v"
    .parameter "delegate"

    .prologue
    .line 72
    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "mode"

    .prologue
    .line 69
    return-void
.end method
