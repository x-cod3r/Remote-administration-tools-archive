.class Lmy/app/Library/AudioStreamer$1;
.super Ljava/lang/Object;
.source "AudioStreamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmy/app/Library/AudioStreamer;-><init>(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmy/app/Library/AudioStreamer;


# direct methods
.method constructor <init>(Lmy/app/Library/AudioStreamer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmy/app/Library/AudioStreamer$1;->this$0:Lmy/app/Library/AudioStreamer;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmy/app/Library/AudioStreamer$1;->this$0:Lmy/app/Library/AudioStreamer;

    invoke-virtual {v0}, Lmy/app/Library/AudioStreamer;->record()V

    .line 68
    return-void
.end method
