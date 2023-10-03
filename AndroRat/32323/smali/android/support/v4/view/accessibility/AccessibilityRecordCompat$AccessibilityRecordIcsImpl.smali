.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
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
    name = "AccessibilityRecordIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 272
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getAddedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 276
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 280
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 284
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 288
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getCurrentItemIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFromIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 292
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getFromIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getItemCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 296
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getItemCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollX(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScrollY(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1
    .parameter "record"

    .prologue
    .line 310
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 314
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getRemovedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollX(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 318
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollY(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 322
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSource(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "record"

    .prologue
    .line 326
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getSource(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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
    .line 330
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getText(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 334
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getToIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 338
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 342
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 346
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFullScreen(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 350
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isFullScreen(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 354
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 358
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "record"

    .prologue
    .line 268
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0
    .parameter "record"

    .prologue
    .line 362
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->recycle(Ljava/lang/Object;)V

    .line 363
    return-void
.end method

.method public setAddedCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "addedCount"

    .prologue
    .line 366
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setAddedCount(Ljava/lang/Object;I)V

    .line 367
    return-void
.end method

.method public setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "beforeText"

    .prologue
    .line 370
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isChecked"

    .prologue
    .line 374
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setChecked(Ljava/lang/Object;Z)V

    .line 375
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "className"

    .prologue
    .line 378
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 379
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "contentDescription"

    .prologue
    .line 382
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 383
    return-void
.end method

.method public setCurrentItemIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "currentItemIndex"

    .prologue
    .line 386
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setCurrentItemIndex(Ljava/lang/Object;I)V

    .line 387
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isEnabled"

    .prologue
    .line 390
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setEnabled(Ljava/lang/Object;Z)V

    .line 391
    return-void
.end method

.method public setFromIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "fromIndex"

    .prologue
    .line 394
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFromIndex(Ljava/lang/Object;I)V

    .line 395
    return-void
.end method

.method public setFullScreen(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isFullScreen"

    .prologue
    .line 398
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFullScreen(Ljava/lang/Object;Z)V

    .line 399
    return-void
.end method

.method public setItemCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "itemCount"

    .prologue
    .line 402
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setItemCount(Ljava/lang/Object;I)V

    .line 403
    return-void
.end method

.method public setMaxScrollX(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "maxScrollX"

    .prologue
    .line 408
    return-void
.end method

.method public setMaxScrollY(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "maxScrollY"

    .prologue
    .line 413
    return-void
.end method

.method public setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "record"
    .parameter "parcelableData"

    .prologue
    .line 416
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    .line 417
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isPassword"

    .prologue
    .line 420
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setPassword(Ljava/lang/Object;Z)V

    .line 421
    return-void
.end method

.method public setRemovedCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "removedCount"

    .prologue
    .line 424
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setRemovedCount(Ljava/lang/Object;I)V

    .line 425
    return-void
.end method

.method public setScrollX(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "scrollX"

    .prologue
    .line 428
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollX(Ljava/lang/Object;I)V

    .line 429
    return-void
.end method

.method public setScrollY(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "scrollY"

    .prologue
    .line 432
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollY(Ljava/lang/Object;I)V

    .line 433
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "scrollable"

    .prologue
    .line 436
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    .line 437
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "record"
    .parameter "source"

    .prologue
    .line 440
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 441
    return-void
.end method

.method public setToIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "toIndex"

    .prologue
    .line 444
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setToIndex(Ljava/lang/Object;I)V

    .line 445
    return-void
.end method
