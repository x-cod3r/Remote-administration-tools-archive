.class Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->access$0(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->access$0(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabView;->getTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 487
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 492
    if-nez p2, :cond_0

    .line 493
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/ActionBar$Tab;

    const/4 v2, 0x1

    #calls: Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->createTabView(Lcom/actionbarsherlock/app/ActionBar$Tab;Z)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabView;
    invoke-static {v1, v0, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->access$1(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;Lcom/actionbarsherlock/app/ActionBar$Tab;Z)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    .line 497
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 495
    check-cast v0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    goto :goto_0
.end method
