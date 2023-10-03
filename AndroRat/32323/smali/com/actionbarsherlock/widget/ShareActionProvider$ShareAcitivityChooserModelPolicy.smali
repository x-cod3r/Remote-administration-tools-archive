.class Lcom/actionbarsherlock/widget/ShareActionProvider$ShareAcitivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/ActivityChooserModel$OnChooseActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareAcitivityChooserModelPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/widget/ShareActionProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ShareActionProvider$ShareAcitivityChooserModelPolicy;->this$0:Lcom/actionbarsherlock/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/widget/ShareActionProvider;Lcom/actionbarsherlock/widget/ShareActionProvider$ShareAcitivityChooserModelPolicy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/ShareActionProvider$ShareAcitivityChooserModelPolicy;-><init>(Lcom/actionbarsherlock/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public onChooseActivity(Lcom/actionbarsherlock/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .locals 2
    .parameter "host"
    .parameter "intent"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ShareActionProvider$ShareAcitivityChooserModelPolicy;->this$0:Lcom/actionbarsherlock/widget/ShareActionProvider;

    #getter for: Lcom/actionbarsherlock/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ShareActionProvider;->access$2(Lcom/actionbarsherlock/widget/ShareActionProvider;)Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ShareActionProvider$ShareAcitivityChooserModelPolicy;->this$0:Lcom/actionbarsherlock/widget/ShareActionProvider;

    #getter for: Lcom/actionbarsherlock/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ShareActionProvider;->access$2(Lcom/actionbarsherlock/widget/ShareActionProvider;)Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ShareActionProvider$ShareAcitivityChooserModelPolicy;->this$0:Lcom/actionbarsherlock/widget/ShareActionProvider;

    .line 310
    invoke-interface {v0, v1, p2}, Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Lcom/actionbarsherlock/widget/ShareActionProvider;Landroid/content/Intent;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
