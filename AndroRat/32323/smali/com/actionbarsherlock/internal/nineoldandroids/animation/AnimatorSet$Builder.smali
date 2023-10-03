.class public Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter
    .parameter "anim"

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 1027
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 1029
    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$6(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    :cond_0
    return-void
.end method


# virtual methods
.method public after(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    .locals 2
    .parameter "delay"

    .prologue
    .line 1103
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 1104
    .local v0, anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 1105
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->after(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    .line 1106
    return-object p0

    .line 1103
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public after(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    .locals 3
    .parameter "anim"

    .prologue
    .line 1082
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 1083
    .local v1, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 1084
    new-instance v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .end local v1           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 1085
    .restart local v1       #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$6(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    :cond_0
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 1089
    .local v0, dependency:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v2, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;)V

    .line 1090
    return-object p0
.end method

.method public before(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    .locals 4
    .parameter "anim"

    .prologue
    .line 1062
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 1063
    .local v1, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 1064
    new-instance v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .end local v1           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 1065
    .restart local v1       #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$6(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_0
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 1069
    .local v0, dependency:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;)V

    .line 1070
    return-object p0
.end method

.method public with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    .locals 4
    .parameter "anim"

    .prologue
    .line 1042
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 1043
    .local v1, node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 1044
    new-instance v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .end local v1           #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 1045
    .restart local v1       #node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$6(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_0
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 1049
    .local v0, dependency:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;)V

    .line 1050
    return-object p0
.end method
