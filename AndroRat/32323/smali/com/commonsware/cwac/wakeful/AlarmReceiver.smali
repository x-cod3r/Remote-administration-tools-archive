.class public Lcom/commonsware/cwac/wakeful/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static final WAKEFUL_META_DATA:Ljava/lang/String; = "com.commonsware.cwac.wakeful"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getListener(Landroid/content/Context;)Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;
    .locals 10
    .parameter "ctxt"

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 54
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v3, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v3, cn:Landroid/content/ComponentName;
    const/16 v8, 0x80

    :try_start_0
    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 58
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    const-string v8, "com.commonsware.cwac.wakeful"

    invoke-virtual {v0, v5, v8}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 60
    .local v6, xpp:Landroid/content/res/XmlResourceParser;
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 61
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 62
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WakefulIntentService"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 63
    const/4 v7, 0x0

    const-string v8, "listener"

    invoke-interface {v6, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, clsName:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;

    .line 86
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;>;"
    .end local v2           #clsName:Ljava/lang/String;
    :cond_0
    return-object v7

    .line 70
    :cond_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 72
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v6           #xpp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 73
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Cannot find own info???"

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 74
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 75
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Malformed metadata resource XML"

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 76
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    .line 77
    .local v4, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Could not read resource XML"

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 78
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 79
    .local v4, e:Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Listener class not found"

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 80
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v4

    .line 81
    .local v4, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Listener is not public or lacks public constructor"

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 82
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v4

    .line 83
    .local v4, e:Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Could not create instance of listener"

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "ctxt"
    .parameter "intent"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/wakeful/AlarmReceiver;->getListener(Landroid/content/Context;)Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;

    move-result-object v0

    .line 37
    .local v0, listener:Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 39
    const-string v2, "com.commonsware.cwac.wakeful.WakefulIntentService"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 41
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastAlarm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    invoke-interface {v0, p1}, Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;->sendWakefulWork(Landroid/content/Context;)V

    .line 49
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->scheduleAlarms(Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;Landroid/content/Context;Z)V

    goto :goto_0
.end method
