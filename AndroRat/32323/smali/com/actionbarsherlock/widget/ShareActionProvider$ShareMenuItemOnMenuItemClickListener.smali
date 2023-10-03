.class Lcom/actionbarsherlock/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareMenuItemOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/widget/ShareActionProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lcom/actionbarsherlock/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/widget/ShareActionProvider;Lcom/actionbarsherlock/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Lcom/actionbarsherlock/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 277
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lcom/actionbarsherlock/widget/ShareActionProvider;

    #getter for: Lcom/actionbarsherlock/widget/ShareActionProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ShareActionProvider;->access$0(Lcom/actionbarsherlock/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v3

    .line 278
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lcom/actionbarsherlock/widget/ShareActionProvider;

    #getter for: Lcom/actionbarsherlock/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/actionbarsherlock/widget/ShareActionProvider;->access$1(Lcom/actionbarsherlock/widget/ShareActionProvider;)Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-static {v3, v4}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v0

    .line 279
    .local v0, dataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    .line 280
    .local v1, itemId:I
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 281
    .local v2, launchIntent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 282
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lcom/actionbarsherlock/widget/ShareActionProvider;

    #getter for: Lcom/actionbarsherlock/widget/ShareActionProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ShareActionProvider;->access$0(Lcom/actionbarsherlock/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
