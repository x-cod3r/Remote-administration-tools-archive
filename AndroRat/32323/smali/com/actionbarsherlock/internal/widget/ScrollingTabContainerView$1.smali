.class Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

.field private final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 250
    .local v0, scrollPos:I
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 251
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 252
    return-void
.end method
