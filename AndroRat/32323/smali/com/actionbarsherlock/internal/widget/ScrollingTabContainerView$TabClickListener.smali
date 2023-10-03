.class Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 503
    move-object v3, p1

    check-cast v3, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabView;

    .line 504
    .local v3, tabView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabView;->getTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/ActionBar$Tab;->select()V

    .line 505
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;
    invoke-static {v4}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->access$0(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v2

    .line 506
    .local v2, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 510
    return-void

    .line 507
    :cond_0
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;
    invoke-static {v4}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->access$0(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 508
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
