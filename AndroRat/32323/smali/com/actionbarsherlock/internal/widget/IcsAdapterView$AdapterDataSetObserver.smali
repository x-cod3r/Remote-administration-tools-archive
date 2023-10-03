.class Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "IcsAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 808
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mDataChanged:Z

    .line 767
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mItemCount:I

    iput v1, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldItemCount:I

    .line 768
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mItemCount:I

    .line 772
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->access$0(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;Landroid/os/Parcelable;)V

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 779
    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->checkFocus()V

    .line 780
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->requestLayout()V

    .line 781
    return-void

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 785
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mDataChanged:Z

    .line 787
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    #calls: Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->access$1(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mItemCount:I

    iput v1, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldItemCount:I

    .line 795
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mItemCount:I

    .line 796
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    .line 797
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iput-wide v4, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedRowId:J

    .line 798
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedPosition:I

    .line 799
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iput-wide v4, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedRowId:J

    .line 800
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    iput-boolean v3, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNeedSync:Z

    .line 802
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->checkFocus()V

    .line 803
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->requestLayout()V

    .line 804
    return-void
.end method
