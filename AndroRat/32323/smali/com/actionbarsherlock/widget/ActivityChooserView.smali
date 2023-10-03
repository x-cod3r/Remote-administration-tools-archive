.class Lcom/actionbarsherlock/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;,
        Lcom/actionbarsherlock/widget/ActivityChooserView$SetActivated;
    }
.end annotation


# static fields
.field private static final IS_HONEYCOMB:Z


# instance fields
.field private final mActivityChooserContent:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field private final mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mDefaultActionButtonContentDescription:I

.field private final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field private final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field private mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field private mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

.field private final mModelDataSetOberver:Landroid/database/DataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Lcom/actionbarsherlock/view/ActionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 626
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/actionbarsherlock/widget/ActivityChooserView;->IS_HONEYCOMB:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    new-instance v4, Lcom/actionbarsherlock/widget/ActivityChooserView$1;

    invoke-direct {v4, p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$1;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V

    iput-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    .line 138
    new-instance v4, Lcom/actionbarsherlock/widget/ActivityChooserView$2;

    invoke-direct {v4, p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$2;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V

    iput-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 172
    iput v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 214
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    .line 217
    sget-object v4, Lcom/actionbarsherlock/R$styleable;->SherlockActivityChooserView:[I

    const/4 v5, 0x0

    .line 216
    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    .local v0, attributesArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 224
    const/4 v4, 0x2

    .line 223
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 226
    .local v1, expandActivityOverflowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 229
    .local v2, inflater:Landroid/view/LayoutInflater;
    sget v4, Lcom/actionbarsherlock/R$layout;->abs__activity_chooser_view:I

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 231
    new-instance v4, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;

    invoke-direct {v4, p0, v8}, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserView;Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;)V

    iput-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mCallbacks:Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;

    .line 233
    sget v4, Lcom/actionbarsherlock/R$id;->abs__activity_chooser_view_content:I

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    iput-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mActivityChooserContent:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    .line 234
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mActivityChooserContent:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    .line 236
    sget v4, Lcom/actionbarsherlock/R$id;->abs__default_activity_button:I

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 237
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mCallbacks:Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mCallbacks:Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 239
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    sget v5, Lcom/actionbarsherlock/R$id;->abs__image:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    .line 241
    sget v4, Lcom/actionbarsherlock/R$id;->abs__expand_activities_button:I

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    .line 242
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mCallbacks:Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    sget v5, Lcom/actionbarsherlock/R$id;->abs__image:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 243
    iput-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    .line 245
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    new-instance v4, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-direct {v4, p0, v8}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserView;Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;)V

    iput-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 248
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    new-instance v5, Lcom/actionbarsherlock/widget/ActivityChooserView$3;

    invoke-direct {v5, p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$3;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 257
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x2

    .line 258
    sget v5, Lcom/actionbarsherlock/R$dimen;->abs__config_prefDialogWidth:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 257
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mListPopupMaxWidth:I

    .line 259
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getListPopupWindow()Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$11()Z
    .locals 1

    .prologue
    .line 626
    sget-boolean v0, Lcom/actionbarsherlock/widget/ActivityChooserView;->IS_HONEYCOMB:Z

    return v0
.end method

.method static synthetic access$12(Lcom/actionbarsherlock/widget/ActivityChooserView;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->updateAppearance()V

    return-void
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/widget/ActivityChooserView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->showPopupUnchecked(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/widget/ActivityChooserView;)Z
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return v0
.end method

.method static synthetic access$4(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/actionbarsherlock/widget/ActivityChooserView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return-void
.end method

.method static synthetic access$8(Lcom/actionbarsherlock/widget/ActivityChooserView;)I
    .locals 1
    .parameter

    .prologue
    .line 172
    iget v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mInitialActivityCount:I

    return v0
.end method

.method static synthetic access$9(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method private getListPopupWindow()Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mListPopupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mListPopupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    .line 492
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mListPopupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 493
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mListPopupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 494
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mListPopupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setModal(Z)V

    .line 495
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mListPopupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mCallbacks:Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 496
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mListPopupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mCallbacks:Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mListPopupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    return-object v0
.end method

.method private showPopupUnchecked(I)V
    .locals 9
    .parameter "maxActivityCount"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 330
    iget-object v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v7

    if-nez v7, :cond_0

    .line 331
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No data model. Did you call #setDataModel?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iget-object v8, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 337
    iget-object v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    move v2, v5

    .line 339
    .local v2, defaultActivityButtonShown:Z
    :goto_0
    iget-object v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v0

    .line 340
    .local v0, activityCount:I
    if-eqz v2, :cond_5

    move v3, v5

    .line 341
    .local v3, maxActivityCountOffset:I
    :goto_1
    const v7, 0x7fffffff

    if-eq p1, v7, :cond_6

    .line 342
    add-int v7, p1, v3

    if-le v0, v7, :cond_6

    .line 343
    iget-object v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v5}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 344
    iget-object v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 350
    :goto_2
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getListPopupWindow()Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    move-result-object v4

    .line 351
    .local v4, popupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 352
    iget-boolean v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v7, :cond_1

    if-nez v2, :cond_7

    .line 353
    :cond_1
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v5, v2}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 357
    :goto_3
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v6

    iget v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 358
    .local v1, contentWidth:I
    invoke-virtual {v4, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setContentWidth(I)V

    .line 359
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->show()V

    .line 360
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    if-eqz v6, :cond_2

    .line 361
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    invoke-virtual {v6, v5}, Lcom/actionbarsherlock/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 363
    :cond_2
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    .line 364
    sget v7, Lcom/actionbarsherlock/R$string;->abs__activitychooserview_choose_application:I

    .line 363
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 366
    .end local v1           #contentWidth:I
    :cond_3
    return-void

    .end local v0           #activityCount:I
    .end local v2           #defaultActivityButtonShown:Z
    .end local v3           #maxActivityCountOffset:I
    .end local v4           #popupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
    :cond_4
    move v2, v6

    .line 337
    goto :goto_0

    .restart local v0       #activityCount:I
    .restart local v2       #defaultActivityButtonShown:Z
    :cond_5
    move v3, v6

    .line 340
    goto :goto_1

    .line 346
    .restart local v3       #maxActivityCountOffset:I
    :cond_6
    iget-object v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v6}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 347
    iget-object v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, p1}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_2

    .line 355
    .restart local v4       #popupWindow:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
    :cond_7
    iget-object v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v6, v6}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_3
.end method

.method private updateAppearance()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 506
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 507
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 512
    :goto_0
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v1

    .line 513
    .local v1, activityCount:I
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v3

    .line 514
    .local v3, historySize:I
    if-lez v1, :cond_2

    if-lez v3, :cond_2

    .line 515
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 516
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 517
    .local v0, activity:Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 518
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    iget v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    if-eqz v6, :cond_0

    .line 520
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 521
    .local v4, label:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    .line 522
    iget v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    .line 521
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, contentDescription:Ljava/lang/String;
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 529
    .end local v0           #activity:Landroid/content/pm/ResolveInfo;
    .end local v2           #contentDescription:Ljava/lang/String;
    .end local v4           #label:Ljava/lang/CharSequence;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 530
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mActivityChooserContent:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    iget-object v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    :goto_2
    return-void

    .line 509
    .end local v1           #activityCount:I
    .end local v3           #historySize:I
    :cond_1
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 526
    .restart local v1       #activityCount:I
    .restart local v3       #historySize:I
    :cond_2
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 532
    :cond_3
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mActivityChooserContent:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mActivityChooserContent:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v6, v9, v9, v9, v9}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setPadding(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getListPopupWindow()Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->dismiss()V

    .line 376
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 377
    .local v0, viewTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 381
    .end local v0           #viewTreeObserver:Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v0

    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getListPopupWindow()Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 396
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v0

    .line 397
    .local v0, dataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    .line 398
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 400
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 401
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 405
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 406
    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v0

    .line 407
    .local v0, dataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    .line 409
    :try_start_0
    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 415
    .local v1, viewTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 418
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 419
    return-void

    .line 410
    .end local v1           #viewTreeObserver:Landroid/view/ViewTreeObserver;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 437
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mActivityChooserContent:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->layout(IIII)V

    .line 438
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getListPopupWindow()Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getMaxActivityCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->dismissPopup()Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mActivityChooserContent:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    .line 427
    .local v0, child:Landroid/view/View;
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 429
    const/high16 v2, 0x4000

    .line 428
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 431
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/actionbarsherlock/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 432
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/actionbarsherlock/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 433
    return-void
.end method

.method public setActivityChooserModel(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V
    .locals 1
    .parameter "dataModel"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V

    .line 266
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->dismissPopup()Z

    .line 268
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->showPopup()Z

    .line 270
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 481
    iput p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    .line 482
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, contentDescription:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0
    .parameter "itemCount"

    .prologue
    .line 467
    iput p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 468
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 456
    return-void
.end method

.method public setProvider(Lcom/actionbarsherlock/view/ActionProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    .line 308
    return-void
.end method

.method public showPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-nez v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 320
    iget v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 321
    const/4 v0, 0x1

    goto :goto_0
.end method
