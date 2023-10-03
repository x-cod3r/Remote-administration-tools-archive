.class public abstract Lcom/actionbarsherlock/internal/widget/IcsAdapterView;
.super Landroid/view/ViewGroup;
.source "IcsAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterContextMenuInfo;,
        Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterDataSetObserver;,
        Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemLongClickListener;,
        Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;,
        Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/actionbarsherlock/internal/widget/IcsAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 68
    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    .line 84
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncRowId:J

    .line 94
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mInLayout:Z

    .line 153
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedRowId:J

    .line 164
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedRowId:J

    .line 201
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mBlockLayoutRequests:Z

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    .line 84
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncRowId:J

    .line 94
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mInLayout:Z

    .line 153
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedRowId:J

    .line 164
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedRowId:J

    .line 201
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mBlockLayoutRequests:Z

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    .line 84
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncRowId:J

    .line 94
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mInLayout:Z

    .line 153
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedRowId:J

    .line 164
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedRowId:J

    .line 201
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mBlockLayoutRequests:Z

    .line 237
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 855
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemSelectedListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 859
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 860
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 861
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemSelectedListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;

    .line 862
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 861
    invoke-interface/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 864
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemSelectedListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 918
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_1

    .line 919
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 920
    .local v1, itemCount:I
    if-lez v1, :cond_1

    .line 921
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    .line 920
    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 923
    .end local v1           #itemCount:I
    :cond_1
    return v2
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 697
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    const/4 p1, 0x0

    .line 701
    :cond_0
    if-eqz p1, :cond_3

    .line 702
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->setVisibility(I)V

    .line 713
    :goto_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->onLayout(ZIIII)V

    .line 720
    :cond_1
    :goto_1
    return-void

    .line 707
    :cond_2
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 718
    :cond_4
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 425
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 438
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 466
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 451
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 928
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 678
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 679
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v5

    .line 680
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->isInFilterMode()Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v5

    .line 684
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 685
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 686
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 687
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_4
    invoke-direct {p0, v5}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->updateEmptyStatus(Z)V

    .line 689
    :cond_0
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_1
    move v1, v4

    .line 679
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_2
    move v2, v4

    .line 680
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_3
    move v3, v5

    .line 684
    goto :goto_2

    :cond_4
    move v3, v5

    .line 685
    goto :goto_3

    :cond_5
    move v5, v4

    .line 687
    goto :goto_4
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 995
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 996
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->selectionChanged()V

    .line 997
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldSelectedPosition:I

    .line 998
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOldSelectedRowId:J

    .line 1000
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 870
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 871
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 872
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    const/4 v1, 0x1

    .line 875
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 758
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 750
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 1011
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mItemCount:I

    .line 1013
    .local v2, count:I
    if-nez v2, :cond_1

    .line 1014
    const/4 v14, -0x1

    .line 1086
    :cond_0
    :goto_0
    return v14

    .line 1017
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncRowId:J

    .line 1018
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncPosition:I

    .line 1021
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 1022
    const/4 v14, -0x1

    goto :goto_0

    .line 1026
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1027
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1029
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1034
    .local v3, endTime:J
    move v5, v14

    .line 1037
    .local v5, first:I
    move v10, v14

    .line 1040
    .local v10, last:I
    const/4 v11, 0x0

    .line 1050
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1051
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_8

    .line 1052
    const/4 v14, -0x1

    goto :goto_0

    .line 1056
    :cond_3
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1057
    .local v12, rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1062
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_4

    const/4 v7, 0x1

    .line 1063
    .local v7, hitLast:Z
    :goto_1
    if-nez v5, :cond_5

    const/4 v6, 0x1

    .line 1065
    .local v6, hitFirst:Z
    :goto_2
    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    .line 1086
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :goto_3
    const/4 v14, -0x1

    goto :goto_0

    .line 1062
    .restart local v12       #rowId:J
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 1063
    .restart local v7       #hitLast:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 1070
    .restart local v6       #hitFirst:Z
    :cond_6
    if-nez v6, :cond_7

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 1072
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 1073
    move v14, v10

    .line 1075
    const/4 v11, 0x0

    .line 1055
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_8
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-lez v15, :cond_3

    goto :goto_3

    .line 1076
    .restart local v6       #hitFirst:Z
    .restart local v7       #hitLast:Z
    .restart local v12       #rowId:J
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_8

    if-nez v6, :cond_8

    .line 1078
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1079
    move v14, v5

    .line 1081
    const/4 v11, 0x1

    goto :goto_4
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 555
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 638
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 598
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 729
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 730
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 734
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 735
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v1, -0x8000

    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 608
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 254
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 320
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemLongClickListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 366
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemSelectedListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v5, -0x1

    .line 568
    move-object v3, p1

    .line 571
    .local v3, listItem:Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getChildCount()I

    move-result v0

    .line 581
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 588
    .end local v0           #childCount:I
    .end local v2           #i:I
    .end local v4           #v:Landroid/view/View;
    :goto_2
    return v5

    .line 572
    .restart local v4       #v:Landroid/view/View;
    :cond_0
    move-object v3, v4

    goto :goto_0

    .line 574
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 576
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_2

    .line 582
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v0       #childCount:I
    .restart local v2       #i:I
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 583
    iget v5, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_2

    .line 581
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 539
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 540
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 541
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 542
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 544
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 525
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 516
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 932
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mItemCount:I

    .line 933
    .local v0, count:I
    const/4 v1, 0x0

    .line 935
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 940
    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 943
    iput-boolean v5, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNeedSync:Z

    .line 947
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->findSyncPosition()I

    move-result v2

    .line 948
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 950
    invoke-virtual {p0, v2, v7}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 951
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 953
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->setNextSelectedPositionInt(I)V

    .line 954
    const/4 v1, 0x1

    .line 958
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 960
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 963
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 964
    add-int/lit8 v2, v0, -0x1

    .line 966
    :cond_1
    if-gez v2, :cond_2

    .line 967
    const/4 v2, 0x0

    .line 971
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 972
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 974
    invoke-virtual {p0, v2, v5}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 976
    :cond_3
    if-ltz v3, :cond_4

    .line 977
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->setNextSelectedPositionInt(I)V

    .line 978
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->checkSelectionChanged()V

    .line 979
    const/4 v1, 0x1

    .line 983
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 985
    iput v6, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    .line 986
    iput-wide v8, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedRowId:J

    .line 987
    iput v6, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedPosition:I

    .line 988
    iput-wide v8, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedRowId:J

    .line 989
    iput-boolean v5, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNeedSync:Z

    .line 990
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->checkSelectionChanged()V

    .line 992
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 648
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1098
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 813
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 814
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectionNotifier:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 815
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 904
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 905
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 906
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 907
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 911
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 912
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 913
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 914
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 894
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 895
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 896
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 897
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 900
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 506
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mLayoutHeight:I

    .line 507
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 880
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 883
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 885
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 886
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 887
    const/4 v1, 0x1

    .line 889
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->playSoundEffect(I)V

    .line 269
    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 276
    :cond_1
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1131
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1132
    iput-boolean v5, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNeedSync:Z

    .line 1133
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncHeight:J

    .line 1134
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1136
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1137
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncRowId:J

    .line 1138
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncPosition:I

    .line 1139
    if-eqz v1, :cond_0

    .line 1140
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSpecificTop:I

    .line 1142
    :cond_0
    iput v4, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncMode:I

    .line 1159
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1145
    :cond_2
    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1146
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1147
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1148
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncRowId:J

    .line 1152
    :goto_1
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncPosition:I

    .line 1153
    if-eqz v1, :cond_3

    .line 1154
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSpecificTop:I

    .line 1156
    :cond_3
    iput v5, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1150
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 501
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 479
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 491
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 833
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemSelectedListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 834
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectionNotifier:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 840
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;-><init>(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectionNotifier:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectionNotifier:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 849
    :cond_2
    :goto_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 850
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->sendAccessibilityEvent(I)V

    .line 852
    :cond_3
    return-void

    .line 844
    :cond_4
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->fireOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .parameter "emptyView"

    .prologue
    .line 623
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mEmptyView:Landroid/view/View;

    .line 625
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 626
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 627
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->updateEmptyStatus(Z)V

    .line 628
    return-void

    .line 626
    .end local v1           #empty:Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 653
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 654
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 656
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mDesiredFocusableState:Z

    .line 657
    if-nez p1, :cond_0

    .line 658
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 661
    :cond_0
    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 662
    return-void

    .end local v1           #empty:Z
    :cond_2
    move v1, v3

    .line 654
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_3
    move v3, v2

    .line 661
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 666
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 667
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 669
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 670
    if-eqz p1, :cond_0

    .line 671
    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mDesiredFocusableState:Z

    .line 674
    :cond_0
    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 675
    return-void

    .end local v1           #empty:Z
    :cond_2
    move v1, v3

    .line 667
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_3
    move v3, v2

    .line 674
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1116
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedPosition:I

    .line 1117
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedRowId:J

    .line 1119
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1120
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncPosition:I

    .line 1121
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSyncRowId:J

    .line 1123
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 740
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    .local p1, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 247
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 309
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    .local p1, listener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemLongClickListener;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemLongClickListener;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->setLongClickable(Z)V

    .line 312
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemLongClickListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemLongClickListener;

    .line 313
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    .local p1, listener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mOnItemSelectedListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;

    .line 363
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1106
    .local p0, this:Lcom/actionbarsherlock/internal/widget/IcsAdapterView;,"Lcom/actionbarsherlock/internal/widget/IcsAdapterView<TT;>;"
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedPosition:I

    .line 1107
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView;->mSelectedRowId:J

    .line 1108
    return-void
.end method

.method public abstract setSelection(I)V
.end method
