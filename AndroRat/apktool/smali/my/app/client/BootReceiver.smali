.class public Lmy/app/client/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const-class v0, Lmy/app/client/BootReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmy/app/client/BootReceiver;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    iget-object v2, p0, Lmy/app/client/BootReceiver;->TAG:Ljava/lang/String;

    const-string v3, "BOOT Complete received by Client !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmy/app/client/Client;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v1, serviceIntent:Landroid/content/Intent;
    const-class v2, Lmy/app/client/BootReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
