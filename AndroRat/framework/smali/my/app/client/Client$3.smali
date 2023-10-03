.class Lmy/app/client/Client$3;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmy/app/client/Client;->onStartCommand(Landroid/content/Intent;II)I
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
    iput-object p1, p0, Lmy/app/client/Client$3;->this$0:Lmy/app/client/Client;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lmy/app/client/Client$3;->this$0:Lmy/app/client/Client;

    invoke-virtual {v0}, Lmy/app/client/Client;->waitInstruction()V

    return-void
.end method
