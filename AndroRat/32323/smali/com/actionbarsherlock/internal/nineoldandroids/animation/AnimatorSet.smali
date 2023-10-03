.class public final Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;,
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;,
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;,
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;,
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    }
.end annotation


# instance fields
.field private mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

.field private mDuration:J

.field private mNeedsSort:Z

.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSetListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStarted:Z

.field mTerminated:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 90
    iput-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 99
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 105
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    .line 111
    iput-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDuration:J

    .line 46
    return-void
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    return-void
.end method

.method static synthetic access$6(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private sortNodes()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 783
    iget-boolean v11, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    if-eqz v11, :cond_8

    .line 784
    iget-object v11, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 785
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v9, roots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    iget-object v11, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 787
    .local v6, numNodes:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v6, :cond_0

    .line 793
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v10, tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_3

    .line 814
    iput-boolean v13, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 815
    iget-object v11, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v11, v12, :cond_9

    .line 816
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 788
    .end local v10           #tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    :cond_0
    iget-object v11, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 789
    .local v3, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 790
    :cond_1
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    .end local v3           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    .restart local v10       #tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 796
    .local v7, numRoots:I
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v7, :cond_4

    .line 810
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 811
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 812
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 797
    :cond_4
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 798
    .local v8, root:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v11, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iget-object v11, v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v11, :cond_5

    .line 800
    iget-object v11, v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 801
    .local v5, numDependents:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-lt v2, v5, :cond_6

    .line 796
    .end local v2           #j:I
    .end local v5           #numDependents:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 802
    .restart local v2       #j:I
    .restart local v5       #numDependents:I
    :cond_6
    iget-object v11, v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 803
    .restart local v3       #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 804
    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_7

    .line 805
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 823
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    .end local v5           #numDependents:I
    .end local v6           #numNodes:I
    .end local v7           #numRoots:I
    .end local v8           #root:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    .end local v9           #roots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    .end local v10           #tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    :cond_8
    iget-object v11, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 824
    .restart local v6       #numNodes:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-lt v1, v6, :cond_a

    .line 843
    :cond_9
    return-void

    .line 825
    :cond_a
    iget-object v11, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 826
    .restart local v3       #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_b

    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_b

    .line 827
    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 828
    .local v4, numDependencies:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_5
    if-lt v2, v4, :cond_c

    .line 840
    .end local v2           #j:I
    .end local v4           #numDependencies:I
    :cond_b
    iput-boolean v13, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    .line 824
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 829
    .restart local v2       #j:I
    .restart local v4       #numDependencies:I
    :cond_c
    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 830
    .local v0, dependency:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v11, :cond_d

    .line 831
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 833
    :cond_d
    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 834
    iget-object v11, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 284
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 285
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 286
    const/4 v2, 0x0

    .line 287
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 289
    .restart local v2       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 296
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 302
    :cond_1
    if-eqz v2, :cond_2

    .line 303
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 307
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 309
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_3
    return-void

    .line 289
    .restart local v2       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    .line 290
    .local v0, listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    goto :goto_0

    .line 297
    .end local v0           #listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    :cond_5
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 299
    .local v1, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v4, v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->cancel()V

    goto :goto_2

    .line 303
    .end local v1           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    .line 304
    .restart local v0       #listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    goto :goto_1
.end method

.method public bridge synthetic clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 550
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .line 559
    .local v0, anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 560
    iput-boolean v11, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 561
    iput-boolean v11, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 562
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 563
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 564
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 565
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 570
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 571
    .local v9, nodeCloneMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    iget-object v10, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 603
    iget-object v10, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 615
    return-object v0

    .line 571
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 572
    .local v7, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    move-result-object v8

    .line 573
    .local v8, nodeClone:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v11, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v11, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    iget-object v12, v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iput-object v13, v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 578
    iput-object v13, v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 579
    iput-object v13, v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 580
    iput-object v13, v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 583
    iget-object v11, v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v11}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    .line 584
    .local v2, cloneListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    if-eqz v2, :cond_0

    .line 585
    const/4 v6, 0x0

    .line 586
    .local v6, listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 594
    if-eqz v6, :cond_0

    .line 595
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    .line 596
    .local v5, listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 586
    .end local v5           #listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    .line 587
    .restart local v5       #listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    instance-of v12, v5, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v12, :cond_3

    .line 588
    if-nez v6, :cond_5

    .line 589
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .restart local v6       #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_5
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 603
    .end local v2           #cloneListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    .end local v5           #listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    .end local v6           #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    .end local v7           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    .end local v8           #nodeClone:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 604
    .restart local v7       #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 605
    .restart local v8       #nodeClone:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v11, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    .line 606
    iget-object v11, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 607
    .local v4, dependency:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
    iget-object v12, v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 608
    .local v3, clonedDependencyNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    new-instance v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 609
    iget v12, v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    .line 608
    invoke-direct {v1, v3, v12}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 610
    .local v1, cloneDependency:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
    invoke-virtual {v8, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;)V

    goto :goto_2
.end method

