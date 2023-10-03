.class public Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
.super Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;,
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final IS_FROYO:Z = false

.field static final MIN_CELL_SIZE:I = 0x38


# instance fields
.field private mFirst:Z

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->IS_FROYO:Z

    .line 38
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFirst:Z

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .local v0, density:F
    const/high16 v1, 0x4260

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 61
    const/high16 v1, 0x4080

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 62
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 12
    .parameter "child"
    .parameter "cellSize"
    .parameter "cellsRemaining"
    .parameter "parentHeightMeasureSpec"
    .parameter "parentHeightPadding"

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 351
    .local v7, lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v2, v10, p4

    .line 353
    .local v2, childHeightSize:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 354
    .local v1, childHeightMode:I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 356
    .local v3, childHeightSpec:I
    const/4 v0, 0x0

    .line 357
    .local v0, cellsUsed:I
    if-lez p2, :cond_0

    .line 359
    mul-int v10, p1, p2

    const/high16 v11, -0x8000

    .line 358
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 360
    .local v4, childWidthSpec:I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 362
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 363
    .local v8, measuredWidth:I
    div-int v0, v8, p1

    .line 364
    rem-int v10, v8, p1

    if-eqz v10, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 367
    .end local v4           #childWidthSpec:I
    .end local v8           #measuredWidth:I
    :cond_0
    instance-of v10, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_1

    move-object v10, p0

    .line 368
    check-cast v10, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    move-object v6, v10

    .line 369
    .local v6, itemView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;
    :goto_0
    iget-boolean v10, v7, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v10, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    .line 370
    .local v5, expandable:Z
    :goto_1
    iput-boolean v5, v7, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 372
    iput v0, v7, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 373
    mul-int v9, v0, p1

    .line 374
    .local v9, targetWidth:I
    const/high16 v10, 0x4000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0, v10, v3}, Landroid/view/View;->measure(II)V

    .line 376
    return v0

    .line 368
    .end local v5           #expandable:Z
    .end local v6           #itemView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;
    .end local v9           #targetWidth:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 369
    .restart local v6       #itemView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 125
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 126
    .local v17, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 127
    .local v37, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 129
    .local v19, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 130
    .local v36, widthPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 132
    .local v18, heightPadding:I
    sub-int v37, v37, v36

    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 136
    .local v4, cellCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 138
    .local v6, cellSizeRemaining:I
    if-nez v4, :cond_0

    .line 140
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 332
    :goto_0
    return-void

    .line 144
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 146
    .local v5, cellSize:I
    move v8, v4

    .line 147
    .local v8, cellsRemaining:I
    const/16 v25, 0x0

    .line 148
    .local v25, maxChildHeight:I
    const/16 v24, 0x0

    .line 149
    .local v24, maxCellsUsed:I
    const/4 v14, 0x0

    .line 150
    .local v14, expandableItemCount:I
    const/16 v34, 0x0

    .line 151
    .local v34, visibleItemCount:I
    const/16 v16, 0x0

    .line 154
    .local v16, hasOverflow:Z
    const-wide/16 v32, 0x0

    .line 156
    .local v32, smallestItemsAt:J
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v12

    .line 157
    .local v12, childCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    if-lt v0, v12, :cond_8

    .line 196
    if-eqz v16, :cond_10

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_10

    const/4 v10, 0x1

    .line 201
    .local v10, centerSingleExpandedItem:Z
    :goto_2
    const/16 v30, 0x0

    .line 202
    .local v30, needsExpansion:Z
    :goto_3
    if-lez v14, :cond_1

    if-gtz v8, :cond_11

    .line 256
    :cond_1
    if-nez v16, :cond_1a

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    const/16 v31, 0x1

    .line 257
    .local v31, singleItem:Z
    :goto_4
    if-lez v8, :cond_5

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_5

    .line 258
    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_2

    if-nez v31, :cond_2

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_5

    .line 259
    :cond_2
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 261
    .local v13, expandCount:F
    if-nez v31, :cond_4

    .line 263
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_3

    .line 264
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 265
    .local v23, lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_3

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    .line 267
    .end local v23           #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_3
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_4

    .line 268
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 269
    .restart local v23       #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_4

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    .line 273
    .end local v23           #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_4
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_1b

    .line 274
    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 276
    .local v15, extraPixels:I
    :goto_5
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    if-lt v0, v12, :cond_1c

    .line 309
    const/4 v8, 0x0

    .line 313
    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    :cond_5
    if-eqz v30, :cond_6

    .line 314
    sub-int v38, v19, v18

    move/from16 v0, v38

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 315
    .local v20, heightSpec:I
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-lt v0, v12, :cond_23

    .line 326
    .end local v20           #heightSpec:I
    :cond_6
    const/high16 v38, 0x4000

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_7

    .line 327
    move/from16 v19, v25

    .line 330
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 158
    .end local v10           #centerSingleExpandedItem:Z
    .end local v30           #needsExpansion:Z
    .end local v31           #singleItem:Z
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 159
    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_a

    .line 157
    :cond_9
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 161
    :cond_a
    instance-of v0, v11, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    move/from16 v22, v0

    .line 162
    .local v22, isGeneratedItem:Z
    add-int/lit8 v34, v34, 0x1

    .line 164
    if-eqz v22, :cond_b

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 170
    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 171
    .restart local v23       #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 172
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 173
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 174
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 175
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 176
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 177
    if-eqz v22, :cond_e

    move-object/from16 v38, v11

    check-cast v38, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_e

    const/16 v38, 0x1

    :goto_9
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 180
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_f

    const/4 v7, 0x1

    .line 182
    .local v7, cellsAvailable:I
    :goto_a
    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 185
    .local v9, cellsUsed:I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 186
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_c

    add-int/lit8 v14, v14, 0x1

    .line 187
    :cond_c
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_d

    const/16 v16, 0x1

    .line 189
    :cond_d
    sub-int/2addr v8, v9

    .line 190
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 191
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_9

    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_8

    .line 177
    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    :cond_e
    const/16 v38, 0x0

    goto :goto_9

    :cond_f
    move v7, v8

    .line 180
    goto :goto_a

    .line 196
    .end local v11           #child:Landroid/view/View;
    .end local v22           #isGeneratedItem:Z
    .end local v23           #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 203
    .restart local v10       #centerSingleExpandedItem:Z
    .restart local v30       #needsExpansion:Z
    :cond_11
    const v26, 0x7fffffff

    .line 204
    .local v26, minCells:I
    const-wide/16 v27, 0x0

    .line 205
    .local v27, minCellsAt:J
    const/16 v29, 0x0

    .line 206
    .local v29, minCellsItemCount:I
    const/16 v21, 0x0

    :goto_b
    move/from16 v0, v21

    if-lt v0, v12, :cond_12

    .line 225
    or-long v32, v32, v27

    .line 227
    move/from16 v0, v29

    if-gt v0, v8, :cond_1

    .line 230
    add-int/lit8 v26, v26, 0x1

    .line 232
    const/16 v21, 0x0

    :goto_c
    move/from16 v0, v21

    if-lt v0, v12, :cond_16

    .line 250
    const/16 v30, 0x1

    goto/16 :goto_3

    .line 207
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 208
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 211
    .restart local v23       #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_14

    .line 206
    :cond_13
    :goto_d
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 214
    :cond_14
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    .line 215
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 216
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v27, v0

    .line 217
    const/16 v29, 0x1

    .line 218
    goto :goto_d

    :cond_15
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 219
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v27, v27, v38

    .line 220
    add-int/lit8 v29, v29, 0x1

    goto :goto_d

    .line 233
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 234
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 235
    .restart local v23       #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v27

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_18

    .line 237
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 232
    :cond_17
    :goto_e
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_c

    .line 241
    :cond_18
    if-eqz v10, :cond_19

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_19

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_19

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 245
    :cond_19
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 246
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 247
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 256
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    :cond_1a
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 274
    .restart local v13       #expandCount:F
    .restart local v31       #singleItem:Z
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 277
    .restart local v15       #extraPixels:I
    :cond_1c
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1e

    .line 276
    :cond_1d
    :goto_f
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6

    .line 279
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 280
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 281
    .restart local v23       #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_20

    .line 283
    move-object/from16 v0, v23

    iput v15, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 284
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 285
    if-nez v21, :cond_1f

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1f

    .line 288
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 290
    :cond_1f
    const/16 v30, 0x1

    .line 291
    goto :goto_f

    :cond_20
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_21

    .line 292
    move-object/from16 v0, v23

    iput v15, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 293
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 294
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 295
    const/16 v30, 0x1

    .line 296
    goto :goto_f

    .line 300
    :cond_21
    if-eqz v21, :cond_22

    .line 301
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 303
    :cond_22
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v21

    move/from16 v1, v38

    if-eq v0, v1, :cond_1d

    .line 304
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    goto :goto_f

    .line 316
    .end local v11           #child:Landroid/view/View;
    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    .end local v23           #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v20       #heightSpec:I
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 317
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 319
    .restart local v23       #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_24

    .line 315
    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .line 321
    :cond_24
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 322
    .local v35, width:I
    const/high16 v38, 0x4000

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 500
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 475
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 477
    .local v0, params:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 478
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 483
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 488
    instance-of v1, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    .line 489
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 490
    .local v0, result:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    iget v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 491
    const/16 v1, 0x10

    iput v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 495
    .end local v0           #result:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_0
    return-object v0

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 505
    .local v0, result:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 506
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 523
    if-nez p1, :cond_1

    .line 524
    const/4 v2, 0x0

    .line 535
    :cond_0
    :goto_0
    return v2

    .line 526
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 527
    .local v1, childBefore:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 528
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .line 529
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 530
    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1           #childBefore:Landroid/view/View;
    invoke-interface {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 532
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 533
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public initialize(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 519
    return-void
.end method

.method public invokeItem(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 74
    sget-boolean v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->IS_FROYO:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 79
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 81
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 83
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 461
    invoke-super {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onDetachedFromWindow()V

    .line 462
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 463
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 90
    sget-boolean v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->IS_FROYO:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFirst:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFirst:Z

    .line 92
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 29
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 381
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v27, v0

    if-nez v27, :cond_1

    .line 382
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onLayout(ZIIII)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 387
    .local v6, childCount:I
    add-int v27, p3, p5

    div-int/lit8 v14, v27, 0x2

    .line 388
    .local v14, midVertical:I
    const/4 v7, 0x0

    .line 389
    .local v7, dividerWidth:I
    const/16 v16, 0x0

    .line 391
    .local v16, overflowWidth:I
    const/4 v15, 0x0

    .line 392
    .local v15, nonOverflowCount:I
    sub-int v27, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v28

    sub-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v28

    sub-int v26, v27, v28

    .line 393
    .local v26, widthRemaining:I
    const/4 v8, 0x0

    .line 394
    .local v8, hasOverflow:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-lt v10, v6, :cond_2

    .line 427
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_6

    if-nez v8, :cond_6

    .line 429
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 430
    .local v24, v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    .line 431
    .local v25, width:I
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 432
    .local v9, height:I
    sub-int v27, p4, p2

    div-int/lit8 v13, v27, 0x2

    .line 433
    .local v13, midHorizontal:I
    div-int/lit8 v27, v25, 0x2

    sub-int v11, v13, v27

    .line 434
    .local v11, l:I
    div-int/lit8 v27, v9, 0x2

    sub-int v23, v14, v27

    .line 435
    .local v23, t:I
    add-int v27, v11, v25

    add-int v28, v23, v9

    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 395
    .end local v9           #height:I
    .end local v11           #l:I
    .end local v13           #midHorizontal:I
    .end local v23           #t:I
    .end local v24           #v:Landroid/view/View;
    .end local v25           #width:I
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 396
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 394
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 400
    :cond_3
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 401
    .local v17, p:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 402
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 404
    add-int/lit8 v16, v16, 0x0

    .line 407
    :cond_4
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 408
    .restart local v9       #height:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, v17

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    sub-int v18, v27, v28

    .line 409
    .local v18, r:I
    sub-int v11, v18, v16

    .line 410
    .restart local v11       #l:I
    div-int/lit8 v27, v9, 0x2

    sub-int v23, v14, v27

    .line 411
    .restart local v23       #t:I
    add-int v5, v23, v9

    .line 412
    .local v5, b:I
    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 414
    sub-int v26, v26, v16

    .line 415
    const/4 v8, 0x1

    .line 416
    goto :goto_2

    .line 417
    .end local v5           #b:I
    .end local v9           #height:I
    .end local v11           #l:I
    .end local v18           #r:I
    .end local v23           #t:I
    :cond_5
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    move-object/from16 v0, v17

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, v17

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v19, v27, v28

    .line 419
    .local v19, size:I
    sub-int v26, v26, v19

    .line 423
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 439
    .end local v17           #p:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v19           #size:I
    .end local v24           #v:Landroid/view/View;
    :cond_6
    if-eqz v8, :cond_8

    const/16 v27, 0x0

    :goto_3
    sub-int v20, v15, v27

    .line 440
    .local v20, spacerCount:I
    const/16 v28, 0x0

    if-lez v20, :cond_9

    div-int v27, v26, v20

    :goto_4
    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 442
    .local v21, spacerSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v22

    .line 443
    .local v22, startLeft:I
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_0

    .line 444
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 445
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 446
    .local v12, lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    iget-boolean v0, v12, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 443
    :cond_7
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 439
    .end local v12           #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v20           #spacerCount:I
    .end local v21           #spacerSize:I
    .end local v22           #startLeft:I
    .end local v24           #v:Landroid/view/View;
    :cond_8
    const/16 v27, 0x1

    goto :goto_3

    .line 440
    .restart local v20       #spacerCount:I
    :cond_9
    const/16 v27, 0x0

    goto :goto_4

    .line 450
    .restart local v12       #lp:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v21       #spacerSize:I
    .restart local v22       #startLeft:I
    .restart local v24       #v:Landroid/view/View;
    :cond_a
    iget v0, v12, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v22, v22, v27

    .line 451
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    .line 452
    .restart local v25       #width:I
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 453
    .restart local v9       #height:I
    div-int/lit8 v27, v9, 0x2

    sub-int v23, v14, v27

    .line 454
    .restart local v23       #t:I
    add-int v27, v22, v25

    add-int v28, v23, v9

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 455
    iget v0, v12, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v27, v27, v25

    add-int v27, v27, v21

    add-int v22, v22, v27

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 102
    .local v0, wasFormatted:Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x4000

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 104
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v0, v2, :cond_0

    .line 105
    iput v4, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 110
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 111
    .local v1, widthSize:I
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v2, :cond_1

    .line 112
    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 113
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 116
    :cond_1
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_3

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 121
    :goto_1
    return-void

    .end local v1           #widthSize:I
    :cond_2
    move v2, v4

    .line 102
    goto :goto_0

    .line 119
    .restart local v1       #widthSize:I
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter "reserveOverflow"

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 471
    return-void
.end method

.method public setPresenter(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 66
    return-void
.end method
