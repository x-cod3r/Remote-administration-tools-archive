.class public Lorg/adaway/ui/HelpFragmentHtml;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "HelpFragmentHtml.java"


# static fields
.field public static final ARG_HTML_FILE:Ljava/lang/String; = "htmlFile"


# instance fields
.field private htmlFile:I

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static newInstance(I)Lorg/adaway/ui/HelpFragmentHtml;
    .locals 3
    .parameter "htmlFile"

    .prologue
    .line 54
    new-instance v1, Lorg/adaway/ui/HelpFragmentHtml;

    invoke-direct {v1}, Lorg/adaway/ui/HelpFragmentHtml;-><init>()V

    .line 57
    .local v1, f:Lorg/adaway/ui/HelpFragmentHtml;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "htmlFile"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v1, v0}, Lorg/adaway/ui/HelpFragmentHtml;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 77
    invoke-virtual {p0}, Lorg/adaway/ui/HelpFragmentHtml;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "htmlFile"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lorg/adaway/ui/HelpFragmentHtml;->htmlFile:I

    .line 80
    invoke-virtual {p0}, Lorg/adaway/ui/HelpFragmentHtml;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lorg/adaway/ui/HelpFragmentHtml;->htmlFile:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 82
    .local v2, inputStreamText:Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/adaway/ui/HelpFragmentHtml;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iput-object v6, p0, Lorg/adaway/ui/HelpFragmentHtml;->mActivity:Landroid/app/Activity;

    .line 84
    new-instance v4, Landroid/widget/ScrollView;

    iget-object v6, p0, Lorg/adaway/ui/HelpFragmentHtml;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 85
    .local v4, scroller:Landroid/widget/ScrollView;
    new-instance v5, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;

    iget-object v6, p0, Lorg/adaway/ui/HelpFragmentHtml;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v5, text:Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;
    const/high16 v6, 0x4180

    iget-object v7, p0, Lorg/adaway/ui/HelpFragmentHtml;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v8, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v3, v6

    .line 90
    .local v3, padding:I
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v3, v3, v6}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setPadding(IIII)V

    .line 92
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 95
    new-instance v1, Lnet/nightwhistler/htmlspanner/HtmlSpanner;

    invoke-direct {v1}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;-><init>()V

    .line 96
    .local v1, htmlSpanner:Lnet/nightwhistler/htmlspanner/HtmlSpanner;
    invoke-virtual {v1, v8}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->setStripExtraWhiteSpace(Z)V

    .line 98
    :try_start_0
    invoke-virtual {v1, v2}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->fromHtml(Ljava/io/InputStream;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 107
    invoke-virtual {p0}, Lorg/adaway/ui/HelpFragmentHtml;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setTextColor(I)V

    .line 109
    return-object v4

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    const-string v6, "AdAway"

    const-string v7, "Error while reading raw resources as stream"

    invoke-static {v6, v7, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/adaway/ui/HelpFragmentHtml;->setUserVisibleHint(Z)V

    .line 73
    return-void
.end method
