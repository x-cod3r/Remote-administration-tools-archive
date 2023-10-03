.class public Lorg/adaway/service/DailyListener;
.super Ljava/lang/Object;
.source "DailyListener.java"

# interfaces
.implements Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxAge()J
    .locals 2

    .prologue
    .line 102
    const-wide/32 v0, 0x5274660

    return-wide v0
.end method

.method public scheduleAlarms(Landroid/app/AlarmManager;Landroid/app/PendingIntent;Landroid/content/Context;)V
    .locals 8
    .parameter "mgr"
    .parameter "pi"
    .parameter "context"

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0x9

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-static {p3}, Lorg/adaway/helper/PreferenceHelper;->getUpdateCheckDaily(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "AdAway"

    const-string v2, "Schedule update check..."

    invoke-static {v0, v2}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 48
    .local v7, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 49
    const/4 v0, 0x6

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 51
    :cond_0
    invoke-virtual {v7, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 52
    const/16 v0, 0xc

    invoke-virtual {v7, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 53
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 60
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 64
    .end local v7           #calendar:Ljava/util/Calendar;
    :cond_1
    return-void
.end method

.method public sendWakefulWork(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 67
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 69
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 72
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    invoke-static {p1}, Lorg/adaway/helper/PreferenceHelper;->getUpdateOnlyOnWifi(Landroid/content/Context;)Z

    move-result v3

    .line 77
    .local v3, updateOnlyOnWifi:Z
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 79
    :cond_1
    const-string v4, "AdAway"

    const-string v5, "We have internet, start update check directly now!"

    invoke-static {v4, v5}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lorg/adaway/service/UpdateService;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v2, updateIntent:Landroid/content/Intent;
    const-string v4, "org.adaway.BACKGROUND_EXECUTION"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-static {p1, v2}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    .end local v2           #updateIntent:Landroid/content/Intent;
    .end local v3           #updateOnlyOnWifi:Z
    :goto_0
    return-void

    .line 85
    .restart local v3       #updateOnlyOnWifi:Z
    :cond_2
    const-string v4, "AdAway"

    const-string v5, "We have no internet, enable ConnectivityReceiver!"

    invoke-static {v4, v5}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lorg/adaway/service/ConnectivityReceiver;->enableReceiver(Landroid/content/Context;)V

    goto :goto_0

    .line 91
    .end local v3           #updateOnlyOnWifi:Z
    :cond_3
    const-string v4, "AdAway"

    const-string v5, "We have no internet, enable ConnectivityReceiver!"

    invoke-static {v4, v5}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lorg/adaway/service/ConnectivityReceiver;->enableReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method
