.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)V
    .locals 0
    .parameter
    .parameter "animatorSet"

    .prologue
    .line 710
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .line 712
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 715
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    iget-boolean v2, v2, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez v2, :cond_0

    .line 718
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$2(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 719
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    iget-object v2, v2, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    iget-object v2, v2, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 721
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 727
    .end local v0           #i:I
    .end local v1           #numListeners:I
    :cond_0
    return-void

    .line 722
    .restart local v0       #i:I
    .restart local v1       #numListeners:I
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    iget-object v2, v2, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 9
    .parameter "animation"

    .prologue
    .line 730
    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->removeListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 731
    iget-object v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$2(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 732
    iget-object v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 733
    .local v1, animNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    .line 734
    iget-object v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    iget-boolean v7, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez v7, :cond_1

    .line 737
    iget-object v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$4(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v5

    .line 738
    .local v5, sortedNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    const/4 v0, 0x1

    .line 739
    .local v0, allDone:Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 740
    .local v4, numSortedNodes:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_2

    .line 746
    :goto_1
    if-eqz v0, :cond_1

    .line 749
    iget-object v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    iget-object v7, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 751
    iget-object v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    iget-object v7, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 752
    .local v6, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 753
    .local v3, numListeners:I
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_4

    .line 757
    .end local v3           #numListeners:I
    .end local v6           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_0
    iget-object v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    const/4 v8, 0x0

    #setter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mStarted:Z
    invoke-static {v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$5(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Z)V

    .line 760
    .end local v0           #allDone:Z
    .end local v2           #i:I
    .end local v4           #numSortedNodes:I
    .end local v5           #sortedNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    :cond_1
    return-void

    .line 741
    .restart local v0       #allDone:Z
    .restart local v2       #i:I
    .restart local v4       #numSortedNodes:I
    .restart local v5       #sortedNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;>;"
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iget-boolean v7, v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    if-nez v7, :cond_3

    .line 742
    const/4 v0, 0x0

    .line 743
    goto :goto_1

    .line 740
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    .restart local v3       #numListeners:I
    .restart local v6       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_4
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v8, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 753
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public onAnimationRepeat(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 764
    return-void
.end method

.method public onAnimationStart(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 768
    return-void
.end method
