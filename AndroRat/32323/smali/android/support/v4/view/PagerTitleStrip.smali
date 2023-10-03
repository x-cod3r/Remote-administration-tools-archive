.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$Decor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$1;,
        Landroid/support/v4/view/PagerTitleStrip$PageListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I = null

.field private static final SIDE_ALPHA:I = 0x99

.field private static final TAG:Ljava/lang/String; = "PagerTitleStrip"

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field private mCurrText:Landroid/widget/TextView;

.field private mLastKnownCurrentPage:I

.field private mLastKnownPositionOffset:F

.field private mNextText:Landroid/widget/TextView;

.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field private mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
        0x95t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v7, -0x1

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 49
    const/high16 v7, -0x4080

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 55
    new-instance v7, Landroid/support/v4/view/PagerTitleStrip$PageListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$1;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    .line 73
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 74
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 75
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 77
    sget-object v7, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 79
    .local v3, textAppearance:I
    if-eqz v3, :cond_0

    .line 80
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 81
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 82
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 84
    :cond_0
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 85
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 86
    .local v4, textColor:I
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .end local v4           #textColor:I
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 91
    .local v5, textSize:I
    if-eqz v5, :cond_2

    .line 92
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    int-to-float v8, v5

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    int-to-float v8, v5

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 94
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    int-to-float v8, v5

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 99
    .local v1, defaultColor:I
    const/high16 v7, -0x6700

    const v8, 0xffffff

    and-int/2addr v8, v1

    or-int v6, v7, v8

    .line 100
    .local v6, transparentColor:I
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 104
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 105
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 107
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 108
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 111
    .local v2, density:F
    const/high16 v7, 0x4180

    mul-float/2addr v7, v2

    float-to-int v7, v7

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 112
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 116
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 119
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_0

    .line 120
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, v2

    .line 124
    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 125
    .local v1, pager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 127
    .local v0, adapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 128
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 129
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 130
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 131
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 136
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 137
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 138
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 139
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IF)V

    .line 288
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 248
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 249
    .local v9, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 250
    .local v4, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 251
    .local v10, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 253
    .local v5, heightSize:I
    const/high16 v11, 0x4000

    if-eq v9, v11, :cond_0

    .line 254
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must measure with an exact width"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 257
    :cond_0
    move v1, v5

    .line 258
    .local v1, childHeight:I
    const/4 v6, 0x0

    .line 259
    .local v6, minHeight:I
    const/4 v7, 0x0

    .line 260
    .local v7, padding:I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 261
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 264
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v12

    add-int v7, v11, v12

    .line 265
    sub-int/2addr v1, v7

    .line 267
    int-to-float v11, v10

    const v12, 0x3f4ccccd

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/high16 v12, -0x8000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 269
    .local v3, childWidthSpec:I
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 271
    .local v2, childHeightSpec:I
    iget-object v11, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v11, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 272
    iget-object v11, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v11, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 273
    iget-object v11, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v11, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 275
    const/high16 v11, 0x4000

    if-ne v4, v11, :cond_2

    .line 276
    invoke-virtual {p0, v10, v5}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_2
    iget-object v11, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    .line 279
    .local v8, textHeight:I
    add-int v11, v8, v7

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_0

    .line 181
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 183
    :cond_0
    return-void
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .parameter "oldAdapter"
    .parameter "newAdapter"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 189
    :cond_0
    if-eqz p2, :cond_1

    .line 190
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 192
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 194
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 195
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 196
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 198
    :cond_2
    return-void
.end method

