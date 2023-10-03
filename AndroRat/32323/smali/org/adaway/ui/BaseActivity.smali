.class public Lorg/adaway/ui/BaseActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "BaseActivity.java"


# static fields
.field static final ACTION_BUTTONS:Ljava/lang/String; = "org.adaway.BUTTONS"

.field static final ACTION_UPDATE_STATUS:Ljava/lang/String; = "org.adaway.UPDATE_STATUS"

.field public static final EXTRA_APPLYING_RESULT:Ljava/lang/String; = "org.adaway.APPLYING_RESULT"

.field public static final EXTRA_BUTTONS_DISABLED:Ljava/lang/String; = "org.adaway.BUTTONS.ENABLED"

.field public static final EXTRA_NUMBER_OF_SUCCESSFUL_DOWNLOADS:Ljava/lang/String; = "org.adaway.NUMBER_OF_SUCCESSFUL_DOWNLOADS"

.field public static final EXTRA_UPDATE_STATUS_ICON:Ljava/lang/String; = "org.adaway.UPDATE_STATUS.ICON"

.field public static final EXTRA_UPDATE_STATUS_TEXT:Ljava/lang/String; = "org.adaway.UPDATE_STATUS.TEXT"

.field public static final EXTRA_UPDATE_STATUS_TITLE:Ljava/lang/String; = "org.adaway.UPDATE_STATUS.TITLE"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mBaseFragment:Lorg/adaway/ui/BaseFragment;

.field mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mWebserverFragment:Lorg/adaway/ui/WebserverFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method

