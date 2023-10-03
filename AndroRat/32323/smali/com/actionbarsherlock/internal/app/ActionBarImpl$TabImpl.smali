.class public Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;
.super Lcom/actionbarsherlock/app/ActionBar$Tab;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Lcom/actionbarsherlock/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-direct {p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;-><init>()V

    .line 814
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/actionbarsherlock/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mCallback:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 908
    return-void
.end method

.method public setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$7(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2
    .parameter "contentDesc"

    .prologue
    .line 917
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 918
    iget v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$8(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 921
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2
    .parameter "layoutResId"

    .prologue
    .line 854
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 855
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 854
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2
    .parameter "view"

    .prologue
    .line 845
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    .line 846
    iget v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$8(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 849
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$7(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2
    .parameter "icon"

    .prologue
    .line 879
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 880
    iget v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$8(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 883
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 869
    iput p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    .line 870
    return-void
.end method

.method public setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 0
    .parameter "callback"

    .prologue
    .line 834
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mCallback:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    .line 835
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 0
    .parameter "tag"

    .prologue
    .line 824
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    .line 825
    return-object p0
.end method

.method public setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$7(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2
    .parameter "text"

    .prologue
    .line 893
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 894
    iget v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$8(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 897
    :cond_0
    return-object p0
.end method