.method updateText(ILandroid/support/v4/view/PagerAdapter;)V
    .locals 9
    .parameter "currentItem"
    .parameter "adapter"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 142
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 143
    .local v3, itemCount:I
    :goto_0
    iput-boolean v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 145
    const/4 v4, 0x0

    .line 146
    .local v4, text:Ljava/lang/CharSequence;
    if-lt p1, v7, :cond_0

    if-eqz p2, :cond_0

    .line 147
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p2, v7}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 149
    :cond_0
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/4 v4, 0x0

    .line 154
    add-int/lit8 v7, p1, 0x1

    if-ge v7, v3, :cond_1

    if-eqz p2, :cond_1

    .line 155
    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p2, v7}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 157
    :cond_1
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 161
    .local v5, width:I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 162
    .local v0, childHeight:I
    int-to-float v7, v5

    const v8, 0x3f4ccccd

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, -0x8000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 164
    .local v2, childWidthSpec:I
    const/high16 v7, 0x4000

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 165
    .local v1, childHeightSpec:I
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 166
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 167
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 169
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 171
    iget-boolean v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v7, :cond_2

    .line 172
    iget v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, v7}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IF)V

    .line 175
    :cond_2
    iput-boolean v6, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 176
    return-void

    .end local v0           #childHeight:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childWidthSpec:I
    .end local v3           #itemCount:I
    .end local v4           #text:Ljava/lang/CharSequence;
    .end local v5           #width:I
    :cond_3
    move v3, v6

    .line 142
    goto :goto_0

    .line 151
    .restart local v3       #itemCount:I
    .restart local v4       #text:Ljava/lang/CharSequence;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method updateTextPositions(IF)V
    .locals 23
    .parameter "position"
    .parameter "positionOffset"

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 207
    :cond_0
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v16

    .line 210
    .local v16, prevWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 211
    .local v8, currWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    .line 212
    .local v11, nextWidth:I
    div-int/lit8 v9, v8, 0x2

    .line 214
    .local v9, halfCurrWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v17

    .line 215
    .local v17, stripWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v12

    .line 216
    .local v12, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v13

    .line 217
    .local v13, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v14

    .line 218
    .local v14, paddingTop:I
    add-int v18, v12, v9

    .line 219
    .local v18, textPaddedLeft:I
    add-int v19, v13, v9

    .line 220
    .local v19, textPaddedRight:I
    sub-int v20, v17, v18

    sub-int v3, v20, v19

    .line 222
    .local v3, contentWidth:I
    const/high16 v20, 0x3f00

    add-float v6, p2, v20

    .line 223
    .local v6, currOffset:F
    const/high16 v20, 0x3f80

    cmpl-float v20, v6, v20

    if-lez v20, :cond_1

    .line 224
    const/high16 v20, 0x3f80

    sub-float v6, v6, v20

    .line 226
    :cond_1
    sub-int v20, v17, v19

    int-to-float v0, v3

    move/from16 v21, v0

    mul-float v21, v21, v6

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v4, v20, v21

    .line 227
    .local v4, currCenter:I
    div-int/lit8 v20, v8, 0x2

    sub-int v5, v4, v20

    .line 228
    .local v5, currLeft:I
    add-int v7, v5, v8

    .line 230
    .local v7, currRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v21

    add-int v21, v21, v14

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v5, v14, v7, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v20, v0

    sub-int v20, v5, v20

    sub-int v20, v20, v16

    move/from16 v0, v20

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 234
    .local v15, prevLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    add-int v21, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v14

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v15, v14, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 237
    sub-int v20, v17, v13

    sub-int v20, v20, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v7

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 239
    .local v10, nextLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    add-int v21, v10, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v14

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v10, v14, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 242
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 243
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 244
    .end local v3           #contentWidth:I
    .end local v4           #currCenter:I
    .end local v5           #currLeft:I
    .end local v6           #currOffset:F
    .end local v7           #currRight:I
    .end local v8           #currWidth:I
    .end local v9           #halfCurrWidth:I
    .end local v10           #nextLeft:I
    .end local v11           #nextWidth:I
    .end local v12           #paddingLeft:I
    .end local v13           #paddingRight:I
    .end local v14           #paddingTop:I
    .end local v15           #prevLeft:I
    .end local v16           #prevWidth:I
    .end local v17           #stripWidth:I
    .end local v18           #textPaddedLeft:I
    .end local v19           #textPaddedRight:I
    :goto_0
    return-void

    .line 203
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    move/from16 v20, v0

    cmpl-float v20, p2, v20

    if-nez v20, :cond_0

    goto :goto_0
.end method
