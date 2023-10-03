.class public Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
.super Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$HasPermanentMenuKey;,
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final mPopupPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    sget v0, Lcom/actionbarsherlock/R$layout;->abs__action_menu_layout:I

    .line 78
    sget v1, Lcom/actionbarsherlock/R$layout;->abs__action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 64
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 73
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-void
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-void
.end method

.method static synthetic access$4(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-void
.end method

.method private findViewForItem(Lcom/actionbarsherlock/view/MenuItem;)Landroid/view/View;
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 279
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 280
    .local v3, parent:Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 290
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 283
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_2

    move-object v0, v5

    .line 290
    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_3

    move-object v4, v0

    .line 286
    check-cast v4, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 283
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static reserveOverflow(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 122
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 124
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$HasPermanentMenuKey;->get(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)V
    .locals 3
    .parameter "item"
    .parameter "itemView"

    .prologue
    .line 192
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;->initialize(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;I)V

    .line 194
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .local v1, menuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    move-object v0, p2

    .line 195
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 196
    .local v0, actionItemView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 197
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 340
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 341
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .parameter "parent"
    .parameter "childIndex"

    .prologue
    .line 253
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 373
    .local v25, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 374
    .local v15, itemsSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 375
    .local v17, maxActions:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 376
    .local v26, widthLimit:I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 377
    .local v20, querySpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 379
    .local v19, parent:Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 380
    .local v22, requiredItems:I
    const/16 v21, 0x0

    .line 381
    .local v21, requestedItems:I
    const/4 v8, 0x0

    .line 382
    .local v8, firstActionWidth:I
    const/4 v10, 0x0

    .line 383
    .local v10, hasOverflow:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-lt v11, v15, :cond_3

    .line 400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 401
    if-nez v10, :cond_0

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 402
    :cond_0
    add-int/lit8 v17, v17, -0x1

    .line 404
    :cond_1
    sub-int v17, v17, v22

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 407
    .local v23, seenGroups:Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 409
    const/4 v4, 0x0

    .line 410
    .local v4, cellSize:I
    const/4 v7, 0x0

    .line 411
    .local v7, cellsRemaining:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 414
    .local v5, cellSizeRemaining:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 418
    .end local v5           #cellSizeRemaining:I
    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-lt v11, v15, :cond_7

    .line 499
    const/16 v27, 0x1

    return v27

    .line 384
    .end local v4           #cellSize:I
    .end local v7           #cellsRemaining:I
    .end local v23           #seenGroups:Landroid/util/SparseBooleanArray;
    :cond_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 385
    .local v14, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 386
    add-int/lit8 v22, v22, 0x1

    .line 392
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    invoke-virtual {v14}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 395
    const/16 v17, 0x0

    .line 383
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 387
    :cond_5
    invoke-virtual {v14}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 388
    add-int/lit8 v21, v21, 0x1

    .line 389
    goto :goto_2

    .line 390
    :cond_6
    const/4 v10, 0x1

    goto :goto_2

    .line 419
    .end local v14           #item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .restart local v4       #cellSize:I
    .restart local v7       #cellsRemaining:I
    .restart local v23       #seenGroups:Landroid/util/SparseBooleanArray;
    :cond_7
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 421
    .restart local v14       #item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_d

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 423
    .local v24, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_8

    .line 424
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 426
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 428
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 432
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 433
    .local v18, measuredWidth:I
    sub-int v26, v26, v18

    .line 434
    if-nez v8, :cond_9

    .line 435
    move/from16 v8, v18

    .line 437
    :cond_9
    invoke-virtual {v14}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 438
    .local v9, groupId:I
    if-eqz v9, :cond_a

    .line 439
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 441
    :cond_a
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 418
    .end local v9           #groupId:I
    .end local v18           #measuredWidth:I
    .end local v24           #v:Landroid/view/View;
    :cond_b
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 430
    .restart local v24       #v:Landroid/view/View;
    :cond_c
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 442
    .end local v24           #v:Landroid/view/View;
    :cond_d
    invoke-virtual {v14}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 445
    invoke-virtual {v14}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 446
    .restart local v9       #groupId:I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 447
    .local v12, inGroup:Z
    if-gtz v17, :cond_e

    if-eqz v12, :cond_16

    :cond_e
    if-lez v26, :cond_16

    .line 448
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_f

    .line 447
    if-lez v7, :cond_16

    :cond_f
    const/4 v13, 0x1

    .line 450
    .local v13, isAction:Z
    :goto_5
    if-eqz v13, :cond_13

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 452
    .restart local v24       #v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_10

    .line 453
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 455
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_17

    .line 457
    const/16 v27, 0x0

    .line 456
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 458
    .local v6, cells:I
    sub-int/2addr v7, v6

    .line 459
    if-nez v6, :cond_11

    .line 460
    const/4 v13, 0x0

    .line 465
    .end local v6           #cells:I
    :cond_11
    :goto_6
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 466
    .restart local v18       #measuredWidth:I
    sub-int v26, v26, v18

    .line 467
    if-nez v8, :cond_12

    .line 468
    move/from16 v8, v18

    .line 471
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_19

    .line 472
    if-ltz v26, :cond_18

    const/16 v27, 0x1

    :goto_7
    and-int v13, v13, v27

    .line 479
    .end local v18           #measuredWidth:I
    .end local v24           #v:Landroid/view/View;
    :cond_13
    :goto_8
    if-eqz v13, :cond_1b

    if-eqz v9, :cond_1b

    .line 480
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 494
    :cond_14
    if-eqz v13, :cond_15

    add-int/lit8 v17, v17, -0x1

    .line 496
    :cond_15
    invoke-virtual {v14, v13}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 447
    .end local v13           #isAction:Z
    :cond_16
    const/4 v13, 0x0

    goto :goto_5

    .line 463
    .restart local v13       #isAction:Z
    .restart local v24       #v:Landroid/view/View;
    :cond_17
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 472
    .restart local v18       #measuredWidth:I
    :cond_18
    const/16 v27, 0x0

    goto :goto_7

    .line 475
    :cond_19
    add-int v27, v26, v8

    if-lez v27, :cond_1a

    const/16 v27, 0x1

    :goto_9
    and-int v13, v13, v27

    goto :goto_8

    :cond_1a
    const/16 v27, 0x0

    goto :goto_9

    .line 481
    .end local v18           #measuredWidth:I
    .end local v24           #v:Landroid/view/View;
    :cond_1b
    if-eqz v12, :cond_14

    .line 483
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 484
    const/16 v16, 0x0

    .local v16, j:I
    :goto_a
    move/from16 v0, v16

    if-ge v0, v11, :cond_14

    .line 485
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 486
    .local v3, areYouMyGroupie:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1d

    .line 488
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_1c

    add-int/lit8 v17, v17, 0x1

    .line 489
    :cond_1c
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 484
    :cond_1d
    add-int/lit8 v16, v16, 0x1

    goto :goto_a
.end method

.method public getItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "item"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, actionView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    :cond_0
    instance-of v3, p2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    if-nez v3, :cond_1

    .line 176
    const/4 p2, 0x0

    .line 178
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 180
    :cond_2
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 182
    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 183
    .local v2, menuParent:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 184
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 185
    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    :cond_3
    return-object v0

    .line 180
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #menuParent:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;
    .locals 2
    .parameter "root"

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, result:Lcom/actionbarsherlock/internal/view/menu/MenuView;
    move-object v1, v0

    .line 167
    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setPresenter(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;)V

    .line 168
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 320
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 322
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 331
    :goto_0
    return v1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 327
    .local v0, popup:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 329
    goto :goto_0

    .line 331
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 352
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 7
    .parameter "context"
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, res:Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->reserveOverflow(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 91
    :cond_0
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v3, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 96
    :cond_1
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v3, :cond_2

    .line 97
    sget v3, Lcom/actionbarsherlock/R$integer;->abs__max_action_buttons:I

    invoke-static {p1, v3}, Lcom/actionbarsherlock/internal/ResourcesCompat;->getResources_getInteger(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 100
    :cond_2
    iget v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 101
    .local v2, width:I
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_4

    .line 102
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v3, :cond_3

    .line 103
    new-instance v3, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 104
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 105
    .local v1, spec:I
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3, v1, v1}, Landroid/view/View;->measure(II)V

    .line 107
    .end local v1           #spec:I
    :cond_3
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 112
    :goto_0
    iput v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 114
    const/high16 v3, 0x4260

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    .line 117
    iput-object v6, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 118
    return-void

    .line 109
    :cond_4
    iput-object v6, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 505
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    .line 506
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 137
    sget v1, Lcom/actionbarsherlock/R$integer;->abs__max_action_buttons:I

    .line 136
    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/ResourcesCompat;->getResources_getInteger(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 138
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 517
    move-object v1, p1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;

    .line 518
    .local v1, saved:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v3, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 519
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget v4, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 520
    .local v0, item:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz v0, :cond_0

    .line 521
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .line 522
    .local v2, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z

    .line 525
    .end local v0           #item:Lcom/actionbarsherlock/view/MenuItem;
    .end local v2           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 510
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 511
    .local v0, state:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 512
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .parameter "subMenu"

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v2

    .line 260
    :cond_1
    move-object v1, p1

    .line 261
    .local v1, topSubMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getParentMenu()Lcom/actionbarsherlock/view/Menu;

    move-result-object v3

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-ne v3, v4, :cond_3

    .line 264
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getItem()Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->findViewForItem(Lcom/actionbarsherlock/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, anchor:Landroid/view/View;
    if-nez v0, :cond_2

    .line 266
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 267
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 270
    :cond_2
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getItem()Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 271
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 272
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 273
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 274
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z

    .line 275
    const/4 v2, 0x1

    goto :goto_0

    .line 262
    .end local v0           #anchor:Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getParentMenu()Lcom/actionbarsherlock/view/Menu;

    move-result-object v1

    .end local v1           #topSubMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .restart local v1       #topSubMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    goto :goto_1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 529
    if-eqz p1, :cond_0

    .line 531
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .parameter "isExclusive"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 162
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .parameter "itemCount"

    .prologue
    .line 156
    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 158
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .parameter "reserveOverflow"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 153
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .parameter "width"
    .parameter "strict"

    .prologue
    .line 145
    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 146
    iput-boolean p2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 148
    return-void
.end method

.method public shouldIncludeItem(ILcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "childIndex"
    .parameter "item"

    .prologue
    .line 201
    invoke-virtual {p2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 298
    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 301
    .local v0, popup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 303
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 307
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z

    .line 311
    .end local v0           #popup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 11
    .parameter "cleared"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 206
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 208
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v8, :cond_0

    .line 209
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 210
    .local v0, actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 211
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_5

    .line 219
    .end local v0           #actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v8, :cond_7

    .line 220
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 222
    .local v5, nonActionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 223
    .local v2, hasOverflow:Z
    iget-boolean v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v8, :cond_1

    if-eqz v5, :cond_1

    .line 224
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 225
    .restart local v1       #count:I
    if-ne v1, v10, :cond_9

    .line 226
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v8

    if-eqz v8, :cond_8

    move v2, v9

    .line 232
    .end local v1           #count:I
    :cond_1
    :goto_2
    if-eqz v2, :cond_b

    .line 233
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v8, :cond_2

    .line 234
    new-instance v8, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v9, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 236
    :cond_2
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 237
    .local v6, parent:Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    if-eq v6, v8, :cond_4

    .line 238
    if-eqz v6, :cond_3

    .line 239
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    :cond_3
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v4, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 242
    .local v4, menuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .end local v4           #menuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    .end local v6           #parent:Landroid/view/ViewGroup;
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v8, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    iget-boolean v9, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 249
    return-void

    .line 212
    .end local v2           #hasOverflow:Z
    .end local v5           #nonActionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    .restart local v0       #actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v7

    .line 213
    .local v7, provider:Lcom/actionbarsherlock/view/ActionProvider;
    if-eqz v7, :cond_6

    .line 214
    invoke-virtual {v7, p0}, Lcom/actionbarsherlock/view/ActionProvider;->setSubUiVisibilityListener(Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;)V

    .line 211
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .end local v0           #actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v7           #provider:Lcom/actionbarsherlock/view/ActionProvider;
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .restart local v1       #count:I
    .restart local v2       #hasOverflow:Z
    .restart local v5       #nonActionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_8
    move v2, v10

    .line 226
    goto :goto_2

    .line 228
    :cond_9
    if-lez v1, :cond_a

    move v2, v10

    :goto_4
    goto :goto_2

    :cond_a
    move v2, v9

    goto :goto_4

    .line 244
    .end local v1           #count:I
    :cond_b
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    iget-object v9, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    if-ne v8, v9, :cond_4

    .line 245
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method
