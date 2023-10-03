.class public Lorg/adaway/ui/HelpFragmentAbout;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "HelpFragmentAbout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private getVersion()Ljava/lang/String;
    .locals 8

    .prologue
    .line 96
    const-string v3, ""

    .line 98
    .local v3, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/adaway/ui/HelpFragmentAbout;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 99
    .local v2, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lorg/adaway/ui/HelpFragmentAbout;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 101
    .local v1, info:Landroid/content/pm/PackageInfo;
    const-string v4, "%s (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 107
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AdAway"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get application version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/adaway/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "Unable to get application version."

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const v6, 0x7f030021

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 63
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0}, Lorg/adaway/ui/HelpFragmentAbout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f05

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 65
    .local v3, inputStreamText:Ljava/io/InputStream;
    const v6, 0x7f080050

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    .local v4, versionText:Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f06009d

    invoke-virtual {p0, v7}, Lorg/adaway/ui/HelpFragmentAbout;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lorg/adaway/ui/HelpFragmentAbout;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v6, 0x7f080051

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;

    .line 72
    .local v0, aboutTextView:Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;
    new-instance v2, Lnet/nightwhistler/htmlspanner/HtmlSpanner;

    invoke-direct {v2}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;-><init>()V

    .line 73
    .local v2, htmlSpanner:Lnet/nightwhistler/htmlspanner/HtmlSpanner;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->setStripExtraWhiteSpace(Z)V

    .line 75
    :try_start_0
    invoke-virtual {v2, v3}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->fromHtml(Ljava/io/InputStream;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    invoke-virtual {p0}, Lorg/adaway/ui/HelpFragmentAbout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setTextColor(I)V

    .line 87
    return-object v5

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Ljava/io/IOException;
    const-string v6, "AdAway"

    const-string v7, "Error while reading raw resources as stream"

    invoke-static {v6, v7, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/adaway/ui/HelpFragmentAbout;->setUserVisibleHint(Z)V

    .line 56
    return-void
.end method
