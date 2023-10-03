.class Lmy/app/client/Client$1;
.super Landroid/os/Handler;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmy/app/client/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmy/app/client/Client;


# direct methods
.method constructor <init>(Lmy/app/client/Client;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmy/app/client/Client$1;->this$0:Lmy/app/client/Client;

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, b:Landroid/os/Bundle;
    iget-object v1, p0, Lmy/app/client/Client$1;->this$0:Lmy/app/client/Client;

    invoke-virtual {v1, v0}, Lmy/app/client/Client;->processCommand(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