.method public static setButtonsDisabledBroadcast(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "buttonsDisabled"

    .prologue
    .line 213
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 215
    .local v1, localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.adaway.BUTTONS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "org.adaway.BUTTONS.ENABLED"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 218
    return-void
.end method

.method public static setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "text"
    .parameter "iconStatus"

    .prologue
    .line 196
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 198
    .local v1, localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.adaway.UPDATE_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "org.adaway.UPDATE_STATUS.ICON"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v2, "org.adaway.UPDATE_STATUS.TITLE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v2, "org.adaway.UPDATE_STATUS.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 203
    return-void
.end method

.method public static updateStatusDisabled(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 236
    const v0, 0x7f060059

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f06005a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p0, v0, v1, v2}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    return-void
.end method

.method public static updateStatusEnabled(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 226
    const v0, 0x7f060057

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    return-void
.end method


# virtual methods
.method public applyOnClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 274
    iget-object v0, p0, Lorg/adaway/ui/BaseActivity;->mBaseFragment:Lorg/adaway/ui/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/adaway/ui/BaseFragment;->applyOnClick(Landroid/view/View;)V

    .line 275
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v2, 0x7f030017

    invoke-virtual {p0, v2}, Lorg/adaway/ui/BaseActivity;->setContentView(I)V

    .line 114
    iput-object p0, p0, Lorg/adaway/ui/BaseActivity;->mActivity:Landroid/app/Activity;

    .line 116
    invoke-virtual {p0}, Lorg/adaway/ui/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lorg/adaway/ui/BaseActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 117
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const v3, 0x7f080033

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lorg/adaway/ui/BaseFragment;

    iput-object v2, p0, Lorg/adaway/ui/BaseActivity;->mBaseFragment:Lorg/adaway/ui/BaseFragment;

    .line 120
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iput-object v2, p0, Lorg/adaway/ui/BaseActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "org.adaway.UPDATE_STATUS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v2, "org.adaway.BUTTONS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    new-instance v2, Lorg/adaway/ui/BaseActivity$1;

    invoke-direct {v2, p0}, Lorg/adaway/ui/BaseActivity$1;-><init>(Lorg/adaway/ui/BaseActivity;)V

    iput-object v2, p0, Lorg/adaway/ui/BaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v3, p0, Lorg/adaway/ui/BaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 160
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/adaway/util/Utils;->isAndroidRooted(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    if-nez p1, :cond_0

    .line 165
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mActivity:Landroid/app/Activity;

    sget-object v3, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/adaway/util/ApplyUtils;->isHostsFileCorrect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/adaway/helper/PreferenceHelper;->getUpdateCheck(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mActivity:Landroid/app/Activity;

    const-class v3, Lorg/adaway/service/UpdateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v1, updateIntent:Landroid/content/Intent;
    const-string v2, "org.adaway.BACKGROUND_EXECUTION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V

    .line 181
    .end local v1           #updateIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    new-instance v2, Lorg/adaway/service/DailyListener;

    invoke-direct {v2}, Lorg/adaway/service/DailyListener;-><init>()V

    iget-object v3, p0, Lorg/adaway/ui/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v3, v4}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->scheduleAlarms(Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;Landroid/content/Context;Z)V

    .line 183
    :cond_1
    return-void

    .line 173
    :cond_2
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/adaway/ui/BaseActivity;->updateStatusEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 81
    const-string v3, "AdAway"

    const-string v4, "onNewIntent"

    invoke-static {v3, v4}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 86
    const-string v3, "org.adaway.APPLYING_RESULT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    const-string v3, "org.adaway.APPLYING_RESULT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, result:I
    const-string v3, "AdAway"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result from intent extras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, numberOfSuccessfulDownloads:Ljava/lang/String;
    const-string v3, "org.adaway.NUMBER_OF_SUCCESSFUL_DOWNLOADS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    const-string v3, "org.adaway.NUMBER_OF_SUCCESSFUL_DOWNLOADS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v3, "AdAway"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying information from intent extras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v3, p0, Lorg/adaway/ui/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2, v1}, Lorg/adaway/helper/ResultHelper;->showDialogBasedOnResult(Landroid/content/Context;ILjava/lang/String;)V

    .line 103
    .end local v1           #numberOfSuccessfulDownloads:Ljava/lang/String;
    .end local v2           #result:I
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 245
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 246
    invoke-virtual {p0}, Lorg/adaway/ui/BaseActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 247
    .local v0, actionBar:Lcom/actionbarsherlock/app/ActionBar;
    const v2, 0x7f0600a4

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(I)V

    .line 250
    invoke-static {p0}, Lorg/adaway/helper/PreferenceHelper;->getWebserverEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 253
    .local v1, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lorg/adaway/ui/WebserverFragment;

    invoke-direct {v2}, Lorg/adaway/ui/WebserverFragment;-><init>()V

    iput-object v2, p0, Lorg/adaway/ui/BaseActivity;->mWebserverFragment:Lorg/adaway/ui/WebserverFragment;

    .line 255
    const v2, 0x7f080034

    iget-object v3, p0, Lorg/adaway/ui/BaseActivity;->mWebserverFragment:Lorg/adaway/ui/WebserverFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 256
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 268
    .end local v1           #fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mWebserverFragment:Lorg/adaway/ui/WebserverFragment;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 262
    .restart local v1       #fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lorg/adaway/ui/BaseActivity;->mWebserverFragment:Lorg/adaway/ui/WebserverFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 263
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 265
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/adaway/ui/BaseActivity;->mWebserverFragment:Lorg/adaway/ui/WebserverFragment;

    goto :goto_0
.end method

.method public revertOnClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 281
    iget-object v0, p0, Lorg/adaway/ui/BaseActivity;->mBaseFragment:Lorg/adaway/ui/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/adaway/ui/BaseFragment;->revertOnClick(Landroid/view/View;)V

    .line 282
    return-void
.end method

.method public webserverOnClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 288
    iget-object v0, p0, Lorg/adaway/ui/BaseActivity;->mWebserverFragment:Lorg/adaway/ui/WebserverFragment;

    invoke-virtual {v0, p1}, Lorg/adaway/ui/WebserverFragment;->webserverOnClick(Landroid/view/View;)V

    .line 289
    return-void
.end method
