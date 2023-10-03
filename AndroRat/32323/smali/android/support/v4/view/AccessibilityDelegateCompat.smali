.class public Landroid/support/v4/view/AccessibilityDelegateCompat;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;,
        Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;,
        Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Ljava/lang/Object;

.field private static final IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;


# instance fields
.field final mBridge:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 193
    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    .line 197
    :goto_0
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    invoke-interface {v0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    .line 198
    return-void

    .line 195
    :cond_0
    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    .line 207
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "host"
    .parameter "event"

    .prologue
    .line 274
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "host"
    .parameter "event"

    .prologue
    .line 314
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 315
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .parameter "host"
    .parameter "info"

    .prologue
    .line 333
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 334
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "host"
    .parameter "event"

    .prologue
    .line 294
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 295
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "host"
    .parameter "child"
    .parameter "event"

    .prologue
    .line 357
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 2
    .parameter "host"
    .parameter "eventType"

    .prologue
    .line 231
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V

    .line 232
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "host"
    .parameter "event"

    .prologue
    .line 253
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 254
    return-void
.end method