.method public end()V
    .locals 6

    .prologue
    .line 319
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 320
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 321
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->sortNodes()V

    .line 324
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 331
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 332
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 334
    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 335
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 339
    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 341
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 342
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 346
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 348
    :cond_4
    return-void

    .line 324
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 325
    .local v1, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-nez v4, :cond_6

    .line 326
    new-instance v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v4, p0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)V

    iput-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 328
    :cond_6
    iget-object v4, v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 335
    .end local v1           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 336
    .restart local v1       #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v4, v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->end()V

    goto :goto_1

    .line 342
    .end local v1           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    .restart local v2       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    .line 343
    .local v0, listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    goto :goto_2
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v0, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;>;"
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    return-object v0

    .line 202
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 203
    .local v1, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v3, v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 357
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 358
    .local v0, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v2, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    .locals 1
    .parameter "anim"

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 271
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 273
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;>;"
    const/4 v2, 0x1

    .line 180
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 181
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 183
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    .line 190
    :cond_0
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->before(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs playSequentially([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter "items"

    .prologue
    const/4 v2, 0x1

    .line 161
    if-eqz p1, :cond_0

    .line 162
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 163
    array-length v1, p1

    if-ne v1, v2, :cond_1

    .line 164
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    .line 171
    :cond_0
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 167
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->before(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, builder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    .end local v1           #builder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    :cond_0
    return-void

    .line 144
    .restart local v1       #builder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .line 145
    .local v0, anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    if-nez v1, :cond_2

    .line 146
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 147
    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method public varargs playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter "items"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 128
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 129
    .local v0, builder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 133
    .end local v0           #builder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    .end local v1           #i:I
    :cond_0
    return-void

    .line 130
    .restart local v0       #builder:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    .restart local v1       #i:I
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
    .locals 3
    .parameter "duration"

    .prologue
    .line 415
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 416
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duration must be a value of zero or greater"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDuration:J

    .line 424
    return-object p0

    .line 418
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 421
    .local v0, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v2, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v2, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 3
    .parameter "interpolator"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    return-void

    .line 235
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 236
    .local v0, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v2, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v2, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public setStartDelay(J)V
    .locals 0
    .parameter "startDelay"

    .prologue
    .line 389
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    .line 390
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 217
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 225
    return-void

    .line 217
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 218
    .local v1, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v0, v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .line 219
    .local v0, animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    instance-of v3, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    if-eqz v3, :cond_2

    .line 220
    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .end local v0           #animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    .restart local v0       #animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    :cond_2
    instance-of v3, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    .line 222
    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .end local v0           #animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 3

    .prologue
    .line 436
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    return-void

    .line 436
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 437
    .local v0, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v2, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->setupEndValues()V

    goto :goto_0
.end method

.method public setupStartValues()V
    .locals 3

    .prologue
    .line 429
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 432
    return-void

    .line 429
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 430
    .local v0, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v2, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->setupStartValues()V

    goto :goto_0
.end method

.method public start()V
    .locals 18

    .prologue
    .line 450
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 451
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 455
    invoke-direct/range {p0 .. p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->sortNodes()V

    .line 457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 458
    .local v11, numSortedNodes:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v11, :cond_2

    .line 479
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v8, nodesToStart:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v11, :cond_7

    .line 499
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_d

    .line 500
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_c

    .line 525
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v14, :cond_0

    .line 527
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 528
    .local v13, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 529
    .local v10, numListeners:I
    const/4 v4, 0x0

    :goto_4
    if-lt v4, v10, :cond_e

    .line 533
    .end local v10           #numListeners:I
    .end local v13           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    .line 536
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v14, :cond_1

    .line 539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 540
    .restart local v13       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 541
    .restart local v10       #numListeners:I
    const/4 v4, 0x0

    :goto_5
    if-lt v4, v10, :cond_f

    .line 546
    .end local v10           #numListeners:I
    .end local v13           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_1
    return-void

    .line 459
    .end local v8           #nodesToStart:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 461
    .local v7, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v14, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v14}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v12

    .line 462
    .local v12, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_4

    .line 464
    new-instance v2, Ljava/util/ArrayList;

    .line 463
    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 466
    .local v2, clonedListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_5

    .line 458
    .end local v2           #clonedListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 466
    .restart local v2       #clonedListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    .line 467
    .local v6, listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    instance-of v15, v6, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;

    if-nez v15, :cond_6

    .line 468
    instance-of v15, v6, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v15, :cond_3

    .line 469
    :cond_6
    iget-object v15, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v15, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->removeListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_6

    .line 481
    .end local v2           #clonedListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    .end local v6           #listener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    .end local v7           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    .end local v12           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    .restart local v8       #nodesToStart:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 482
    .restart local v7       #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-nez v14, :cond_8

    .line 483
    new-instance v14, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 485
    :cond_8
    iget-object v14, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v14, :cond_9

    iget-object v14, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_a

    .line 486
    :cond_9
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :goto_7
    iget-object v14, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v14, v15}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 480
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 488
    :cond_a
    iget-object v14, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 489
    .local v9, numDependencies:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_8
    if-lt v5, v9, :cond_b

    .line 494
    iget-object v14, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    iput-object v14, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_7

    .line 490
    :cond_b
    iget-object v14, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 491
    .local v3, dependency:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
    iget-object v14, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v14, v14, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .line 492
    new-instance v15, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;

    iget v0, v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v7, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 491
    invoke-virtual {v14, v15}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 489
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 500
    .end local v3           #dependency:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
    .end local v5           #j:I
    .end local v7           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    .end local v9           #numDependencies:I
    :cond_c
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 501
    .restart local v7       #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v15, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v15}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->start()V

    .line 502
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 505
    .end local v7           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    :cond_d
    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    invoke-static {v14}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual/range {v14 .. v16}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 507
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    new-instance v15, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v15}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v14}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->start()V

    goto/16 :goto_3

    .line 530
    .restart local v10       #numListeners:I
    .restart local v13       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_e
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 529
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 542
    :cond_f
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 541
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 505
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
