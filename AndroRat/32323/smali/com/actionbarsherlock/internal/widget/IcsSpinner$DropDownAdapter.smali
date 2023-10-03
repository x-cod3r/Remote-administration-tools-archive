.class Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "IcsSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 485
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 486
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 488
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 533
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 534
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 536
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 503
    invoke-virtual {p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 546
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 547
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    .line 549
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 519
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 525
    :cond_0
    return-void
.end method
