.class Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;
.super Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
.source "IcsSpinner.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/widget/IcsSpinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleRes"

    .prologue
    const/4 v1, 0x0

    .line 644
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    .line 645
    invoke-direct {p0, p2, p3, v1, p4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 647
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 648
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setModal(Z)V

    .line 649
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setPromptPosition(I)V

    .line 650
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;-><init>(Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;)V

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 657
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;)Lcom/actionbarsherlock/internal/widget/IcsSpinner;
    .locals 1
    .parameter

    .prologue
    .line 640
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    return-object v0
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 661
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 662
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 663
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hintText"

    .prologue
    .line 671
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 672
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    .line 676
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getPaddingLeft()I

    move-result v2

    .line 677
    .local v2, spinnerPaddingLeft:I
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    iget v5, v5, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1

    .line 678
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getWidth()I

    move-result v4

    .line 679
    .local v4, spinnerWidth:I
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getPaddingRight()I

    move-result v3

    .line 681
    .local v3, spinnerPaddingRight:I
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 682
    sub-int v6, v4, v2

    sub-int/2addr v6, v3

    .line 680
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setContentWidth(I)V

    .line 690
    .end local v3           #spinnerPaddingRight:I
    .end local v4           #spinnerWidth:I
    :goto_0
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 691
    .local v0, background:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 692
    .local v1, bgOffset:I
    if-eqz v0, :cond_0

    .line 693
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->access$0(Lcom/actionbarsherlock/internal/widget/IcsSpinner;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 694
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->access$0(Lcom/actionbarsherlock/internal/widget/IcsSpinner;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v1, v5

    .line 696
    :cond_0
    add-int v5, v1, v2

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 697
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setInputMethodMode(I)V

    .line 698
    invoke-super {p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->show()V

    .line 699
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 700
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setSelection(I)V

    .line 701
    return-void

    .line 683
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #bgOffset:I
    :cond_1
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    iget v5, v5, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mDropDownWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 684
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getWidth()I

    move-result v4

    .line 685
    .restart local v4       #spinnerWidth:I
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getPaddingRight()I

    move-result v3

    .line 686
    .restart local v3       #spinnerPaddingRight:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_0

    .line 688
    .end local v3           #spinnerPaddingRight:I
    .end local v4           #spinnerWidth:I
    :cond_2
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    iget v5, v5, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->mDropDownWidth:I

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_0
.end method
