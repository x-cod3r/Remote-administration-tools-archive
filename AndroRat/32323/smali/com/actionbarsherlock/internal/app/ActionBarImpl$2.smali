.class Lcom/actionbarsherlock/internal/app/ActionBarImpl$2;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$2;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    .line 127
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$2;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    #setter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$4(Lcom/actionbarsherlock/internal/app/ActionBarImpl;Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 131
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$2;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->requestLayout()V

    .line 132
    return-void
.end method
