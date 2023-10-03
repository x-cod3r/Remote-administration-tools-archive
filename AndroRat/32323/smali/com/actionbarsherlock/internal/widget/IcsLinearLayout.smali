.class public Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;
.super Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;
.source "IcsLinearLayout.java"


# static fields
.field private static final LinearLayout_divider:I = 0x0

.field private static final LinearLayout_dividerPadding:I = 0x3

.field private static final LinearLayout_measureWithLargestChild:I = 0x1

.field private static final LinearLayout_showDividers:I = 0x2

.field private static final R_styleable_LinearLayout:[I = null

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mShowDividers:I

.field private mUseLargestChild:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->R_styleable_LinearLayout:[I

    .line 47
    return-void

    .line 21
    nop

    :array_0
    .array-data 0x4
        0x29t 0x1t 0x1t 0x1t
        0xd4t 0x2t 0x1t 0x1t
        0x29t 0x3t 0x1t 0x1t
        0x2at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    sget-object v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->R_styleable_LinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    .line 65
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mUseLargestChild:Z

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private useLargestChildHorizontal()V
    .locals 10

    .prologue
    const/high16 v9, 0x4000

    .line 328
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v1

    .line 331
    .local v1, childCount:I
    const/4 v4, 0x0

    .line 332
    .local v4, largestChildWidth:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 337
    const/4 v6, 0x0

    .line 339
    .local v6, totalWidth:I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 366
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setMeasuredDimension(II)V

    .line 367
    return-void

    .line 333
    .end local v6           #totalWidth:I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    .end local v0           #child:Landroid/view/View;
    .restart local v6       #totalWidth:I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 342
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 339
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 347
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 349
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 350
    .local v2, childExtra:F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_4

    .line 352
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 351
    invoke-virtual {v0, v7, v8}, Landroid/view/View;->measure(II)V

    .line 356
    add-int/2addr v6, v4

    .line 362
    :goto_3
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    goto :goto_2

    .line 359
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_3
.end method

.method private useLargestChildVertical()V
    .locals 10

    .prologue
    const/high16 v9, 0x4000

    .line 370
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v1

    .line 373
    .local v1, childCount:I
    const/4 v4, 0x0

    .line 374
    .local v4, largestChildHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 379
    const/4 v6, 0x0

    .line 381
    .local v6, totalHeight:I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 408
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0, v7, v6}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setMeasuredDimension(II)V

    .line 409
    return-void

    .line 375
    .end local v6           #totalHeight:I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    .end local v0           #child:Landroid/view/View;
    .restart local v6       #totalHeight:I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 384
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 381
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 389
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 391
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 392
    .local v2, childExtra:F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_4

    .line 394
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 396
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 393
    invoke-virtual {v0, v7, v8}, Landroid/view/View;->measure(II)V

    .line 398
    add-int/2addr v6, v4

    .line 404
    :goto_3
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    goto :goto_2

    .line 401
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_3
.end method


# virtual methods
.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v1

    .line 217
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 229
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 230
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, child:Landroid/view/View;
    const/4 v5, 0x0

    .line 232
    .local v5, right:I
    if-nez v0, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .line 238
    :goto_1
    invoke-virtual {p0, p1, v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 240
    .end local v0           #child:Landroid/view/View;
    .end local v5           #right:I
    :cond_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 220
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    .line 221
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 223
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v3, v6, v7

    .line 224
    .local v3, left:I
    invoke-virtual {p0, p1, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 217
    .end local v3           #left:I
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .restart local v5       #right:I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_1
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v2

    .line 190
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 202
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, child:Landroid/view/View;
    const/4 v0, 0x0

    .line 205
    .local v0, bottom:I
    if-nez v1, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 211
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 213
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    :cond_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 193
    .restart local v1       #child:Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    .line 194
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v5, v6, v7

    .line 197
    .local v5, top:I
    invoke-virtual {p0, p1, v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 190
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #top:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    .restart local v0       #bottom:I
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "canvas"
    .parameter "top"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 244
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 243
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 246
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .parameter "canvas"
    .parameter "left"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 250
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 249
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 251
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 252
    return-void
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 262
    if-nez p1, :cond_2

    .line 263
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 263
    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v3

    if-ne p1, v3, :cond_3

    .line 265
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 266
    :cond_3
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, hasVisibleViewBefore:Z
    add-int/lit8 v1, p1, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 269
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 270
    const/4 v0, 0x1

    .line 271
    goto :goto_0

    .line 268
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0           #hasVisibleViewBefore:Z
    .end local v1           #i:I
    :cond_5
    move v0, v2

    .line 276
    goto :goto_0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    const/4 v5, 0x1

    .line 150
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 151
    .local v1, index:I
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getOrientation()I

    move-result v2

    .line 152
    .local v2, orientation:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    if-ne v2, v5, :cond_2

    .line 156
    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerHeight:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 163
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 164
    .local v0, count:I
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_1

    .line 165
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    if-ne v2, v5, :cond_3

    .line 167
    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerHeight:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 173
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 174
    return-void

    .line 159
    .end local v0           #count:I
    :cond_2
    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 169
    .restart local v0       #count:I
    :cond_3
    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 180
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 185
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 186
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 311
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->onMeasure(II)V

    .line 313
    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mUseLargestChild:Z

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getOrientation()I

    move-result v0

    .line 315
    .local v0, orientation:I
    packed-switch v0, :pswitch_data_0

    .line 325
    .end local v0           #orientation:I
    :cond_0
    :goto_0
    return-void

    .line 317
    .restart local v0       #orientation:I
    :pswitch_0
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->useLargestChildHorizontal()V

    goto :goto_0

    .line 321
    :pswitch_1
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->useLargestChildVertical()V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 104
    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    .line 106
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerHeight:I

    .line 111
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setWillNotDraw(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->requestLayout()V

    goto :goto_0

    .line 108
    :cond_2
    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    .line 109
    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerHeight:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 125
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    .line 126
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mUseLargestChild:Z

    .line 307
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .parameter "showDividers"

    .prologue
    .line 79
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->requestLayout()V

    .line 81
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->invalidate()V

    .line 83
    :cond_0
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    .line 84
    return-void
.end method
