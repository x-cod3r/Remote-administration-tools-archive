.class public Lcom/actionbarsherlock/internal/widget/ActionBarContainer;
.super Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    sget-object v6, Lcom/actionbarsherlock/R$styleable;->SherlockActionBar:[I

    .line 60
    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 64
    const/16 v6, 0xc

    .line 63
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    instance-of v6, v6, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_0

    .line 68
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .local v2, c:Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 72
    .local v3, color:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    new-instance v6, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;

    invoke-direct {v6, v3}, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;-><init>(I)V

    iput-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 76
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v3           #color:I
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getId()I

    move-result v6

    sget v7, Lcom/actionbarsherlock/R$id;->abs__split_action_bar:I

    if-ne v6, v7, :cond_1

    .line 77
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 79
    const/4 v6, 0x3

    .line 78
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    iget-boolean v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 85
    return-void

    :cond_3
    move v4, v5

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    :cond_5
    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onFinishInflate()V

    .line 90
    sget v0, Lcom/actionbarsherlock/R$id;->abs__action_bar:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    .line 91
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 209
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onLayout(ZIIII)V

    .line 211
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    const/4 v4, 0x1

    .line 213
    .local v4, hasTabs:Z
    :goto_0
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v2

    .line 215
    .local v2, containerHeight:I
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 217
    .local v7, tabHeight:I
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v3

    .line 220
    .local v3, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-lt v5, v3, :cond_4

    .line 229
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v7}, Landroid/view/View;->layout(IIII)V

    .line 235
    .end local v2           #containerHeight:I
    .end local v3           #count:I
    .end local v5           #i:I
    .end local v7           #tabHeight:I
    :cond_0
    :goto_2
    const/4 v6, 0x0

    .line 236
    .local v6, needsInvalidate:Z
    iget-boolean v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v8, :cond_8

    .line 237
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 238
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 239
    const/4 v6, 0x1

    .line 254
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->invalidate()V

    .line 257
    :cond_2
    return-void

    .line 211
    .end local v4           #hasTabs:Z
    .end local v6           #needsInvalidate:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 221
    .restart local v2       #containerHeight:I
    .restart local v3       #count:I
    .restart local v4       #hasTabs:Z
    .restart local v5       #i:I
    .restart local v7       #tabHeight:I
    :cond_4
    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 223
    .local v1, child:Landroid/view/View;
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v1, v8, :cond_6

    .line 220
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 225
    :cond_6
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v8

    if-nez v8, :cond_5

    .line 226
    invoke-virtual {v1, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    .line 231
    .end local v1           #child:Landroid/view/View;
    .end local v3           #count:I
    .end local v5           #i:I
    :cond_7
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int v9, v2, v7

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 242
    .end local v2           #containerHeight:I
    .end local v7           #tabHeight:I
    .restart local v6       #needsInvalidate:Z
    :cond_8
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 243
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v9}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v10}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getTop()I

    move-result v10

    .line 244
    iget-object v11, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v11}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v12}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getBottom()I

    move-result v12

    .line 243
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    const/4 v6, 0x1

    .line 247
    :cond_9
    if-eqz v4, :cond_a

    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v8, :cond_1

    .line 248
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    .line 249
    iget-object v11, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 248
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    const/4 v6, 0x1

    goto :goto_3

    .line 247
    :cond_a
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onMeasure(II)V

    .line 190
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-nez v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 193
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    .line 196
    .local v0, actionBarViewHeight:I
    :goto_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 197
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 198
    .local v3, mode:I
    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_0

    .line 199
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 200
    .local v2, maxHeight:I
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v4

    .line 201
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 200
    invoke-virtual {p0, v4, v5}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 194
    .end local v0           #actionBarViewHeight:I
    .end local v2           #maxHeight:I
    .end local v3           #mode:I
    :cond_2
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v0, v4, v5

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "bg"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->invalidate()V

    .line 96
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "bg"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->invalidate()V

    .line 106
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "bg"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->invalidate()V

    .line 101
    return-void
.end method

.method public setTabContainer(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .parameter "tabView"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 148
    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 151
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 155
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .parameter "isTransitioning"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 118
    if-eqz p1, :cond_0

    const/high16 v0, 0x6

    :goto_0
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/high16 v0, 0x4

    goto :goto_0
.end method
