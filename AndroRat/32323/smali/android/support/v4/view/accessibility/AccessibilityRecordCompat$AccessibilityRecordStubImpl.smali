.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentItemIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getFromIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScrollX(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScrollY(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1
    .parameter "record"

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemovedCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollX(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollY(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getSource(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "record"

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/util/List;
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
    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public isFullScreen(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "record"

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0
    .parameter "record"

    .prologue
    .line 179
    return-void
.end method

.method public setAddedCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "addedCount"

    .prologue
    .line 183
    return-void
.end method

.method public setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "beforeText"

    .prologue
    .line 187
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isChecked"

    .prologue
    .line 191
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "className"

    .prologue
    .line 195
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "contentDescription"

    .prologue
    .line 199
    return-void
.end method

.method public setCurrentItemIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "currentItemIndex"

    .prologue
    .line 203
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isEnabled"

    .prologue
    .line 207
    return-void
.end method

.method public setFromIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "fromIndex"

    .prologue
    .line 211
    return-void
.end method

.method public setFullScreen(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isFullScreen"

    .prologue
    .line 215
    return-void
.end method

.method public setItemCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "itemCount"

    .prologue
    .line 219
    return-void
.end method

.method public setMaxScrollX(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "maxScrollX"

    .prologue
    .line 223
    return-void
.end method

.method public setMaxScrollY(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "maxScrollY"

    .prologue
    .line 227
    return-void
.end method

.method public setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "record"
    .parameter "parcelableData"

    .prologue
    .line 231
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isPassword"

    .prologue
    .line 235
    return-void
.end method

.method public setRemovedCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "removedCount"

    .prologue
    .line 239
    return-void
.end method

.method public setScrollX(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "scrollX"

    .prologue
    .line 243
    return-void
.end method

.method public setScrollY(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "scrollY"

    .prologue
    .line 247
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "scrollable"

    .prologue
    .line 251
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "record"
    .parameter "source"

    .prologue
    .line 255
    return-void
.end method

.method public setToIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "toIndex"

    .prologue
    .line 259
    return-void
.end method
