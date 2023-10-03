.class public Lorg/adaway/service/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static disableReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 99
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lorg/adaway/service/ConnectivityReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 103
    return-void
.end method

.method public static enableReceiver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 87
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lorg/adaway/service/ConnectivityReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 91
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    const-string v5, "AdAway"

    const-string v6, "ConnectivityReceiver invoked..."

    invoke-static {v5, v6}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lorg/adaway/helper/PreferenceHelper;->getUpdateCheckDaily(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 46
    const-string v5, "AdAway"

    const-string v6, "Update check daily is enabled!"

    invoke-static {v5, v6}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v5, "noConnectivity"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 51
    .local v2, noConnectivity:Z
    if-nez v2, :cond_2

    .line 53
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 55
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 58
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    invoke-static {p1}, Lorg/adaway/helper/PreferenceHelper;->getUpdateOnlyOnWifi(Landroid/content/Context;)Z

    move-result v4

    .line 63
    .local v4, updateOnlyOnWifi:Z
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 65
    :cond_1
    const-string v5, "AdAway"

    const-string v6, "We have internet, start update check and disable receiver!"

    invoke-static {v5, v6}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lorg/adaway/service/UpdateService;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v3, updateIntent:Landroid/content/Intent;
    const-string v5, "org.adaway.BACKGROUND_EXECUTION"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    invoke-static {p1, v3}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V

    .line 73
    invoke-static {p1}, Lorg/adaway/service/ConnectivityReceiver;->disableReceiver(Landroid/content/Context;)V

    .line 79
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #netInfo:Landroid/net/NetworkInfo;
    .end local v2           #noConnectivity:Z
    .end local v3           #updateIntent:Landroid/content/Intent;
    .end local v4           #updateOnlyOnWifi:Z
    :cond_2
    return-void
.end method
