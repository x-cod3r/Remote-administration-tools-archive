.class public Lcom/actionbarsherlock/internal/widget/IcsProgressBar;
.super Landroid/view/View;
.source "IcsProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;,
        Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;,
        Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATION_RESOLUTION:I = 0xc8

#the value of this static final field might be set in the static constructor
.field private static final IS_HONEYCOMB:Z = false

.field private static final MAX_LEVEL:I = 0x2710

.field private static final ProgressBar:[I = null

.field private static final ProgressBar_animationResolution:I = 0xe

.field private static final ProgressBar_indeterminate:I = 0x5

.field private static final ProgressBar_indeterminateBehavior:I = 0xa

.field private static final ProgressBar_indeterminateDrawable:I = 0x7

.field private static final ProgressBar_indeterminateDuration:I = 0x9

.field private static final ProgressBar_indeterminateOnly:I = 0x6

.field private static final ProgressBar_interpolator:I = 0xd

.field private static final ProgressBar_max:I = 0x2

.field private static final ProgressBar_maxHeight:I = 0x1

.field private static final ProgressBar_maxWidth:I = 0x0

.field private static final ProgressBar_minHeight:I = 0xc

.field private static final ProgressBar_minWidth:I = 0xb

.field private static final ProgressBar_progress:I = 0x3

.field private static final ProgressBar_progressDrawable:I = 0x8

.field private static final ProgressBar_secondaryProgress:I = 0x4

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAnimationResolution:I

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndeterminateRealLeft:I

.field private mIndeterminateRealTop:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastDrawTime:J

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->IS_HONEYCOMB:Z

    .line 192
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->ProgressBar:[I

    .line 223
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 192
    nop

    :array_0
    .array-data 0x4
        0x1ft 0x1t 0x1t 0x1t
        0x20t 0x1t 0x1t 0x1t
        0x36t 0x1t 0x1t 0x1t
        0x37t 0x1t 0x1t 0x1t
        0x38t 0x1t 0x1t 0x1t
        0x39t 0x1t 0x1t 0x1t
        0x3at 0x1t 0x1t 0x1t
        0x3bt 0x1t 0x1t 0x1t
        0x3ct 0x1t 0x1t 0x1t
        0x3dt 0x1t 0x1t 0x1t
        0x3et 0x1t 0x1t 0x1t
        0x3ft 0x1t 0x1t 0x1t
        0x40t 0x1t 0x1t 0x1t
        0x41t 0x1t 0x1t 0x1t
        0x1at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 269
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "styleRes"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 280
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 281
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mUiThreadId:J

    .line 282
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->initProgressBar()V

    .line 285
    sget-object v5, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->ProgressBar:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 287
    .local v0, a:Landroid/content/res/TypedArray;
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mNoInvalidate:Z

    .line 289
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 290
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 291
    invoke-direct {p0, v1, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 294
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :cond_0
    const/16 v5, 0x9

    iget v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mDuration:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mDuration:I

    .line 300
    const/16 v5, 0xb

    iget v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinWidth:I

    .line 301
    iget v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxWidth:I

    .line 302
    const/16 v5, 0xc

    iget v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinHeight:I

    .line 303
    iget v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    .line 305
    const/16 v5, 0xa

    iget v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mBehavior:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mBehavior:I

    .line 308
    const/16 v5, 0xd

    .line 309
    const v6, 0x10a000b

    .line 307
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 310
    .local v2, resID:I
    if-lez v2, :cond_1

    .line 311
    invoke-virtual {p0, p1, v2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 314
    :cond_1
    const/4 v5, 0x2

    iget v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setMax(I)V

    .line 316
    const/4 v5, 0x3

    iget v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgress(I)V

    .line 319
    const/4 v5, 0x4

    iget v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 318
    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setSecondaryProgress(I)V

    .line 321
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_2

    .line 323
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 324
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_2
    const/4 v5, 0x6

    iget-boolean v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    .line 327
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    .line 330
    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mNoInvalidate:Z

    .line 332
    iget-boolean v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    if-nez v5, :cond_3

    .line 333
    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    .line 332
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 333
    if-nez v5, :cond_3

    .line 332
    :goto_0
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setIndeterminate(Z)V

    .line 335
    const/16 v3, 0xe

    .line 336
    const/16 v4, 0xc8

    .line 335
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimationResolution:I

    .line 338
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    const-string v3, "accessibility"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 341
    return-void

    :cond_3
    move v3, v4

    .line 333
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;IIZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"
    .parameter "callBackToApp"

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 629
    .local v4, scale:F
    :goto_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 630
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 631
    const/4 v3, 0x0

    .line 633
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 634
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 637
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 638
    .local v2, level:I
    if-eqz v3, :cond_3

    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 643
    .end local v2           #level:I
    :goto_2
    if-eqz p4, :cond_1

    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 644
    invoke-virtual {p0, v4, p3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    :cond_1
    monitor-exit p0

    return-void

    .line 628
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_3
    move-object v3, v1

    .line 638
    goto :goto_1

    .line 640
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 628
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 437
    const/16 v0, 0x64

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    .line 438
    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    .line 439
    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    .line 440
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    .line 441
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    .line 442
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mDuration:I

    .line 443
    const/4 v0, 0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mBehavior:I

    .line 444
    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinWidth:I

    .line 445
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxWidth:I

    .line 446
    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinHeight:I

    .line 447
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    .line 448
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 656
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :goto_0
    monitor-exit p0

    return-void

    .line 659
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 661
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    .line 663
    .local v0, r:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    .line 664
    invoke-virtual {v0, p1, p2, p3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 669
    :goto_1
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 655
    .end local v0           #r:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 667
    :cond_1
    :try_start_2
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;-><init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #r:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;
    goto :goto_1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1178
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;-><init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    .line 1182
    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1183
    return-void

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "drawable"
    .parameter "clip"

    .prologue
    const/4 v10, 0x1

    .line 349
    instance-of v9, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v9, :cond_3

    move-object v1, p1

    .line 350
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 351
    .local v1, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 352
    .local v0, N:I
    new-array v6, v0, [Landroid/graphics/drawable/Drawable;

    .line 354
    .local v6, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 360
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 362
    .local v5, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v0, :cond_2

    .line 393
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v3           #i:I
    .end local v5           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v6           #outDrawables:[Landroid/graphics/drawable/Drawable;
    .end local p1
    :goto_2
    return-object v5

    .line 355
    .restart local v0       #N:I
    .restart local v1       #background:Landroid/graphics/drawable/LayerDrawable;
    .restart local v3       #i:I
    .restart local v6       #outDrawables:[Landroid/graphics/drawable/Drawable;
    .restart local p1
    :cond_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 356
    .local v4, id:I
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 357
    const v9, 0x102000d

    if-eq v4, v9, :cond_1

    const v9, 0x102000f

    if-eq v4, v9, :cond_1

    const/4 v9, 0x0

    .line 356
    :goto_3
    invoke-direct {p0, v11, v9}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aput-object v9, v6, v3

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v9, v10

    .line 357
    goto :goto_3

    .line 363
    .end local v4           #id:I
    .restart local v5       #newBg:Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v9

    invoke-virtual {v5, v3, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 362
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 377
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v3           #i:I
    .end local v5           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v6           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v9, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_6

    .line 378
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 379
    .local v8, tileBitmap:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v9, :cond_4

    .line 380
    iput-object v8, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 383
    :cond_4
    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 385
    .local v7, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Landroid/graphics/BitmapShader;

    .line 386
    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 385
    invoke-direct {v2, v8, v9, v11}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 387
    .local v2, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 389
    if-eqz p2, :cond_5

    new-instance v9, Landroid/graphics/drawable/ClipDrawable;

    const/4 v11, 0x3

    .line 390
    invoke-direct {v9, v7, v11, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v7, v9

    .end local v7           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_5
    move-object v5, v7

    .line 389
    goto :goto_2

    .end local v2           #bitmapShader:Landroid/graphics/BitmapShader;
    .end local v8           #tileBitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_6
    move-object v5, p1

    .line 393
    goto :goto_2
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "drawable"

    .prologue
    const/16 v7, 0x2710

    .line 407
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 408
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 409
    .local v1, background:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 410
    .local v0, N:I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 411
    .local v4, newBg:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 413
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v0, :cond_1

    .line 418
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 419
    move-object p1, v4

    .line 421
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/AnimationDrawable;
    .end local v3           #i:I
    .end local v4           #newBg:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    return-object p1

    .line 414
    .restart local v0       #N:I
    .restart local v1       #background:Landroid/graphics/drawable/AnimationDrawable;
    .restart local v3       #i:I
    .restart local v4       #newBg:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 415
    .local v2, frame:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 416
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 413
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateDrawableBounds(II)V
    .locals 16
    .parameter "w"
    .parameter "h"

    .prologue
    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingRight()I

    move-result v11

    sub-int v11, p1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingLeft()I

    move-result v12

    sub-int v8, v11, v12

    .line 966
    .local v8, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingBottom()I

    move-result v11

    sub-int v11, p2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingTop()I

    move-result v12

    sub-int v1, v11, v12

    .line 967
    .local v1, bottom:I
    const/4 v9, 0x0

    .line 968
    .local v9, top:I
    const/4 v7, 0x0

    .line 970
    .local v7, left:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_1

    .line 972
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v11, v11, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v11, :cond_0

    .line 975
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 976
    .local v6, intrinsicWidth:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 977
    .local v5, intrinsicHeight:I
    int-to-float v11, v6

    int-to-float v12, v5

    div-float v4, v11, v12

    .line 978
    .local v4, intrinsicAspect:F
    move/from16 v0, p1

    int-to-float v11, v0

    move/from16 v0, p2

    int-to-float v12, v0

    div-float v2, v11, v12

    .line 979
    .local v2, boundAspect:F
    cmpl-float v11, v4, v2

    if-eqz v11, :cond_0

    .line 980
    cmpl-float v11, v2, v4

    if-lez v11, :cond_3

    .line 982
    move/from16 v0, p2

    int-to-float v11, v0

    mul-float/2addr v11, v4

    float-to-int v10, v11

    .line 983
    .local v10, width:I
    sub-int v11, p1, v10

    div-int/lit8 v7, v11, 0x2

    .line 984
    add-int v8, v7, v10

    .line 993
    .end local v2           #boundAspect:F
    .end local v4           #intrinsicAspect:F
    .end local v5           #intrinsicHeight:I
    .end local v6           #intrinsicWidth:I
    .end local v10           #width:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    sub-int v14, v8, v7

    sub-int v15, v1, v9

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 994
    move-object/from16 v0, p0

    iput v7, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateRealLeft:I

    .line 995
    move-object/from16 v0, p0

    iput v9, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateRealTop:I

    .line 998
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_2

    .line 999
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1001
    :cond_2
    return-void

    .line 987
    .restart local v2       #boundAspect:F
    .restart local v4       #intrinsicAspect:F
    .restart local v5       #intrinsicHeight:I
    .restart local v6       #intrinsicWidth:I
    :cond_3
    move/from16 v0, p1

    int-to-float v11, v0

    const/high16 v12, 0x3f80

    div-float/2addr v12, v4

    mul-float/2addr v11, v12

    float-to-int v3, v11

    .line 988
    .local v3, height:I
    sub-int v11, p2, v3

    div-int/lit8 v9, v11, 0x2

    .line 989
    add-int v1, v9, v3

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1069
    .local v0, state:[I
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1073
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1076
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1062
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1063
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->updateDrawableState()V

    .line 1064
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 398
    .local v0, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 397
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 783
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 769
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 829
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    monitor-exit p0

    return-void

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "dr"

    .prologue
    .line 934
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 935
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 936
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 937
    .local v0, dirty:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingLeft()I

    move-result v4

    add-int v1, v3, v4

    .line 938
    .local v1, scrollX:I
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingTop()I

    move-result v4

    add-int v2, v3, v4

    .line 940
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    .line 941
    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    .line 940
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->invalidate(IIII)V

    .line 946
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 588
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 589
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 591
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1140
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1141
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation()V

    .line 1144
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1148
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->stopAnimation()V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1159
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1160
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 1005
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1007
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1008
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1011
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1012
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateRealLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateRealTop:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1013
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 1014
    .local v2, time:J
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_0

    .line 1015
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v5}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1016
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 1018
    .local v1, scale:F
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInDrawing:Z

    .line 1019
    const v4, 0x461c4000

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1021
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInDrawing:Z

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mLastDrawTime:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimationResolution:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 1024
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mLastDrawTime:J

    .line 1025
    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimationResolution:I

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidateDelayed(J)V

    .line 1028
    .end local v1           #scale:F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1029
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1030
    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_1

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_1

    .line 1031
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1032
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1035
    .end local v2           #time:J
    :cond_1
    monitor-exit p0

    return-void

    .line 1020
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #scale:F
    .restart local v2       #time:J
    :catchall_0
    move-exception v4

    .line 1021
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInDrawing:Z

    .line 1022
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1005
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #scale:F
    .end local v2           #time:J
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1164
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1165
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1166
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1167
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1039
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1041
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1042
    .local v2, dw:I
    const/4 v1, 0x0

    .line 1043
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 1044
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1045
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1047
    :cond_0
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->updateDrawableState()V

    .line 1048
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1049
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1051
    sget-boolean v3, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->IS_HONEYCOMB:Z

    if-eqz v3, :cond_1

    .line 1052
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1053
    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    .line 1052
    invoke-virtual {p0, v3, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    :goto_0
    monitor-exit p0

    return-void

    .line 1055
    :cond_1
    :try_start_1
    invoke-static {v2, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    .line 1056
    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    .line 1055
    invoke-virtual {p0, v3, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1039
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #dh:I
    .end local v2           #dw:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->scheduleAccessibilityEventSender()V

    .line 652
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1131
    move-object v0, p1

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;

    .line 1132
    .local v0, ss:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1134
    iget v1, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgress(I)V

    .line 1135
    iget v1, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setSecondaryProgress(I)V

    .line 1136
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1120
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1121
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1123
    .local v0, ss:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->progress:I

    .line 1124
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->secondaryProgress:I

    .line 1126
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 960
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->updateDrawableBounds(II)V

    .line 961
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 920
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 922
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 924
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->stopAnimation()V

    .line 930
    :cond_1
    :goto_0
    return-void

    .line 927
    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 596
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 598
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .parameter "indeterminate"

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 472
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    .line 474
    if-eqz p1, :cond_2

    .line 476
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 477
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 479
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 480
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 508
    if-eqz p1, :cond_0

    .line 509
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 511
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 512
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 513
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 514
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidate()V

    .line 516
    :cond_1
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 880
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 881
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 890
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 891
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 796
    monitor-enter p0

    if-gez p1, :cond_0

    .line 797
    const/4 p1, 0x0

    .line 799
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 800
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    .line 801
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidate()V

    .line 803
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 804
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    .line 806
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :cond_2
    monitor-exit p0

    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 685
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 705
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 693
    :cond_1
    if-gez p1, :cond_2

    .line 694
    const/4 p1, 0x0

    .line 697
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 698
    iget p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    .line 701
    :cond_3
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    if-eq p1, v0, :cond_0

    .line 702
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    .line 703
    const v0, 0x102000d

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "d"

    .prologue
    const/4 v4, 0x0

    .line 542
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_3

    .line 543
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 544
    const/4 v1, 0x1

    .line 549
    .local v1, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_0

    .line 550
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 553
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 554
    .local v0, drawableHeight:I
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    if-ge v2, v0, :cond_0

    .line 555
    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    .line 556
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->requestLayout()V

    .line 559
    .end local v0           #drawableHeight:I
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 560
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-nez v2, :cond_1

    .line 561
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 562
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidate()V

    .line 565
    :cond_1
    if-eqz v1, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->updateDrawableBounds(II)V

    .line 567
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->updateDrawableState()V

    .line 568
    const v2, 0x102000d

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->doRefreshProgress(IIZZ)V

    .line 569
    const v2, 0x102000f

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->doRefreshProgress(IIZZ)V

    .line 571
    :cond_2
    return-void

    .line 546
    .end local v1           #needUpdate:Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #needUpdate:Z
    goto :goto_0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .parameter "secondaryProgress"

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 736
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 724
    :cond_1
    if-gez p1, :cond_2

    .line 725
    const/4 p1, 0x0

    .line 728
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 729
    iget p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    .line 732
    :cond_3
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 733
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    .line 734
    const v0, 0x102000f

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 905
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 909
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->stopAnimation()V

    .line 916
    :cond_1
    :goto_0
    return-void

    .line 912
    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 3

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    :goto_0
    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mShouldStartAnimationDrawable:Z

    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 856
    :goto_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidate()V

    goto :goto_0

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 845
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 848
    :cond_2
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 849
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 850
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 851
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 852
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 853
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 854
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1
.end method

.method stopAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 864
    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 865
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mShouldStartAnimationDrawable:Z

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidate()V

    .line 870
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 583
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
