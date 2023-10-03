.class public Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
.super Ljava/lang/Object;
.source "IcsListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;,
        Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;,
        Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;,
        Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;,
        Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;,
        Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;
    }
.end annotation


# static fields
.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    sget v1, Lcom/actionbarsherlock/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    .line 44
    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    .line 49
    const v0, 0x7fffffff

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mListItemExpandMaximum:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptPosition:I

    .line 63
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    .line 64
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTouchInterceptor:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;

    .line 65
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mScrollListener:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;

    .line 66
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHideSelector:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 82
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 84
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/4 v1, -0x2

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    .line 44
    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    .line 49
    const v1, 0x7fffffff

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mListItemExpandMaximum:I

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptPosition:I

    .line 63
    new-instance v1, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    invoke-direct {v1, p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    .line 64
    new-instance v1, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTouchInterceptor:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;

    .line 65
    new-instance v1, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mScrollListener:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;

    .line 66
    new-instance v1, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;

    invoke-direct {v1, p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHideSelector:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 88
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mContext:Landroid/content/Context;

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 90
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 91
    .local v0, wrapped:Landroid/content/Context;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 95
    .end local v0           #wrapped:Landroid/content/Context;
    :goto_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 96
    return-void

    .line 93
    :cond_0
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mListItemExpandMaximum:I

    return v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Z
    .locals 1
    .parameter

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    return v0
.end method

.method private buildDropDown()I
    .locals 21

    .prologue
    .line 285
    const/16 v17, 0x0

    .line 287
    .local v17, otherHeights:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    if-nez v1, :cond_6

    .line 288
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mContext:Landroid/content/Context;

    .line 290
    .local v8, context:Landroid/content/Context;
    new-instance v2, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mModal:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v2, v8, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    new-instance v2, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$1;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mScrollListener:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 320
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    .line 322
    .local v9, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptView:Landroid/view/View;

    .line 323
    .local v13, hintView:Landroid/view/View;
    if-eqz v13, :cond_2

    .line 326
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 327
    .local v11, hintContainer:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 329
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 330
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    .line 329
    invoke-direct {v12, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 333
    .local v12, hintParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    .line 350
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 351
    .local v20, widthSpec:I
    const/4 v10, 0x0

    .line 352
    .local v10, heightSpec:I
    move/from16 v0, v20

    invoke-virtual {v13, v0, v10}, Landroid/view/View;->measure(II)V

    .line 354
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 355
    .restart local v12       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 356
    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 355
    add-int v17, v1, v2

    .line 358
    move-object v9, v11

    .line 361
    .end local v10           #heightSpec:I
    .end local v11           #hintContainer:Landroid/widget/LinearLayout;
    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v20           #widthSpec:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 375
    .end local v8           #context:Landroid/content/Context;
    .end local v13           #hintView:Landroid/view/View;
    :cond_3
    :goto_2
    const/16 v18, 0x0

    .line 376
    .local v18, padding:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 377
    .local v7, background:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v18, v1, v2

    .line 383
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_4

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffset:I

    .line 390
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const/4 v14, 0x1

    .line 392
    .local v14, ignoreBottomDecorations:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffset:I

    .line 391
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v14}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v16

    .line 394
    .local v16, maxHeight:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 395
    add-int v1, v16, v18

    .line 404
    :goto_4
    return v1

    .line 290
    .end local v7           #background:Landroid/graphics/drawable/Drawable;
    .end local v9           #dropDownView:Landroid/view/ViewGroup;
    .end local v14           #ignoreBottomDecorations:Z
    .end local v16           #maxHeight:I
    .end local v18           #padding:I
    .restart local v8       #context:Landroid/content/Context;
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 335
    .restart local v9       #dropDownView:Landroid/view/ViewGroup;
    .restart local v11       #hintContainer:Landroid/widget/LinearLayout;
    .restart local v12       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13       #hintView:Landroid/view/View;
    :pswitch_0
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 340
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 363
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #dropDownView:Landroid/view/ViewGroup;
    .end local v11           #hintContainer:Landroid/widget/LinearLayout;
    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #hintView:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 364
    .restart local v9       #dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 365
    .local v19, view:Landroid/view/View;
    if-eqz v19, :cond_3

    .line 367
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    .restart local v12       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 369
    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 368
    add-int v17, v1, v2

    goto/16 :goto_2

    .line 390
    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v19           #view:Landroid/view/View;
    .restart local v7       #background:Landroid/graphics/drawable/Drawable;
    .restart local v18       #padding:I
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 398
    .restart local v14       #ignoreBottomDecorations:Z
    .restart local v16       #maxHeight:I
    :cond_8
    const/4 v2, 0x0

    .line 399
    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v16, v17

    const/4 v6, -0x1

    move-object/from16 v1, p0

    .line 398
    invoke-direct/range {v1 .. v6}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->measureHeightOfChildren(IIIII)I

    move-result v15

    .line 402
    .local v15, listContent:I
    if-lez v15, :cond_9

    add-int v17, v17, v18

    .line 404
    :cond_9
    add-int v1, v15, v17

    goto :goto_4

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "ignoreBottomDecorations"

    .prologue
    const/4 v9, 0x1

    .line 408
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 409
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 411
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 412
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 414
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 415
    .local v1, bottomEdge:I
    if-eqz p3, :cond_0

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 417
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 419
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 420
    .local v3, distanceToBottom:I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 423
    .local v4, distanceToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 424
    .local v6, returnedHeight:I
    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 425
    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 426
    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 429
    :cond_1
    return v6
.end method

.method private isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureHeightOfChildren(IIIII)I
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 436
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 437
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 485
    :cond_0
    :goto_0
    return v4

    .line 441
    :cond_1
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result v7

    add-int v5, v6, v7

    .line 442
    .local v5, returnedHeight:I
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v2

    .line 445
    .local v2, dividerHeight:I
    :goto_1
    const/4 v4, 0x0

    .line 450
    .local v4, prevHeightWithoutPartialChild:I
    const/4 v6, -0x1

    if-ne p3, v6, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 p3, v6, -0x1

    .line 452
    :cond_2
    move v3, p2

    .local v3, i:I
    :goto_2
    if-le v3, p3, :cond_4

    move v4, v5

    .line 485
    goto :goto_0

    .line 442
    .end local v2           #dividerHeight:I
    .end local v3           #i:I
    .end local v4           #prevHeightWithoutPartialChild:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 453
    .restart local v2       #dividerHeight:I
    .restart local v3       #i:I
    .restart local v4       #prevHeightWithoutPartialChild:I
    :cond_4
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-interface {v6, v3, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 454
    .local v1, child:Landroid/view/View;
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getCacheColorHint()I

    move-result v6

    if-eqz v6, :cond_5

    .line 455
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getCacheColorHint()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 458
    :cond_5
    invoke-direct {p0, v1, v3, p1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->measureScrapChild(Landroid/view/View;II)V

    .line 460
    if-lez v3, :cond_6

    .line 462
    add-int/2addr v5, v2

    .line 465
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 467
    if-lt v5, p4, :cond_8

    .line 470
    if-ltz p5, :cond_7

    .line 471
    if-le v3, p5, :cond_7

    .line 472
    if-lez v4, :cond_7

    .line 473
    if-ne v5, p4, :cond_0

    :cond_7
    move v4, p4

    .line 475
    goto :goto_0

    .line 478
    :cond_8
    if-ltz p5, :cond_9

    if-lt v3, p5, :cond_9

    .line 479
    move v4, v5

    .line 452
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 489
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 490
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    .line 491
    const/4 v5, -0x2

    .line 490
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 492
    .restart local v3       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    :cond_0
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 497
    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 499
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 501
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 502
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 506
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 507
    return-void

    .line 504
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    .line 263
    .local v0, list:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 265
    const/4 v1, 0x1

    #setter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->access$0(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;Z)V

    .line 267
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->requestLayout()V

    .line 269
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 241
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 243
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 244
    check-cast v0, Landroid/view/ViewGroup;

    .line 245
    .local v0, group:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 248
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 249
    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    .line 250
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 100
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 104
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 105
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    :cond_2
    return-void

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 129
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .local v0, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 144
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    goto :goto_0
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 132
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHorizontalOffset:I

    .line 133
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 259
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .parameter "modal"

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mModal:Z

    .line 120
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 121
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 255
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    .local p1, clickListener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 152
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 115
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptPosition:I

    .line 116
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 136
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffset:I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 138
    return-void
.end method

.method public show()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x2

    const/4 v0, -0x1

    .line 155
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->buildDropDown()I

    move-result v6

    .line 157
    .local v6, height:I
    const/4 v4, 0x0

    .line 158
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 160
    .local v5, heightSpec:I
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v7

    .line 163
    .local v7, noInputMethod:Z
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 164
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v2, v0, :cond_1

    .line 167
    const/4 v4, -0x1

    .line 174
    :goto_0
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    if-ne v2, v0, :cond_7

    .line 177
    if-eqz v7, :cond_3

    move v5, v6

    .line 178
    :goto_1
    if-eqz v7, :cond_5

    .line 179
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 180
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v3, v0, :cond_4

    .line 179
    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 194
    :goto_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 196
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHorizontalOffset:I

    .line 197
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffset:I

    .line 196
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 237
    :cond_0
    :goto_4
    return-void

    .line 168
    :cond_1
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v2, v3, :cond_2

    .line 169
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 170
    goto :goto_0

    .line 171
    :cond_2
    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_3
    move v5, v0

    .line 177
    goto :goto_1

    :cond_4
    move v0, v1

    .line 181
    goto :goto_2

    .line 183
    :cond_5
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 184
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v3, v0, :cond_6

    move v1, v0

    .line 183
    :cond_6
    invoke-virtual {v2, v1, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    .line 188
    :cond_7
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_8

    .line 189
    move v5, v6

    .line 190
    goto :goto_3

    .line 191
    :cond_8
    iget v5, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    goto :goto_3

    .line 199
    :cond_9
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v1, v0, :cond_c

    .line 200
    const/4 v4, -0x1

    .line 209
    :goto_5
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    if-ne v1, v0, :cond_e

    .line 210
    const/4 v5, -0x1

    .line 219
    :goto_6
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 224
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 225
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTouchInterceptor:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 226
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 227
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffset:I

    .line 226
    invoke-virtual {v1, v2, v3, v8}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 228
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setSelection(I)V

    .line 230
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mModal:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 231
    :cond_a
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->clearListSelection()V

    .line 233
    :cond_b
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mModal:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHideSelector:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 202
    :cond_c
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v1, v3, :cond_d

    .line 203
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_5

    .line 205
    :cond_d
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_5

    .line 212
    :cond_e
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    if-ne v1, v3, :cond_f

    .line 213
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_6

    .line 215
    :cond_f
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_6
.end method
