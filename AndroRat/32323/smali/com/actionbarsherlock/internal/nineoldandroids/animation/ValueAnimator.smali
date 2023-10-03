.class public Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;,
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field static final ANIMATION_FRAME:I = 0x1

.field static final ANIMATION_START:I = 0x0

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field private static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDelayedAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sEndingAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sFrameDelay:J

.field private static final sPendingAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sReadyAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 95
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 100
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$1;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$1;-><init>()V

    .line 99
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    .line 109
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$2;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$2;-><init>()V

    .line 108
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    .line 121
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$3;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$3;-><init>()V

    .line 120
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    .line 129
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$4;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$4;-><init>()V

    .line 128
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    .line 137
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$5;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$5;-><init>()V

    .line 136
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    .line 146
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 145
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 223
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    .line 277
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;-><init>()V

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 156
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 162
    iput v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    .line 172
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 188
    iput v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 198
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 204
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 210
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 217
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    .line 220
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    .line 227
    iput v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    .line 241
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 285
    return-void
.end method

.method static synthetic access$10(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    return-void
.end method

.method static synthetic access$11(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 1025
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method static synthetic access$12()J
    .locals 2

    .prologue
    .line 223
    sget-wide v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$2()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)J
    .locals 2
    .parameter

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$7()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$8()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$9(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1071
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public static clearAllAnimations()V
    .locals 1

    .prologue
    .line 1250
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1251
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1252
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1253
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 5
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x1

    .line 1072
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v3, :cond_1

    .line 1073
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 1074
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    .line 1085
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1076
    :cond_1
    iget-wide v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v3

    .line 1077
    .local v0, deltaTime:J
    iget-wide v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 1080
    iget-wide v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    sub-long v3, v0, v3

    sub-long v3, p1, v3

    iput-wide v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1081
    iput v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1026
    sget-object v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1027
    sget-object v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1028
    sget-object v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1029
    iput v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 1030
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1032
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1033
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1034
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 1038
    .end local v0           #i:I
    .end local v1           #numListeners:I
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_0
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 1039
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 1040
    return-void

    .line 1035
    .restart local v0       #i:I
    .restart local v1       #numListeners:I
    .restart local v2       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .prologue
    .line 1240
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 716
    sget-wide v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static varargs ofFloat([F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 316
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 317
    .local v0, anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    .line 318
    return-object v0
.end method

.method public static varargs ofInt([I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 299
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 300
    .local v0, anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    .line 301
    return-object v0
.end method

.method public static varargs ofObject(Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .parameter "evaluator"
    .parameter "values"

    .prologue
    .line 353
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 354
    .local v0, anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 355
    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;)V

    .line 356
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 330
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 331
    .local v0, anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 332
    return-object v0
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .parameter "frameDelay"

    .prologue
    .line 729
    sput-wide p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    .line 730
    return-void
.end method

.method private start(Z)V
    .locals 10
    .parameter "playBackwards"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 918
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 919
    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string v5, "Animators may only be run on Looper threads"

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 921
    :cond_0
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 922
    iput v8, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 923
    iput v8, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 924
    iput-boolean v9, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 925
    iput-boolean v8, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 926
    sget-object v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-wide v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 930
    iput v8, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 931
    iput-boolean v9, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 933
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 935
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 936
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 937
    .local v2, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_3

    .line 942
    .end local v1           #i:I
    .end local v2           #numListeners:I
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_1
    sget-object v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    .line 943
    .local v0, animationHandler:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;
    if-nez v0, :cond_2

    .line 944
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    .end local v0           #animationHandler:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V

    .line 945
    .restart local v0       #animationHandler:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;
    sget-object v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 947
    :cond_2
    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 948
    return-void

    .line 938
    .end local v0           #animationHandler:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;
    .restart local v1       #i:I
    .restart local v2       #numListeners:I
    .restart local v3       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 7

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 1048
    sget-object v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    iget-wide v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1053
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1054
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1055
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 1059
    .end local v0           #i:I
    .end local v1           #numListeners:I
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-void

    .line 1056
    .restart local v0       #i:I
    .restart local v1       #numListeners:I
    .restart local v2       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addUpdateListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .parameter "fraction"

    .prologue
    .line 1170
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 1171
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    .line 1172
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1173
    .local v2, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 1176
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1177
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1178
    .local v1, numListeners:I
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_2

    .line 1182
    .end local v1           #numListeners:I
    :cond_0
    return-void

    .line 1174
    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1179
    .restart local v1       #numListeners:I
    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V

    .line 1178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method animationFrame(J)Z
    .locals 11
    .parameter "currentTime"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    .line 1101
    const/4 v0, 0x0

    .line 1103
    .local v0, done:Z
    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    .line 1104
    iput v5, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 1105
    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_1

    .line 1106
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1113
    :cond_0
    :goto_0
    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_0

    .line 1144
    :goto_1
    return v0

    .line 1108
    :cond_1
    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    sub-long v7, p1, v7

    iput-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1110
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    goto :goto_0

    .line 1116
    :pswitch_0
    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    cmp-long v4, v7, v9

    if-lez v4, :cond_7

    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v7, p1, v7

    long-to-float v4, v7

    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    long-to-float v7, v7

    div-float v1, v4, v7

    .line 1117
    .local v1, fraction:F
    :goto_2
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_5

    .line 1118
    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    iget v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v7, :cond_2

    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_a

    .line 1120
    :cond_2
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1121
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1122
    .local v3, numListeners:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-lt v2, v3, :cond_8

    .line 1126
    .end local v2           #i:I
    .end local v3           #numListeners:I
    :cond_3
    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    .line 1127
    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1129
    :cond_4
    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 1130
    rem-float/2addr v1, v6

    .line 1131
    iget-wide v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v7

    iput-wide v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1137
    :cond_5
    :goto_5
    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_6

    .line 1138
    sub-float v1, v6, v1

    .line 1140
    :cond_6
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1

    .end local v1           #fraction:F
    :cond_7
    move v1, v6

    .line 1116
    goto :goto_2

    .line 1123
    .restart local v1       #fraction:F
    .restart local v2       #i:I
    .restart local v3       #numListeners:I
    :cond_8
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 1122
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2           #i:I
    .end local v3           #numListeners:I
    :cond_9
    move v4, v5

    .line 1127
    goto :goto_4

    .line 1133
    :cond_a
    const/4 v0, 0x1

    .line 1134
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 959
    iget v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v2, :cond_0

    sget-object v2, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 960
    sget-object v2, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 962
    :cond_0
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 964
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 965
    .local v1, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 969
    .end local v1           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_1
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    .line 971
    :cond_2
    return-void

    .line 965
    .restart local v1       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    .line 966
    .local v0, listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1186
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 1187
    .local v0, anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    iget-object v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 1188
    iget-object v5, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1189
    .local v5, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1190
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1191
    .local v3, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 1195
    .end local v1           #i:I
    .end local v3           #numListeners:I
    .end local v5           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;>;"
    :cond_0
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 1196
    iput-boolean v9, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1197
    iput v9, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 1198
    iput-boolean v9, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 1199
    iput v9, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 1200
    iput-boolean v9, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 1201
    iget-object v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    .line 1202
    .local v6, oldValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    if-eqz v6, :cond_1

    .line 1203
    array-length v4, v6

    .line 1204
    .local v4, numValues:I
    new-array v7, v4, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    iput-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    .line 1205
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1206
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 1212
    .end local v1           #i:I
    .end local v4           #numValues:I
    :cond_1
    return-object v0

    .line 1192
    .end local v6           #oldValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    .restart local v1       #i:I
    .restart local v3       #numListeners:I
    .restart local v5       #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;>;"
    :cond_2
    iget-object v8, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1207
    .end local v3           #numListeners:I
    .end local v5           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;>;"
    .restart local v4       #numValues:I
    .restart local v6       #oldValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    :cond_3
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1208
    .local v2, newValuesHolder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    iget-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v2, v7, v1

    .line 1209
    iget-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public end()V
    .locals 2

    .prologue
    .line 975
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 978
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    .line 984
    :cond_0
    :goto_0
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 985
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    .line 989
    :goto_1
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    .line 990
    return-void

    .line 979
    :cond_1
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    .line 987
    :cond_2
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 749
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyName"

    .prologue
    .line 763
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    .line 764
    .local v0, valuesHolder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 768
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    .line 558
    :cond_0
    const-wide/16 v0, 0x0

    .line 560
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 525
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 810
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 693
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getValues()[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 491
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 493
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 496
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 498
    .end local v0           #i:I
    .end local v1           #numValues:I
    :cond_0
    return-void

    .line 494
    .restart local v0       #i:I
    .restart local v1       #numValues:I
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->init()V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 994
    iget v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 849
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public reverse()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1010
    iget-boolean v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1011
    iget v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-ne v6, v7, :cond_1

    .line 1012
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1013
    .local v2, currentTime:J
    iget-wide v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v6

    .line 1014
    .local v0, currentPlayTime:J
    iget-wide v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    sub-long v4, v6, v0

    .line 1015
    .local v4, timeLeft:J
    sub-long v6, v2, v4

    iput-wide v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1019
    .end local v0           #currentPlayTime:J
    .end local v2           #currentTime:J
    .end local v4           #timeLeft:J
    :goto_1
    return-void

    :cond_0
    move v6, v7

    .line 1010
    goto :goto_0

    .line 1017
    :cond_1
    invoke-direct {p0, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->start(Z)V

    goto :goto_1
.end method

.method public setCurrentPlayTime(J)V
    .locals 4
    .parameter "playTime"

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 540
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 541
    .local v0, currentTime:J
    iget v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 542
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 543
    const/4 v2, 0x2

    iput v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 545
    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 546
    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    .line 547
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 3
    .parameter "duration"

    .prologue
    .line 511
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    .line 516
    return-object p0
.end method

.method public setEvaluator(Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 899
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;)V

    .line 902
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 402
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 406
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 412
    :goto_1
    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 409
    .local v0, valuesHolder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 374
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 378
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 384
    :goto_1
    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 381
    .local v0, valuesHolder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 866
    if-eqz p1, :cond_0

    .line 867
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 871
    :goto_0
    return-void

    .line 869
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 434
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 438
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    .line 439
    const/4 v3, 0x0

    .line 438
    invoke-static {v2, v3, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 445
    :goto_1
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v1, v4

    .line 442
    .local v0, valuesHolder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatCount(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 781
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    .line 782
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 801
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    .line 802
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0
    .parameter "startDelay"

    .prologue
    .line 703
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    .line 704
    return-void
.end method

.method public varargs setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 457
    array-length v1, p1

    .line 458
    .local v1, numValues:I
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    .line 459
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 460
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 465
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 466
    return-void

    .line 461
    :cond_0
    aget-object v2, p1, v0

    .line 462
    .local v2, valuesHolder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 952
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->start(Z)V

    .line 953
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1257
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ValueAnimator@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1258
    .local v1, returnVal:Ljava/lang/String;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 1259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 1263
    .end local v0           #i:I
    :cond_0
    return-object v1

    .line 1260
    .restart local v0       #i:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
