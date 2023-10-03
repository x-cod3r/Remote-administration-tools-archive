.class Lorg/donations/DonationsFragment$4;
.super Landroid/webkit/WebViewClient;
.source "DonationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/donations/DonationsFragment;->buildFlattrView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/donations/DonationsFragment;

.field final synthetic val$mFlattrWebview:Landroid/webkit/WebView;

.field final synthetic val$mLoadingFrame:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lorg/donations/DonationsFragment;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lorg/donations/DonationsFragment$4;->this$0:Lorg/donations/DonationsFragment;

    iput-object p2, p0, Lorg/donations/DonationsFragment$4;->val$mLoadingFrame:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lorg/donations/DonationsFragment$4;->val$mFlattrWebview:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 349
    const-string v1, "flattr"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 351
    .local v0, result:Landroid/webkit/WebView$HitTestResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    if-lez v1, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 354
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 357
    .end local v0           #result:Landroid/webkit/WebView$HitTestResult;
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 365
    iget-object v0, p0, Lorg/donations/DonationsFragment$4;->val$mLoadingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/donations/DonationsFragment$4;->val$mLoadingFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lorg/donations/DonationsFragment$4;->val$mFlattrWebview:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 369
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "urlNewString"

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 338
    const/4 v0, 0x0

    return v0
.end method
