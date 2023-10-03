.class public Lorg/donations/DonationsFragment;
.super Landroid/support/v4/app/Fragment;
.source "DonationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/donations/DonationsFragment$DonatePurchaseObserver;
    }
.end annotation


# static fields
.field private static final CATALOG_DEBUG:[Ljava/lang/String; = null

.field private static final DIALOG_BILLING_NOT_SUPPORTED_ID:I = 0x1

.field private static final DIALOG_THANKS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "Donations Library"


# instance fields
.field private mBillingService:Lorg/donations/google/BillingService;

.field private mDonatePurchaseObserver:Lorg/donations/DonationsFragment$DonatePurchaseObserver;

.field private mFlattrUrl:Landroid/widget/TextView;

.field private mGoogleSpinner:Landroid/widget/Spinner;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.test.purchased"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.test.canceled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.test.refunded"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.test.item_unavailable"

    aput-object v2, v0, v1

    sput-object v0, Lorg/donations/DonationsFragment;->CATALOG_DEBUG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lorg/donations/DonationsFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/donations/DonationsFragment;->displayDialog(I)V

    return-void
.end method

.method private buildFlattrView()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 320
    invoke-virtual {p0}, Lorg/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    sget v12, Lorg/donations/R$id;->donations__flattr_webview:I

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    .line 321
    .local v8, mFlattrWebview:Landroid/webkit/WebView;
    invoke-virtual {p0}, Lorg/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    sget v12, Lorg/donations/R$id;->donations__loading_frame:I

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 324
    .local v9, mLoadingFrame:Landroid/widget/FrameLayout;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_0

    .line 325
    const/4 v11, 0x0

    invoke-virtual {v8, v13, v11}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 329
    :cond_0
    new-instance v11, Lorg/donations/DonationsFragment$4;

    invoke-direct {v11, p0, v9, v8}, Lorg/donations/DonationsFragment$4;-><init>(Lorg/donations/DonationsFragment;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V

    invoke-virtual {v8, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 373
    const-string v10, ""

    .line 374
    .local v10, projectUrl:Ljava/lang/String;
    const-string v4, ""

    .line 377
    .local v4, flattrUrl:Ljava/lang/String;
    const-string v7, "<html> <head><style type=\'text/css\'>*{color: #FFFFFF; background-color: transparent;}</style>"

    .line 381
    .local v7, htmlStart:Ljava/lang/String;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x9

    if-lt v11, v12, :cond_1

    .line 382
    const-string v3, "https://"

    .line 388
    .local v3, flattrScheme:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    sget v12, Lorg/donations/R$id;->donations__flattr_url:I

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lorg/donations/DonationsFragment;->mFlattrUrl:Landroid/widget/TextView;

    .line 389
    iget-object v11, p0, Lorg/donations/DonationsFragment;->mFlattrUrl:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<script type=\'text/javascript\'>/* <![CDATA[ */(function() {var s = document.createElement(\'script\'), t = document.getElementsByTagName(\'script\')[0];s.type = \'text/javascript\';s.async = true;s.src = \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "api.flattr.com/js/0.6/load.js?mode=auto\';"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "t.parentNode.insertBefore(s, t);"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "})();"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/* ]]> */"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</script>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, flattrJavascript:Ljava/lang/String;
    const-string v6, "</head> <body> <div align=\'center\'>"

    .line 399
    .local v6, htmlMiddle:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<a class=\'FlattrButton\' style=\'display:none;\' href=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' target=\'_blank\'></a> <noscript><a href=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' target=\'_blank\'> <img src=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "api.flattr.com/button/flattr-badge-large.png\' alt=\'Flattr this\' title=\'Flattr this\' border=\'0\' /></a></noscript>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, flattrHtml:Ljava/lang/String;
    const-string v5, "</div> </body> </html>"

    .line 409
    .local v5, htmlEnd:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, flattrCode:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 413
    const-string v11, "text/html"

    const-string v12, "utf-8"

    invoke-virtual {v8, v0, v11, v12}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 419
    return-void

    .line 384
    .end local v0           #flattrCode:Ljava/lang/String;
    .end local v1           #flattrHtml:Ljava/lang/String;
    .end local v2           #flattrJavascript:Ljava/lang/String;
    .end local v3           #flattrScheme:Ljava/lang/String;
    .end local v5           #htmlEnd:Ljava/lang/String;
    .end local v6           #htmlMiddle:Ljava/lang/String;
    :cond_1
    const-string v3, "http://"

    .restart local v3       #flattrScheme:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private displayDialog(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 279
    const/4 v1, -0x1

    .line 280
    .local v1, icon:I
    const/4 v3, -0x1

    .line 281
    .local v3, title:I
    const/4 v2, -0x1

    .line 283
    .local v2, message:I
    packed-switch p1, :pswitch_data_0

    .line 295
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 298
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 299
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 300
    sget v4, Lorg/donations/R$string;->donations__button_close:I

    new-instance v5, Lorg/donations/DonationsFragment$3;

    invoke-direct {v5, p0}, Lorg/donations/DonationsFragment$3;-><init>(Lorg/donations/DonationsFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 308
    return-void

    .line 285
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    .line 286
    sget v3, Lorg/donations/R$string;->donations__google_android_market_not_supported_title:I

    .line 287
    sget v2, Lorg/donations/R$string;->donations__google_android_market_not_supported:I

    .line 289
    :pswitch_1
    const v1, 0x108009b

    .line 290
    sget v3, Lorg/donations/R$string;->donations__thanks_dialog_title:I

    .line 291
    sget v2, Lorg/donations/R$string;->donations__thanks_dialog:I

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public donateGoogleOnClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 198
    iget-object v1, p0, Lorg/donations/DonationsFragment;->mGoogleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 199
    .local v0, index:I
    const-string v1, "Donations Library"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected item in spinner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lorg/donations/DonationsFragment;->mBillingService:Lorg/donations/google/BillingService;

    sget-object v2, Lorg/donations/DonationsConfig;->GOOGLE_CATALOG:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/donations/google/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/donations/DonationsFragment;->displayDialog(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public donatePayPalOnClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 221
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 222
    .local v1, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "https"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "www.paypal.com"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "cgi-bin/webscr"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 223
    const-string v3, "cmd"

    const-string v4, "_donations"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 225
    const-string v3, "business"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 226
    const-string v3, "lc"

    const-string v4, "US"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 227
    const-string v3, "item_name"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 228
    const-string v3, "no_note"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 231
    const-string v3, "no_shipping"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 232
    const-string v3, "currency_code"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 234
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 241
    .local v0, payPalUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    .local v2, viewIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lorg/donations/DonationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lorg/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lorg/donations/R$id;->donations__google_stub:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 145
    .local v2, googleViewStub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 148
    invoke-virtual {p0}, Lorg/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lorg/donations/R$id;->donations__google_android_market_spinner:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lorg/donations/DonationsFragment;->mGoogleSpinner:Landroid/widget/Spinner;

    .line 150
    invoke-virtual {p0}, Lorg/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lorg/donations/R$array;->donations__google_android_market_promt_array:I

    const v5, 0x1090008

    invoke-static {v3, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 153
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 154
    iget-object v3, p0, Lorg/donations/DonationsFragment;->mGoogleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 156
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lorg/donations/DonationsFragment;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v3, Lorg/donations/DonationsFragment$DonatePurchaseObserver;

    iget-object v4, p0, Lorg/donations/DonationsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lorg/donations/DonationsFragment$DonatePurchaseObserver;-><init>(Lorg/donations/DonationsFragment;Landroid/os/Handler;)V

    iput-object v3, p0, Lorg/donations/DonationsFragment;->mDonatePurchaseObserver:Lorg/donations/DonationsFragment$DonatePurchaseObserver;

    .line 158
    new-instance v3, Lorg/donations/google/BillingService;

    invoke-direct {v3}, Lorg/donations/google/BillingService;-><init>()V

    iput-object v3, p0, Lorg/donations/DonationsFragment;->mBillingService:Lorg/donations/google/BillingService;

    .line 159
    iget-object v3, p0, Lorg/donations/DonationsFragment;->mBillingService:Lorg/donations/google/BillingService;

    invoke-virtual {p0}, Lorg/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/donations/google/BillingService;->setContext(Landroid/content/Context;)V

    .line 161
    invoke-virtual {p0}, Lorg/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lorg/donations/R$id;->donations__google_android_market_donate_button:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 163
    .local v1, btGoogle:Landroid/widget/Button;
    new-instance v3, Lorg/donations/DonationsFragment$1;

    invoke-direct {v3, p0}, Lorg/donations/DonationsFragment$1;-><init>(Lorg/donations/DonationsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 121
    sget v1, Lorg/donations/R$layout;->donations__fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 273
    iget-object v0, p0, Lorg/donations/DonationsFragment;->mBillingService:Lorg/donations/google/BillingService;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/donations/DonationsFragment;->mBillingService:Lorg/donations/google/BillingService;

    invoke-virtual {v0}, Lorg/donations/google/BillingService;->unbind()V

    .line 276
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 253
    iget-object v0, p0, Lorg/donations/DonationsFragment;->mDonatePurchaseObserver:Lorg/donations/DonationsFragment$DonatePurchaseObserver;

    invoke-static {v0}, Lorg/donations/google/ResponseHandler;->register(Lorg/donations/google/PurchaseObserver;)V

    .line 255
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 265
    iget-object v0, p0, Lorg/donations/DonationsFragment;->mDonatePurchaseObserver:Lorg/donations/DonationsFragment$DonatePurchaseObserver;

    invoke-static {v0}, Lorg/donations/google/ResponseHandler;->unregister(Lorg/donations/google/PurchaseObserver;)V

    .line 267
    return-void
.end method
