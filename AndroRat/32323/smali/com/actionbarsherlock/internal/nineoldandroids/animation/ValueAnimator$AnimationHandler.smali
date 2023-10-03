.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 586
    const/4 v6, 0x1

    .line 587
    .local v6, callAgain:Z
    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$2()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 588
    .local v5, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$3()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 589
    .local v10, delayedAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 593
    :pswitch_0
    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$4()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 594
    .local v16, pendingAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 595
    :cond_1
    const/4 v6, 0x0

    .line 602
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_6

    .line 621
    .end local v16           #pendingAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 622
    .local v8, currentTime:J
    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$7()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 623
    .local v18, readyAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$8()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 627
    .local v11, endingAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 628
    .local v14, numDelayedAnims:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-lt v12, v14, :cond_8

    .line 634
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 635
    .local v15, numReadyAnims:I
    if-lez v15, :cond_3

    .line 636
    const/4 v12, 0x0

    :goto_2
    if-lt v12, v15, :cond_a

    .line 642
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 647
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 648
    .local v13, numAnims:I
    const/4 v12, 0x0

    .line 649
    :goto_3
    if-lt v12, v13, :cond_b

    .line 668
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 669
    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v12, v0, :cond_e

    .line 672
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 677
    :cond_4
    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 678
    :cond_5
    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    invoke-static {}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$12()J

    move-result-wide v22

    .line 679
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v8

    sub-long v22, v22, v24

    .line 678
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 604
    .end local v8           #currentTime:J
    .end local v11           #endingAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    .end local v12           #i:I
    .end local v13           #numAnims:I
    .end local v14           #numDelayedAnims:I
    .end local v15           #numReadyAnims:I
    .end local v18           #readyAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v16       #pendingAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 605
    .local v17, pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 606
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 607
    .local v7, count:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_5
    if-ge v12, v7, :cond_2

    .line 608
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 610
    .local v4, anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    #getter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$5(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_7

    .line 611
    #calls: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$6(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V

    .line 607
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 613
    :cond_7
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 629
    .end local v4           #anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .end local v7           #count:I
    .end local v16           #pendingAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    .end local v17           #pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v8       #currentTime:J
    .restart local v11       #endingAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v14       #numDelayedAnims:I
    .restart local v18       #readyAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;>;"
    :cond_8
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 630
    .restart local v4       #anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    #calls: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v4, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$9(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;J)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 631
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 637
    .end local v4           #anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .restart local v15       #numReadyAnims:I
    :cond_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 638
    .restart local v4       #anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    #calls: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$6(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V

    .line 639
    const/16 v19, 0x1

    move/from16 v0, v19

    #setter for: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z
    invoke-static {v4, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$10(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;Z)V

    .line 640
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 650
    .end local v4           #anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .restart local v13       #numAnims:I
    :cond_b
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 651
    .restart local v4       #anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v4, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 652
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_d

    .line 655
    add-int/lit8 v12, v12, 0x1

    .line 656
    goto/16 :goto_3

    .line 664
    :cond_d
    add-int/lit8 v13, v13, -0x1

    .line 665
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 670
    .end local v4           #anim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    :cond_e
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    #calls: Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->endAnimation()V
    invoke-static/range {v19 .. v19}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->access$11(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V

    .line 669
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
