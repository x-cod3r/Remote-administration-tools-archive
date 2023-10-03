.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddedCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 39
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    return v0
.end method

.method public static getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 43
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 47
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 51
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentItemIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 55
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v0

    return v0
.end method

.method public static getFromIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 59
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v0

    return v0
.end method

.method public static getItemCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 63
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v0

    return v0
.end method

.method public static getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1
    .parameter "record"

    .prologue
    .line 76
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static getRemovedCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 80
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v0

    return v0
.end method

.method public static getScrollX(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 84
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v0

    return v0
.end method

.method public static getScrollY(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 88
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v0

    return v0
.end method

.method public static getSource(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "record"

    .prologue
    .line 92
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "record"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getToIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 100
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v0

    return v0
.end method

.method public static getWindowId(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 104
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v0

    return v0
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 108
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 112
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isFullScreen(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 116
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 120
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v0

    return v0
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 124
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "record"

    .prologue
    .line 35
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .locals 0
    .parameter "record"

    .prologue
    .line 128
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 129
    return-void
.end method

.method public static setAddedCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "addedCount"

    .prologue
    .line 132
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 133
    return-void
.end method

.method public static setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "beforeText"

    .prologue
    .line 136
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method public static setChecked(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isChecked"

    .prologue
    .line 140
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 141
    return-void
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "className"

    .prologue
    .line 144
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public static setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "contentDescription"

    .prologue
    .line 148
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public static setCurrentItemIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "currentItemIndex"

    .prologue
    .line 152
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 153
    return-void
.end method

.method public static setEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isEnabled"

    .prologue
    .line 156
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 157
    return-void
.end method

.method public static setFromIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "fromIndex"

    .prologue
    .line 160
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 161
    return-void
.end method

.method public static setFullScreen(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isFullScreen"

    .prologue
    .line 164
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    .line 165
    return-void
.end method

.method public static setItemCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "itemCount"

    .prologue
    .line 168
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 169
    return-void
.end method

.method public static setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "record"
    .parameter "parcelableData"

    .prologue
    .line 181
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    .line 182
    return-void
.end method

.method public static setPassword(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isPassword"

    .prologue
    .line 185
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 186
    return-void
.end method

.method public static setRemovedCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "removedCount"

    .prologue
    .line 189
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 190
    return-void
.end method

.method public static setScrollX(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "scrollX"

    .prologue
    .line 193
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 194
    return-void
.end method

.method public static setScrollY(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "scrollY"

    .prologue
    .line 197
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 198
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "scrollable"

    .prologue
    .line 201
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 202
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "record"
    .parameter "source"

    .prologue
    .line 205
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 206
    return-void
.end method

.method public static setToIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "toIndex"

    .prologue
    .line 209
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 210
    return-void
.end method
