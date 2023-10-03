.class Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "IcsListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "hijackFocus"

    .prologue
    .line 543
    const/4 v0, 0x0

    sget v1, Lcom/actionbarsherlock/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 544
    iput-boolean p2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 547
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
