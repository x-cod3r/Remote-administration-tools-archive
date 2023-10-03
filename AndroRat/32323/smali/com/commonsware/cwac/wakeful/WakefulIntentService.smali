.class public abstract Lcom/commonsware/cwac/wakeful/WakefulIntentService;
.super Landroid/app/IntentService;
.source "WakefulIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;
    }
.end annotation


# static fields
.field static final LAST_ALARM:Ljava/lang/String; = "lastAlarm"

.field static final NAME:Ljava/lang/String; = "com.commonsware.cwac.wakeful.WakefulIntentService"

.field private static volatile lockStatic:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->setIntentRedelivery(Z)V

    .line 82
    return-void
.end method

.method public static cancelAlarms(Landroid/content/Context;)V
    .locals 5
    .parameter "ctxt"

    .prologue
    const/4 v4, 0x0

    .line 72
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 73
    .local v1, mgr:Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/commonsware/cwac/wakeful/AlarmReceiver;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, i:Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 76
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 77
    return-void
.end method

.method private static declared-synchronized getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 4
    .parameter "context"

    .prologue
    .line 32
    const-class v2, Lcom/commonsware/cwac/wakeful/WakefulIntentService;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 33
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 35
    .local v0, mgr:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "com.commonsware.cwac.wakeful.WakefulIntentService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    .line 36
    sget-object v1, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 39
    .end local v0           #mgr:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static scheduleAlarms(Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;Landroid/content/Context;)V
    .locals 1
    .parameter "listener"
    .parameter "ctxt"

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->scheduleAlarms(Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;Landroid/content/Context;Z)V

    .line 53
    return-void
.end method

.method public static scheduleAlarms(Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;Landroid/content/Context;Z)V
    .locals 11
    .parameter "listener"
    .parameter "ctxt"
    .parameter "force"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    .line 56
    const-string v6, "com.commonsware.cwac.wakeful.WakefulIntentService"

    invoke-virtual {p1, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 57
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v6, "lastAlarm"

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 59
    .local v1, lastAlarm:J
    cmp-long v6, v1, v7

    if-eqz v6, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-interface {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;->getMaxAge()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 63
    :cond_0
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 64
    .local v3, mgr:Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/commonsware/cwac/wakeful/AlarmReceiver;

    invoke-direct {v0, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, i:Landroid/content/Intent;
    invoke-static {p1, v10, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 67
    .local v4, pi:Landroid/app/PendingIntent;
    invoke-interface {p0, v3, v4, p1}, Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;->scheduleAlarms(Landroid/app/AlarmManager;Landroid/app/PendingIntent;Landroid/content/Context;)V

    .line 69
    .end local v0           #i:Landroid/content/Intent;
    .end local v3           #mgr:Landroid/app/AlarmManager;
    .end local v4           #pi:Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method public static sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "ctxt"
    .parameter "i"

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    return-void
.end method

.method public static sendWakefulWork(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .parameter "ctxt"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, clsService:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected abstract doWakefulWork(Landroid/content/Intent;)V
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->doWakefulWork(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 104
    .local v0, lock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 108
    :cond_0
    return-void

    .line 102
    .end local v0           #lock:Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 104
    .restart local v0       #lock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 107
    :cond_1
    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 88
    .local v0, lock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 92
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    .line 94
    const/4 v1, 0x3

    return v1
.end method
