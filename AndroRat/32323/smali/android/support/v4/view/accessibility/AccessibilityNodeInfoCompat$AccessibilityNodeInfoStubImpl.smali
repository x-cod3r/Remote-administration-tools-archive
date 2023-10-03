.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;I)V
    .locals 0
    .parameter "info"
    .parameter "action"

    .prologue
    .line 98
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "child"

    .prologue
    .line 102
    return-void
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "info"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActions(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "outBounds"

    .prologue
    .line 114
    return-void
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "outBounds"

    .prologue
    .line 118
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .parameter "info"
    .parameter "index"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .parameter "info"

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;->getParent(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .parameter "source"

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(Ljava/lang/Object;I)Z
    .locals 1
    .parameter "info"
    .parameter "action"

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 270
    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "bounds"

    .prologue
    .line 198
    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "bounds"

    .prologue
    .line 202
    return-void
.end method

.method public setCheckable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "checkable"

    .prologue
    .line 206
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "checked"

    .prologue
    .line 210
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "className"

    .prologue
    .line 214
    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "clickable"

    .prologue
    .line 218
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "contentDescription"

    .prologue
    .line 222
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "enabled"

    .prologue
    .line 226
    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "focusable"

    .prologue
    .line 230
    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "focused"

    .prologue
    .line 234
    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "longClickable"

    .prologue
    .line 238
    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "packageName"

    .prologue
    .line 242
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "parent"

    .prologue
    .line 246
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "password"

    .prologue
    .line 250
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "scrollable"

    .prologue
    .line 254
    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "selected"

    .prologue
    .line 258
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "source"

    .prologue
    .line 262
    return-void
.end method

.method public setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "text"

    .prologue
    .line 266
    return-void
.end method
