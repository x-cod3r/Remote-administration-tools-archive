.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

.field private mNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

.field private mRule:I


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;I)V
    .locals 0
    .parameter "animatorSet"
    .parameter "node"
    .parameter "rule"

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .line 636
    iput-object p2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 637
    iput p3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    .line 638
    return-void
.end method

.method private startIfReady(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 6
    .parameter "dependencyAnimation"

    .prologue
    .line 679
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    iget-boolean v4, v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-eqz v4, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    const/4 v1, 0x0

    .line 684
    .local v1, dependencyToRemove:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v4, v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 685
    .local v3, numDependencies:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 696
    :goto_2
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v4, v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 697
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v4, v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 699
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v4, v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->start()V

    .line 700
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$2(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v5, v5, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 686
    :cond_2
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v4, v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 687
    .local v0, dependency:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
    iget v4, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    iget v5, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    if-ne v4, v5, :cond_3

    .line 688
    iget-object v4, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v4, v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    if-ne v4, p1, :cond_3

    .line 691
    move-object v1, v0

    .line 692
    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->removeListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 685
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 646
    return-void
.end method

.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 652
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 653
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->startIfReady(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 655
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 661
    return-void
.end method

.method public onAnimationStart(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 667
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    if-nez v0, :cond_0

    .line 668
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$DependencyListener;->startIfReady(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 670
    :cond_0
    return-void
.end method
