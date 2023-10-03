.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$Decor;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I = null

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFlingDistance:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 100
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 106
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 271
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 117
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 118
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 119
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 136
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 151
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 172
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 272
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 276
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 117
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 118
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 119
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 136
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 151
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 172
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 277
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 278
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private completeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1256
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mScrolling:Z

    .line 1257
    .local v2, needPopulate:Z
    if-eqz v2, :cond_2

    .line 1259
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1260
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1261
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1262
    .local v3, oldX:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1263
    .local v4, oldY:I
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1264
    .local v5, x:I
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1265
    .local v6, y:I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1266
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1268
    :cond_1
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1270
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1271
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mScrolling:Z

    .line 1272
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 1273
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1274
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_3

    .line 1275
    const/4 v2, 0x1

    .line 1276
    iput-boolean v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 1272
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1279
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_4
    if-eqz v2, :cond_5

    .line 1280
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1282
    :cond_5
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 3
    .parameter "currentPage"
    .parameter "pageOffset"
    .parameter "velocity"
    .parameter "deltaX"

    .prologue
    .line 1563
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    if-le v1, v2, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-le v1, v2, :cond_1

    .line 1564
    if-lez p3, :cond_0

    move v0, p1

    .line 1569
    .local v0, targetPage:I
    :goto_0
    return v0

    .line 1564
    .end local v0           #targetPage:I
    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 1566
    :cond_1
    int-to-float v1, p1

    add-float/2addr v1, p2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    .restart local v0       #targetPage:I
    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1766
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1767
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1769
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1771
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1773
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 1751
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1752
    .local v2, pointerIndex:I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1753
    .local v1, pointerId:I
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1756
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1757
    .local v0, newPointerIndex:I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1758
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1759
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1760
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1763
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1756
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)V
    .locals 6
    .parameter "xpos"

    .prologue
    .line 1180
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int v3, v4, v5

    .line 1181
    .local v3, widthWithMargin:I
    div-int v2, p1, v3

    .line 1182
    .local v2, position:I
    rem-int v1, p1, v3

    .line 1183
    .local v1, offsetPixels:I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 1185
    .local v0, offset:F
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1186
    invoke-virtual {p0, v2, v0, v1}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1187
    iget-boolean v4, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v4, :cond_0

    .line 1188
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onPageScrolled did not call superclass implementation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1191
    :cond_0
    return-void
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11
    .parameter "width"
    .parameter "oldWidth"
    .parameter "margin"
    .parameter "oldMargin"

    .prologue
    const/4 v2, 0x0

    .line 1046
    add-int v10, p1, p3

    .line 1047
    .local v10, widthWithMargin:I
    if-lez p2, :cond_1

    .line 1048
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v7

    .line 1049
    .local v7, oldScrollPos:I
    add-int v8, p2, p4

    .line 1050
    .local v8, oldwwm:I
    div-int v6, v7, v8

    .line 1051
    .local v6, oldScrollItem:I
    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    .line 1052
    .local v9, scrollOffset:F
    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 1053
    .local v1, scrollPos:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1054
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 1057
    .local v5, newDuration:I
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    mul-int/2addr v3, v10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1066
    .end local v5           #newDuration:I
    .end local v6           #oldScrollItem:I
    .end local v7           #oldScrollPos:I
    .end local v8           #oldwwm:I
    .end local v9           #scrollOffset:F
    :cond_0
    :goto_0
    return-void

    .line 1060
    .end local v1           #scrollPos:I
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    mul-int v1, v0, v10

    .line 1061
    .restart local v1       #scrollPos:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 1062
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 1063
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 354
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 355
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 356
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 357
    .local v2, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 358
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 359
    add-int/lit8 v1, v1, -0x1

    .line 354
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 298
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 303
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1776
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1777
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 1788
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1924
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1926
    .local v2, focusableCount:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 1928
    .local v1, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v1, v5, :cond_1

    .line 1929
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1930
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1931
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1932
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 1933
    .local v4, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 1934
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1929
    .end local v4           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1944
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    const/high16 v5, 0x4

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1950
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1961
    :cond_3
    :goto_1
    return-void

    .line 1953
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1957
    :cond_5
    if-eqz p1, :cond_3

    .line 1958
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)V
    .locals 2
    .parameter "position"
    .parameter "index"

    .prologue
    .line 647
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 648
    .local v0, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 649
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 650
    if-gez p2, :cond_0

    .line 651
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1971
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1972
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1973
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1974
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1975
    .local v2, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 1976
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1971
    .end local v2           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1980
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 908
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 911
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 912
    .local v0, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Landroid/support/v4/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 913
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 914
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 915
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 917
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 918
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 930
    :goto_0
    return-void

    .line 920
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1865
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1866
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1868
    :cond_0
    const/4 v1, 0x0

    .line 1870
    .local v1, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1872
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 1873
    if-ne p1, v4, :cond_4

    .line 1876
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1877
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v1

    .line 1897
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1898
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 1900
    :cond_2
    return v1

    .line 1879
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1881
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1884
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1885
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_0

    .line 1887
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1890
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    .line 1892
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_0

    .line 1893
    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1895
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1652
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1668
    :goto_0
    return v4

    .line 1655
    :cond_0
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 1656
    invoke-direct {p0, v9}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1657
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 1658
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1659
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1663
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, time:J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 1664
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1665
    .local v8, ev:Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1666
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1667
    iput-wide v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 1668
    goto :goto_0

    .line 1661
    .end local v0           #time:J
    .end local v8           #ev:Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1802
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1803
    check-cast v7, Landroid/view/ViewGroup;

    .line 1804
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1805
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1806
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1808
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 1811
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1812
    .local v1, child:Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1816
    const/4 v0, 0x1

    .line 1821
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :goto_1
    return v0

    .line 1808
    .restart local v1       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1821
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 2049
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1156
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1157
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1159
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1160
    .local v0, oldX:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1161
    .local v1, oldY:I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1162
    .local v2, x:I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1164
    .local v3, y:I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1165
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1166
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)V

    .line 1170
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1177
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_0
    return-void

    .line 1176
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 660
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v9, :cond_1

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_1

    move v3, v6

    .line 661
    .local v3, needPopulate:Z
    :goto_0
    const/4 v4, -0x1

    .line 663
    .local v4, newCurrItem:I
    const/4 v2, 0x0

    .line 664
    .local v2, isUpdating:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 665
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 666
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v5

    .line 668
    .local v5, newPos:I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    .line 664
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v2           #isUpdating:Z
    .end local v3           #needPopulate:Z
    .end local v4           #newCurrItem:I
    .end local v5           #newPos:I
    :cond_1
    move v3, v7

    .line 660
    goto :goto_0

    .line 672
    .restart local v0       #i:I
    .restart local v1       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v2       #isUpdating:Z
    .restart local v3       #needPopulate:Z
    .restart local v4       #newCurrItem:I
    .restart local v5       #newPos:I
    :cond_2
    const/4 v8, -0x2

    if-ne v5, v8, :cond_4

    .line 673
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 674
    add-int/lit8 v0, v0, -0x1

    .line 676
    if-nez v2, :cond_3

    .line 677
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 678
    const/4 v2, 0x1

    .line 681
    :cond_3
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v9, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v10, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, p0, v9, v10}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 682
    const/4 v3, 0x1

    .line 684
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget v9, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v8, v9, :cond_0

    .line 686
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    .line 691
    :cond_4
    iget v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v8, v5, :cond_0

    .line 692
    iget v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v8, v9, :cond_5

    .line 694
    move v4, v5

    .line 697
    :cond_5
    iput v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 698
    const/4 v3, 0x1

    goto :goto_2

    .line 702
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5           #newPos:I
    :cond_6
    if-eqz v2, :cond_7

    .line 703
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 706
    :cond_7
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v9, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 708
    if-ltz v4, :cond_8

    .line 710
    invoke-virtual {p0, v4, v7, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 711
    const/4 v3, 0x1

    .line 713
    :cond_8
    if-eqz v3, :cond_9

    .line 714
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 715
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 717
    :cond_9
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1827
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 2022
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2023
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2024
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2025
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2026
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 2027
    .local v3, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2029
    const/4 v4, 0x1

    .line 2034
    .end local v0           #child:Landroid/view/View;
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1
    return v4

    .line 2023
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2034
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 584
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 585
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 586
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    .line 1574
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1575
    const/4 v2, 0x0

    .line 1577
    .local v2, needsInvalidate:Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v3

    .line 1578
    .local v3, overScrollMode:I
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_5

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5

    .line 1581
    :cond_0
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1583
    .local v4, restoreCount:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1585
    .local v0, height:I
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1586
    neg-int v6, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1587
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1588
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1589
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1591
    .end local v0           #height:I
    .end local v4           #restoreCount:I
    :cond_1
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1592
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1593
    .restart local v4       #restoreCount:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1594
    .local v5, width:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1595
    .restart local v0       #height:I
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 1597
    .local v1, itemCount:I
    :cond_2
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1598
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v1

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1600
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1601
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1602
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1609
    .end local v0           #height:I
    .end local v1           #itemCount:I
    .end local v4           #restoreCount:I
    .end local v5           #width:I
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1611
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1613
    :cond_4
    return-void

    .line 1605
    :cond_5
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1606
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 572
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 573
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 574
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 577
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1678
    iget-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v8, :cond_0

    .line 1679
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1682
    :cond_0
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1683
    .local v6, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v6, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1684
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v6, v8}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v8

    float-to-int v1, v8

    .line 1686
    .local v1, initialVelocity:I
    iput-boolean v10, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1687
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v8, v9

    float-to-int v5, v8

    .line 1688
    .local v5, totalDelta:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1689
    .local v4, scrollX:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int v7, v8, v9

    .line 1690
    .local v7, widthWithMargin:I
    div-int v0, v4, v7

    .line 1691
    .local v0, currentPage:I
    rem-int v8, v4, v7

    int-to-float v8, v8

    int-to-float v9, v7

    div-float v3, v8, v9

    .line 1692
    .local v3, pageOffset:F
    invoke-direct {p0, v0, v3, v1, v5}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 1693
    .local v2, nextPage:I
    invoke-virtual {p0, v2, v10, v10, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 1694
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 1696
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 1697
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1839
    const/4 v0, 0x0

    .line 1840
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1841
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1861
    :cond_0
    :goto_0
    return v0

    .line 1843
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 1844
    goto :goto_0

    .line 1846
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 1847
    goto :goto_0

    .line 1849
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1852
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1853
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1854
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1855
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1841
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 14
    .parameter "xOffset"

    .prologue
    const/4 v7, 0x0

    .line 1707
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v0, :cond_0

    .line 1708
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1711
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1712
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float v11, v0, p1

    .line 1713
    .local v11, scrollX:F
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v12

    .line 1714
    .local v12, width:I
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int v13, v12, v0

    .line 1716
    .local v13, widthWithMargin:I
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v13

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v9, v0

    .line 1717
    .local v9, leftBound:F
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, v13

    int-to-float v10, v0

    .line 1719
    .local v10, rightBound:F
    cmpg-float v0, v11, v9

    if-gez v0, :cond_2

    .line 1720
    move v11, v9

    .line 1725
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v1, v11

    int-to-float v1, v1

    sub-float v1, v11, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1726
    float-to-int v0, v11

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1727
    float-to-int v0, v11

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)V

    .line 1730
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1731
    .local v2, time:J
    iget-wide v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v4, 0x2

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1733
    .local v8, ev:Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1734
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1735
    return-void

    .line 1721
    .end local v2           #time:J
    .end local v8           #ev:Landroid/view/MotionEvent;
    :cond_2
    cmpl-float v0, v11, v10

    if-lez v0, :cond_1

    .line 1722
    move v11, v10

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2039
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2054
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 2044
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2
    .parameter "child"

    .prologue
    .line 944
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 945
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 946
    :cond_0
    const/4 v1, 0x0

    .line 950
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 948
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 950
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 4
    .parameter "child"

    .prologue
    .line 933
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 934
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 935
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 933
    .restart local v1       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 5

    .prologue
    .line 281
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 282
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 283
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 285
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 286
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 287
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    .line 288
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 289
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 290
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 291
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 293
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 294
    .local v2, density:F
    const/high16 v3, 0x41c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    .line 295
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 1747
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 955
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 957
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 1617
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1620
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1621
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1622
    .local v2, scrollX:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 1623
    .local v3, width:I
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    rem-int v1, v2, v4

    .line 1624
    .local v1, offset:I
    if-eqz v1, :cond_0

    .line 1626
    sub-int v4, v2, v1

    add-int v0, v4, v3

    .line 1627
    .local v0, left:I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1629
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1632
    .end local v0           #left:I
    .end local v1           #offset:I
    .end local v2           #scrollX:I
    .end local v3           #width:I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 1292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1295
    .local v6, action:I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1298
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1299
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1300
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1301
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1302
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1305
    :cond_1
    const/4 v0, 0x0

    .line 1415
    :goto_0
    return v0

    .line 1310
    :cond_2
    if-eqz v6, :cond_4

    .line 1311
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 1313
    const/4 v0, 0x1

    goto :goto_0

    .line 1315
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_4

    .line 1317
    const/4 v0, 0x0

    goto :goto_0

    .line 1321
    :cond_4
    sparse-switch v6, :sswitch_data_0

    .line 1402
    :cond_5
    :goto_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_7

    .line 1405
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1406
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1408
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1415
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1332
    :sswitch_0
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1333
    .local v7, activePointerId:I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    .line 1338
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1339
    .local v9, pointerIndex:I
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1340
    .local v10, x:F
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1341
    .local v8, dx:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1342
    .local v11, xDiff:F
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1343
    .local v12, y:F
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1346
    .local v13, yDiff:F
    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1348
    iput v10, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iput v10, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 1349
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1350
    const/4 v0, 0x0

    goto :goto_0

    .line 1352
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_9

    cmpl-float v0, v11, v13

    if-lez v0, :cond_9

    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1355
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1356
    iput v10, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1357
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 1359
    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_5

    .line 1365
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_1

    .line 1376
    .end local v7           #activePointerId:I
    .end local v8           #dx:F
    .end local v9           #pointerIndex:I
    .end local v10           #x:F
    .end local v11           #xDiff:F
    .end local v12           #y:F
    .end local v13           #yDiff:F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1378
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1380
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1383
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1384
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1386
    :cond_a
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 1387
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1388
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 1398
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1321
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1070
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1071
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1072
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    .line 1075
    .local v5, count:I
    sub-int v19, p4, p2

    .line 1076
    .local v19, width:I
    sub-int v7, p5, p3

    .line 1077
    .local v7, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v14

    .line 1078
    .local v14, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v16

    .line 1079
    .local v16, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v15

    .line 1080
    .local v15, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v13

    .line 1081
    .local v13, paddingBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v17

    .line 1083
    .local v17, scrollX:I
    const/4 v6, 0x0

    .line 1085
    .local v6, decorCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v5, :cond_2

    .line 1086
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1087
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 1088
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1090
    .local v12, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    const/4 v3, 0x0

    .line 1091
    .local v3, childLeft:I
    const/4 v4, 0x0

    .line 1092
    .local v4, childTop:I
    iget-boolean v0, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1093
    iget v0, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v20, v0

    and-int/lit8 v8, v20, 0x7

    .line 1094
    .local v8, hgrav:I
    iget v0, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v20, v0

    and-int/lit8 v18, v20, 0x70

    .line 1095
    .local v18, vgrav:I
    packed-switch v8, :pswitch_data_0

    .line 1097
    :pswitch_0
    move v3, v14

    .line 1112
    :goto_1
    sparse-switch v18, :sswitch_data_0

    .line 1114
    move/from16 v4, v16

    .line 1129
    :goto_2
    add-int v3, v3, v17

    .line 1130
    add-int/lit8 v6, v6, 0x1

    .line 1131
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v20, v20, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v21, v21, v4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1085
    .end local v3           #childLeft:I
    .end local v4           #childTop:I
    .end local v8           #hgrav:I
    .end local v12           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v18           #vgrav:I
    :cond_0
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1100
    .restart local v3       #childLeft:I
    .restart local v4       #childTop:I
    .restart local v8       #hgrav:I
    .restart local v12       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v18       #vgrav:I
    :pswitch_1
    move v3, v14

    .line 1101
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v14, v14, v20

    .line 1102
    goto :goto_1

    .line 1104
    :pswitch_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v20, v19, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1106
    goto :goto_1

    .line 1108
    :pswitch_3
    sub-int v20, v19, v15

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v3, v20, v21

    .line 1109
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v15, v15, v20

    goto :goto_1

    .line 1117
    :sswitch_0
    move/from16 v4, v16

    .line 1118
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v16, v16, v20

    .line 1119
    goto :goto_2

    .line 1121
    :sswitch_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    sub-int v20, v7, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1123
    goto :goto_2

    .line 1125
    :sswitch_2
    sub-int v20, v7, v13

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v20, v21

    .line 1126
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v13, v13, v20

    goto :goto_2

    .line 1134
    .end local v8           #hgrav:I
    .end local v18           #vgrav:I
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v10

    .local v10, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v10, :cond_0

    .line 1135
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move/from16 v20, v0

    add-int v20, v20, v19

    iget v0, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v21, v0

    mul-int v11, v20, v21

    .line 1136
    .local v11, loff:I
    add-int v3, v14, v11

    .line 1137
    move/from16 v4, v16

    .line 1141
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v20, v20, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v21, v21, v4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 1147
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childLeft:I
    .end local v4           #childTop:I
    .end local v10           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v11           #loff:I
    .end local v12           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    .line 1148
    sub-int v20, v7, v13

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 1149
    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    .line 1150
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1151
    return-void

    .line 1095
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1112
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 966
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 970
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v18

    sub-int v5, v17, v18

    .line 971
    .local v5, childWidthSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v18

    sub-int v4, v17, v18

    .line 978
    .local v4, childHeightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v13

    .line 979
    .local v13, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v13, :cond_8

    .line 980
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 981
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 982
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 983
    .local v12, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v12, :cond_3

    iget-boolean v0, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 984
    iget v0, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v17, v0

    and-int/lit8 v10, v17, 0x7

    .line 985
    .local v10, hgrav:I
    iget v0, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v17, v0

    and-int/lit8 v14, v17, 0x70

    .line 986
    .local v14, vgrav:I
    const-string v17, "ViewPager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "gravity: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " hgrav: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " vgrav: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/high16 v15, -0x8000

    .line 988
    .local v15, widthMode:I
    const/high16 v8, -0x8000

    .line 989
    .local v8, heightMode:I
    const/16 v17, 0x30

    move/from16 v0, v17

    if-eq v14, v0, :cond_0

    const/16 v17, 0x50

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    :cond_0
    const/4 v7, 0x1

    .line 990
    .local v7, consumeVertical:Z
    :goto_1
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v10, v0, :cond_1

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v10, v0, :cond_5

    :cond_1
    const/4 v6, 0x1

    .line 992
    .local v6, consumeHorizontal:Z
    :goto_2
    if-eqz v7, :cond_6

    .line 993
    const/high16 v15, 0x4000

    .line 998
    :cond_2
    :goto_3
    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 999
    .local v16, widthSpec:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1000
    .local v9, heightSpec:I
    move/from16 v0, v16

    invoke-virtual {v3, v0, v9}, Landroid/view/View;->measure(II)V

    .line 1002
    if-eqz v7, :cond_7

    .line 1003
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v4, v4, v17

    .line 979
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSpec:I
    .end local v10           #hgrav:I
    .end local v12           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v14           #vgrav:I
    .end local v15           #widthMode:I
    .end local v16           #widthSpec:I
    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 989
    .restart local v8       #heightMode:I
    .restart local v10       #hgrav:I
    .restart local v12       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v14       #vgrav:I
    .restart local v15       #widthMode:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 990
    .restart local v7       #consumeVertical:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 994
    .restart local v6       #consumeHorizontal:Z
    :cond_6
    if-eqz v6, :cond_2

    .line 995
    const/high16 v8, 0x4000

    goto :goto_3

    .line 1004
    .restart local v9       #heightSpec:I
    .restart local v16       #widthSpec:I
    :cond_7
    if-eqz v6, :cond_3

    .line 1005
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v5, v5, v17

    goto :goto_4

    .line 1011
    .end local v3           #child:Landroid/view/View;
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSpec:I
    .end local v10           #hgrav:I
    .end local v12           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v14           #vgrav:I
    .end local v15           #widthMode:I
    .end local v16           #widthSpec:I
    :cond_8
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1012
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1015
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1016
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1017
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1020
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v13

    .line 1021
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v13, :cond_b

    .line 1022
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1023
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 1027
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1028
    .restart local v12       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v12, :cond_9

    iget-boolean v0, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 1029
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1021
    .end local v12           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1033
    .end local v3           #child:Landroid/view/View;
    :cond_b
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 16
    .parameter "position"
    .parameter "offset"
    .parameter "offsetPixels"

    .prologue
    .line 1207
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    if-lez v14, :cond_2

    .line 1208
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1209
    .local v12, scrollX:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v10

    .line 1210
    .local v10, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v11

    .line 1211
    .local v11, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v13

    .line 1212
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1213
    .local v4, childCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1214
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1215
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1216
    .local v9, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v14, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v14, :cond_1

    .line 1213
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1218
    :cond_1
    iget v14, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v14, 0x7

    .line 1219
    .local v7, hgrav:I
    const/4 v5, 0x0

    .line 1220
    .local v5, childLeft:I
    packed-switch v7, :pswitch_data_0

    .line 1222
    :pswitch_0
    move v5, v10

    .line 1237
    :goto_2
    add-int/2addr v5, v12

    .line 1239
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v6, v5, v14

    .line 1240
    .local v6, childOffset:I
    if-eqz v6, :cond_0

    .line 1241
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1225
    .end local v6           #childOffset:I
    :pswitch_1
    move v5, v10

    .line 1226
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v10, v14

    .line 1227
    goto :goto_2

    .line 1229
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v13, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1231
    goto :goto_2

    .line 1233
    :pswitch_3
    sub-int v14, v13, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v5, v14, v15

    .line 1234
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v11, v14

    goto :goto_2

    .line 1246
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCount:I
    .end local v5           #childLeft:I
    .end local v7           #hgrav:I
    .end local v8           #i:I
    .end local v9           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v10           #paddingLeft:I
    .end local v11           #paddingRight:I
    .end local v12           #scrollX:I
    .end local v13           #width:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v14, :cond_3

    .line 1247
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1249
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v14, :cond_4

    .line 1250
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1252
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1253
    return-void

    .line 1220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1991
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1992
    .local v1, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1993
    const/4 v6, 0x0

    .line 1994
    .local v6, index:I
    const/4 v5, 0x1

    .line 1995
    .local v5, increment:I
    move v2, v1

    .line 2001
    .local v2, end:I
    :goto_0
    move v3, v6

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2002
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2003
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2004
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2005
    .local v4, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2006
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2007
    const/4 v7, 0x1

    .line 2012
    .end local v0           #child:Landroid/view/View;
    .end local v4           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_2
    return v7

    .line 1997
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 1998
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 1999
    .restart local v5       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 2001
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2012
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 888
    instance-of v1, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 889
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 904
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 893
    check-cast v0, Landroid/support/v4/view/ViewPager$SavedState;

    .line 894
    .local v0, ss:Landroid/support/v4/view/ViewPager$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 896
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 897
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 898
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 900
    :cond_1
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 901
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 902
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 877
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 878
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 879
    .local v0, ss:Landroid/support/v4/view/ViewPager$SavedState;
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iput v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 880
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 881
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 883
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1037
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1040
    if-eq p1, p3, :cond_0

    .line 1041
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1043
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .parameter "ev"

    .prologue
    .line 1420
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1424
    const/16 v28, 0x1

    .line 1558
    :goto_0
    return v28

    .line 1427
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v28

    if-eqz v28, :cond_1

    .line 1430
    const/16 v28, 0x0

    goto :goto_0

    .line 1433
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v28

    if-nez v28, :cond_3

    .line 1435
    :cond_2
    const/16 v28, 0x0

    goto :goto_0

    .line 1438
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    if-nez v28, :cond_4

    .line 1439
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1441
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1443
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1444
    .local v4, action:I
    const/4 v12, 0x0

    .line 1446
    .local v12, needsInvalidate:Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_0

    .line 1555
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v12, :cond_6

    .line 1556
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1558
    :cond_6
    const/16 v28, 0x1

    goto :goto_0

    .line 1452
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 1455
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1456
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1460
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    .line 1461
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v17

    .line 1462
    .local v17, pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 1463
    .local v24, x:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v28, v0

    sub-float v28, v24, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v25

    .line 1464
    .local v25, xDiff:F
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 1465
    .local v26, y:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    move/from16 v28, v0

    sub-float v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v27

    .line 1467
    .local v27, yDiff:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v25, v28

    if-lez v28, :cond_7

    cmpl-float v28, v25, v27

    if-lez v28, :cond_7

    .line 1469
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1470
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1471
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1472
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1475
    .end local v17           #pointerIndex:I
    .end local v24           #x:F
    .end local v25           #xDiff:F
    .end local v26           #y:F
    .end local v27           #yDiff:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1477
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1479
    .local v5, activePointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 1480
    .restart local v24       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v28, v0

    sub-float v7, v28, v24

    .line 1481
    .local v7, deltaX:F
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1482
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v28

    move/from16 v0, v28

    int-to-float v14, v0

    .line 1483
    .local v14, oldScrollX:F
    add-float v19, v14, v7

    .line 1484
    .local v19, scrollX:F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v22

    .line 1485
    .local v22, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move/from16 v28, v0

    add-int v23, v22, v28

    .line 1487
    .local v23, widthWithMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v28

    add-int/lit8 v10, v28, -0x1

    .line 1488
    .local v10, lastItemIndex:I
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    mul-int v29, v29, v23

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v28

    int-to-float v11, v0

    .line 1489
    .local v11, leftBound:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v28

    mul-int v28, v28, v23

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1491
    .local v18, rightBound:F
    cmpg-float v28, v19, v11

    if-gez v28, :cond_a

    .line 1492
    const/16 v28, 0x0

    cmpl-float v28, v11, v28

    if-nez v28, :cond_8

    .line 1493
    move/from16 v0, v19

    neg-float v15, v0

    .line 1494
    .local v15, over:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v15, v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v12

    .line 1496
    .end local v15           #over:F
    :cond_8
    move/from16 v19, v11

    .line 1505
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v28, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v29, v19, v29

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1506
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1507
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)V

    goto/16 :goto_1

    .line 1497
    :cond_a
    cmpl-float v28, v19, v18

    if-lez v28, :cond_9

    .line 1498
    mul-int v28, v10, v23

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v18, v28

    if-nez v28, :cond_b

    .line 1499
    sub-float v15, v19, v18

    .line 1500
    .restart local v15       #over:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v15, v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v12

    .line 1502
    .end local v15           #over:F
    :cond_b
    move/from16 v19, v18

    goto :goto_2

    .line 1511
    .end local v5           #activePointerIndex:I
    .end local v7           #deltaX:F
    .end local v10           #lastItemIndex:I
    .end local v11           #leftBound:F
    .end local v14           #oldScrollX:F
    .end local v18           #rightBound:F
    .end local v19           #scrollX:F
    .end local v22           #width:I
    .end local v23           #widthWithMargin:I
    .end local v24           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    .line 1513
    .local v21, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v28, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1514
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v9, v0

    .line 1516
    .local v9, initialVelocity:I
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1517
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move/from16 v29, v0

    add-int v23, v28, v29

    .line 1518
    .restart local v23       #widthWithMargin:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v19

    .line 1519
    .local v19, scrollX:I
    div-int v6, v19, v23

    .line 1520
    .local v6, currentPage:I
    rem-int v28, v19, v23

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v16, v28, v29

    .line 1521
    .local v16, pageOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1523
    .restart local v5       #activePointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 1524
    .restart local v24       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v28, v0

    sub-float v28, v24, v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1525
    .local v20, totalDelta:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-direct {v0, v6, v1, v9, v2}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v13

    .line 1527
    .local v13, nextPage:I
    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v13, v1, v2, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 1529
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1530
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v29

    or-int v12, v28, v29

    .line 1532
    goto/16 :goto_1

    .line 1535
    .end local v5           #activePointerIndex:I
    .end local v6           #currentPage:I
    .end local v9           #initialVelocity:I
    .end local v13           #nextPage:I
    .end local v16           #pageOffset:F
    .end local v19           #scrollX:I
    .end local v20           #totalDelta:I
    .end local v21           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v23           #widthWithMargin:I
    .end local v24           #x:F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1536
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v28, v0

    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1537
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1538
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v29

    or-int v12, v28, v29

    goto/16 :goto_1

    .line 1543
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 1544
    .local v8, index:I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 1545
    .restart local v24       #x:F
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1546
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1550
    .end local v8           #index:I
    .end local v24           #x:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1551
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1904
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 1905
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1912
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1913
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1916
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 720
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v10, :cond_1

    .line 821
    :cond_0
    return-void

    .line 728
    :cond_1
    iget-boolean v10, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    if-nez v10, :cond_0

    .line 736
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 740
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v10, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 742
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 743
    .local v8, pageLimit:I
    const/4 v10, 0x0

    iget v13, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 744
    .local v9, startPos:I
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v10}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 745
    .local v0, N:I
    add-int/lit8 v10, v0, -0x1

    iget v13, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 750
    .local v4, endPos:I
    const/4 v7, -0x1

    .line 751
    .local v7, lastPos:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 752
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 753
    .local v6, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v10, v9, :cond_2

    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v10, v4, :cond_4

    :cond_2
    iget-boolean v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_4

    .line 755
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 756
    add-int/lit8 v5, v5, -0x1

    .line 757
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v13, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v14, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v13, v14}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 773
    :cond_3
    iget v7, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 751
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 758
    :cond_4
    if-ge v7, v4, :cond_3

    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v10, v9, :cond_3

    .line 762
    add-int/lit8 v7, v7, 0x1

    .line 763
    if-ge v7, v9, :cond_5

    .line 764
    move v7, v9

    .line 766
    :cond_5
    :goto_1
    if-gt v7, v4, :cond_3

    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_3

    .line 768
    invoke-virtual {p0, v7, v5}, Landroid/support/v4/view/ViewPager;->addNewItem(II)V

    .line 769
    add-int/lit8 v7, v7, 0x1

    .line 770
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 777
    .end local v6           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_6
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v7, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 778
    :goto_2
    if-ge v7, v4, :cond_9

    .line 779
    add-int/lit8 v7, v7, 0x1

    .line 780
    if-le v7, v9, :cond_8

    .line 781
    :goto_3
    if-gt v7, v4, :cond_9

    .line 783
    invoke-virtual {p0, v7, v12}, Landroid/support/v4/view/ViewPager;->addNewItem(II)V

    .line 784
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v7, v12

    .line 777
    goto :goto_2

    :cond_8
    move v7, v9

    .line 780
    goto :goto_3

    .line 795
    :cond_9
    const/4 v2, 0x0

    .line 796
    .local v2, curItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 797
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v12, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v10, v12, :cond_d

    .line 798
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 802
    .restart local v2       #curItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_a
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v13, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eqz v2, :cond_e

    iget-object v10, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v12, p0, v13, v10}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 804
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v10, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 806
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 807
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 808
    .local v3, currentFocused:Landroid/view/View;
    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 809
    .restart local v6       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_6
    if-eqz v6, :cond_b

    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v11, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v10, v11, :cond_0

    .line 810
    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 811
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 812
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 813
    if-eqz v6, :cond_c

    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v11, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_c

    .line 814
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 810
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 796
    .end local v1           #child:Landroid/view/View;
    .end local v3           #currentFocused:Landroid/view/View;
    .end local v6           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object v10, v11

    .line 802
    goto :goto_5

    .restart local v3       #currentFocused:Landroid/view/View;
    :cond_f
    move-object v6, v11

    .line 808
    goto :goto_6
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 8
    .parameter "adapter"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 314
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_1

    .line 315
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 317
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 318
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 319
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 322
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 323
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    .line 324
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 325
    invoke-virtual {p0, v6, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 328
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 329
    .local v2, oldAdapter:Landroid/support/v4/view/PagerAdapter;
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 331
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_3

    .line 332
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 333
    new-instance v3, Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-direct {v3, p0, v7}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    .line 335
    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 336
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 337
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v3, :cond_5

    .line 338
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 339
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v6, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 340
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 341
    iput-object v7, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 342
    iput-object v7, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 348
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    if-eqz v3, :cond_4

    if-eq v2, p1, :cond_4

    .line 349
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v3, v2, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 351
    :cond_4
    return-void

    .line 344
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 385
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 386
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 387
    return-void

    :cond_0
    move v0, v1

    .line 386
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 397
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 398
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 406
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 7
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"
    .parameter "velocity"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 409
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 410
    :cond_0
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    if-nez p3, :cond_3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 414
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 417
    :cond_3
    if-gez p1, :cond_6

    .line 418
    const/4 p1, 0x0

    .line 422
    :cond_4
    :goto_1
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 423
    .local v3, pageLimit:I
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v4, v3

    if-gt p1, v4, :cond_5

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v4, v3

    if-ge p1, v4, :cond_7

    .line 427
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 428
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    iput-boolean v1, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 419
    .end local v2           #i:I
    .end local v3           #pageLimit:I
    :cond_6
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_4

    .line 420
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    goto :goto_1

    .line 431
    .restart local v3       #pageLimit:I
    :cond_7
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v4, p1, :cond_9

    .line 432
    .local v1, dispatchSelected:Z
    :goto_3
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 433
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 434
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v4, v6

    mul-int v0, v4, p1

    .line 435
    .local v0, destX:I
    if-eqz p2, :cond_a

    .line 436
    invoke-virtual {p0, v0, v5, p4}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 437
    if-eqz v1, :cond_8

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_8

    .line 438
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 440
    :cond_8
    if-eqz v1, :cond_1

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_1

    .line 441
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .end local v0           #destX:I
    .end local v1           #dispatchSelected:Z
    :cond_9
    move v1, v5

    .line 431
    goto :goto_3

    .line 444
    .restart local v0       #destX:I
    .restart local v1       #dispatchSelected:Z
    :cond_a
    if-eqz v1, :cond_b

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_b

    .line 445
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 447
    :cond_b
    if-eqz v1, :cond_c

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_c

    .line 448
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 450
    :cond_c
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 451
    invoke-virtual {p0, v0, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 473
    .local v0, oldListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 474
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .parameter "limit"

    .prologue
    const/4 v3, 0x1

    .line 506
    if-ge p1, v3, :cond_0

    .line 507
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 p1, 0x1

    .line 511
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 512
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 513
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 515
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 374
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    .line 375
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 462
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 463
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .parameter "marginPixels"

    .prologue
    .line 526
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 527
    .local v0, oldMargin:I
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 530
    .local v1, width:I
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 532
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 533
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 550
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 551
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 552
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 553
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 554
    return-void

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method smoothScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 597
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "velocity"

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 609
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 644
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 613
    .local v2, sx:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 614
    .local v3, sy:I
    sub-int v4, p1, v2

    .line 615
    .local v4, dx:I
    sub-int v5, p2, v3

    .line 616
    .local v5, dy:I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 617
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 618
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 622
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 623
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mScrolling:Z

    .line 624
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 626
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v11

    .line 627
    .local v11, width:I
    div-int/lit8 v9, v11, 0x2

    .line 628
    .local v9, halfWidth:I
    const/high16 v1, 0x3f80

    const/high16 v12, 0x3f80

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 629
    .local v8, distanceRatio:F
    int-to-float v1, v9

    int-to-float v12, v9

    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v7, v1, v12

    .line 632
    .local v7, distance:F
    const/4 v6, 0x0

    .line 633
    .local v6, duration:I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 634
    if-lez p3, :cond_2

    .line 635
    const/high16 v1, 0x447a

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 640
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 642
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 643
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    goto :goto_0

    .line 637
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v12, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v12, v11

    int-to-float v12, v12

    div-float v10, v1, v12

    .line 638
    .local v10, pageDelta:F
    const/high16 v1, 0x3f80

    add-float/2addr v1, v10

    const/high16 v12, 0x42c8

    mul-float/2addr v1, v12

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 567
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
