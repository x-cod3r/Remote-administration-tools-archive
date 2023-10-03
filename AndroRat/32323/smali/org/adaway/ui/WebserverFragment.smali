.class public Lorg/adaway/ui/WebserverFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "WebserverFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mRootShell:Lorg/rootcommands/Shell;

.field private mWebserverToggle:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lorg/adaway/ui/WebserverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mActivity:Landroid/app/Activity;

    .line 62
    iget-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080061

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mWebserverToggle:Landroid/widget/ToggleButton;

    .line 66
    :try_start_0
    invoke-static {}, Lorg/rootcommands/Shell;->startRootShell()Lorg/rootcommands/Shell;

    move-result-object v1

    iput-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mRootShell:Lorg/rootcommands/Shell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mRootShell:Lorg/rootcommands/Shell;

    invoke-static {v1}, Lorg/adaway/util/WebserverUtils;->isWebserverRunning(Lorg/rootcommands/Shell;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mWebserverToggle:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 77
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdAway"

    const-string v2, "Problem starting root shell!"

    invoke-static {v1, v2, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mWebserverToggle:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 51
    const v0, 0x7f03002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mRootShell:Lorg/rootcommands/Shell;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mRootShell:Lorg/rootcommands/Shell;

    invoke-virtual {v1}, Lorg/rootcommands/Shell;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    const-string v1, "AdAway"

    const-string v2, "Problem while closing shell!"

    invoke-static {v1, v2, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public webserverOnClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 98
    iget-object v0, p0, Lorg/adaway/ui/WebserverFragment;->mWebserverToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lorg/adaway/ui/WebserverFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mRootShell:Lorg/rootcommands/Shell;

    invoke-static {v0, v1}, Lorg/adaway/util/WebserverUtils;->startWebserver(Landroid/content/Context;Lorg/rootcommands/Shell;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/adaway/ui/WebserverFragment;->mWebserverToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lorg/adaway/ui/WebserverFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/adaway/ui/WebserverFragment;->mRootShell:Lorg/rootcommands/Shell;

    invoke-static {v0, v1}, Lorg/adaway/util/WebserverUtils;->stopWebserver(Landroid/content/Context;Lorg/rootcommands/Shell;)V

    .line 104
    :cond_1
    return-void
.end method
