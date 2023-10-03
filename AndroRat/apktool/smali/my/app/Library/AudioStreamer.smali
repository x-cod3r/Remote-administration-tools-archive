.class public Lmy/app/Library/AudioStreamer;
.super Ljava/lang/Object;
.source "AudioStreamer.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field audioEncoding:I

.field audioRecord:Landroid/media/AudioRecord;

.field public bbq:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field buff:[B

.field buffer:[B

.field bufferSizeRecorder:I

.field chan:I

.field channelConfiguration:I

.field ctx:Landroid/content/Context;

.field frequency:I

.field public stop:Z

.field threcord:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;II)V
    .locals 6
    .parameter "c"
    .parameter "source"
    .parameter "chan"

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "AudioStreamer"

    iput-object v0, p0, Lmy/app/Library/AudioStreamer;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmy/app/Library/AudioStreamer;->stop:Z

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lmy/app/Library/AudioStreamer;->bbq:Ljava/util/concurrent/BlockingQueue;

    .line 38
    const/16 v0, 0x2b11

    iput v0, p0, Lmy/app/Library/AudioStreamer;->frequency:I

    .line 39
    iput v1, p0, Lmy/app/Library/AudioStreamer;->channelConfiguration:I

    .line 40
    iput v1, p0, Lmy/app/Library/AudioStreamer;->audioEncoding:I

    .line 53
    iput p3, p0, Lmy/app/Library/AudioStreamer;->chan:I

    .line 54
    iget v0, p0, Lmy/app/Library/AudioStreamer;->frequency:I

    iget v1, p0, Lmy/app/Library/AudioStreamer;->channelConfiguration:I

    iget v2, p0, Lmy/app/Library/AudioStreamer;->audioEncoding:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmy/app/Library/AudioStreamer;->bufferSizeRecorder:I

    .line 55
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lmy/app/Library/AudioStreamer;->frequency:I

    iget v3, p0, Lmy/app/Library/AudioStreamer;->channelConfiguration:I

    iget v4, p0, Lmy/app/Library/AudioStreamer;->audioEncoding:I

    iget v5, p0, Lmy/app/Library/AudioStreamer;->bufferSizeRecorder:I

    move v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmy/app/Library/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    .line 58
    iget-object v0, p0, Lmy/app/Library/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    .line 59
    iget-object v0, p0, Lmy/app/Library/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, p1}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 64
    new-instance v0, Ljava/lang/Thread;

    .line 65
    new-instance v1, Lmy/app/Library/AudioStreamer$1;

    invoke-direct {v1, p0}, Lmy/app/Library/AudioStreamer$1;-><init>(Lmy/app/Library/AudioStreamer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    iput-object v0, p0, Lmy/app/Library/AudioStreamer;->threcord:Ljava/lang/Thread;

    .line 72
    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lmy/app/Library/AudioStreamer;->chan:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lmy/app/Library/AudioStreamer;->bbq:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lmy/app/Library/AudioStreamer;->bbq:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public record()V
    .locals 7

    .prologue
    .line 82
    :try_start_0
    iget-object v3, p0, Lmy/app/Library/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 83
    const-string v3, "AudioStreamer"

    const-string v4, "Initialisation failed !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lmy/app/Library/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 85
    const/4 v3, 0x0

    iput-object v3, p0, Lmy/app/Library/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    .line 110
    :goto_0
    return-void

    .line 89
    :cond_0
    iget v3, p0, Lmy/app/Library/AudioStreamer;->bufferSizeRecorder:I

    new-array v3, v3, [B

    iput-object v3, p0, Lmy/app/Library/AudioStreamer;->buffer:[B

    .line 90
    iget-object v3, p0, Lmy/app/Library/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 92
    :goto_1
    iget-boolean v3, p0, Lmy/app/Library/AudioStreamer;->stop:Z

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, p0, Lmy/app/Library/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "AudioRecord"

    const-string v4, "Recording Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lmy/app/Library/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    iget-object v4, p0, Lmy/app/Library/AudioStreamer;->buffer:[B

    const/4 v5, 0x0

    iget v6, p0, Lmy/app/Library/AudioStreamer;->bufferSizeRecorder:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 95
    .local v0, bufferReadResult:I
    new-array v2, v0, [B

    .line 96
    .local v2, tmp:[B
    iget-object v3, p0, Lmy/app/Library/AudioStreamer;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget-object v3, p0, Lmy/app/Library/AudioStreamer;->bbq:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "AudioStreamer"

    const-string v1, "Launch record thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmy/app/Library/AudioStreamer;->stop:Z

    .line 77
    iget-object v0, p0, Lmy/app/Library/AudioStreamer;->threcord:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmy/app/Library/AudioStreamer;->stop:Z

    .line 126
    return-void
.end method
