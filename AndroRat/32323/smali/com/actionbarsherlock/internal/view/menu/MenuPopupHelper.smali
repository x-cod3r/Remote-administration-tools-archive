.class public Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;,
        Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/PopupWindow$OnDismissListener;",
        "Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;",
        "Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;"
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I


# instance fields
.field private mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/actionbarsherlock/R$layout;->abs__popup_menu_item_layout:I

    sput v0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 3
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"
    .parameter "overflowOnly"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 82
    iput-boolean p4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    .line 86
    sget v2, Lcom/actionbarsherlock/R$dimen;->abs__config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 85
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 88
    iput-object p3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 90
    invoke-virtual {p2, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 91
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    return-object v0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v8, 0x0

    .line 171
    const/4 v6, 0x0

    .line 172
    .local v6, width:I
    const/4 v4, 0x0

    .line 173
    .local v4, itemView:Landroid/view/View;
    const/4 v3, 0x0

    .line 175
    .local v3, itemType:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 177
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 178
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 179
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 192
    return v6

    .line 180
    :cond_0
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 181
    .local v5, positionType:I
    if-eq v5, v3, :cond_1

    .line 182
    move v3, v5

    .line 183
    const/4 v4, 0x0

    .line 185
    :cond_1
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_2

    .line 186
    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 188
    :cond_2
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v2, v4, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 189
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 190
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->dismiss()V

    .line 138
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;
    .locals 2
    .parameter "root"

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 224
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 274
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    .line 142
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close()V

    .line 143
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    check-cast v0, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;->removeOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V

    .line 149
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 199
    .local v0, anchor:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 206
    .end local v0           #anchor:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 201
    .restart local v0       #anchor:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 158
    .local v0, adapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;
    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$1(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    .line 159
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 304
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 8
    .parameter "subMenu"

    .prologue
    const/4 v5, 0x0

    .line 243
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 244
    new-instance v4, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    iget-object v6, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v6, p1, v7, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 245
    .local v4, subPopup:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;
    iget-object v6, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v6}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    .line 247
    const/4 v3, 0x0

    .line 248
    .local v3, preserveIconSpacing:Z
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 249
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_2

    .line 256
    :goto_1
    invoke-virtual {v4, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 258
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 259
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_0

    .line 260
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z

    .line 262
    :cond_0
    const/4 v5, 0x1

    .line 265
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #preserveIconSpacing:Z
    .end local v4           #subPopup:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;
    :cond_1
    return v5

    .line 250
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #preserveIconSpacing:Z
    .restart local v4       #subPopup:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;
    :cond_2
    invoke-virtual {p1, v2}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 251
    .local v0, childItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 252
    const/4 v3, 0x1

    .line 253
    goto :goto_1

    .line 249
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 210
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 218
    :cond_1
    check-cast p1, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    .end local p1
    invoke-interface {p1, p0}, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;->removeOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V

    .line 219
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 95
    return-void
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    .line 239
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .parameter "forceShow"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 99
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 108
    new-instance v2, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget v6, Lcom/actionbarsherlock/R$attr;->popupMenuStyle:I

    invoke-direct {v2, v4, v5, v6}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    .line 109
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 110
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-direct {v2, p0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 113
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setModal(Z)V

    .line 116
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 117
    .local v1, anchor:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 118
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v2, :cond_0

    move v0, v3

    .line 119
    .local v0, addGlobalListener:Z
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 120
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    move-object v2, v1

    .line 121
    check-cast v2, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    invoke-interface {v2, p0}, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;->addOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V

    .line 122
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 127
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v4

    iget v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setContentWidth(I)V

    .line 128
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->setInputMethodMode(I)V

    .line 129
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->show()V

    .line 130
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 131
    .end local v0           #addGlobalListener:Z
    :goto_0
    return v3

    :cond_2
    move v3, v0

    .line 124
    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .parameter "cleared"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 234
    :cond_0
    return-void
.end method
