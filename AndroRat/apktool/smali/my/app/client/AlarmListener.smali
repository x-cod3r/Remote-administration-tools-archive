.class public Lmy/app/client/AlarmListener;
.super Landroid/content/BroadcastReceiver;
.source "AlarmListener.java"


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const-class v0, Lmy/app/client/AlarmListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmy/app/client/AlarmListener;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    iget-object v4, p0, Lmy/app/client/AlarmListener;->TAG:Ljava/lang/String;

    const-string v5, "Alarm received !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "alarm_message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, message:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 40
    iget-object v4, p0, Lmy/app/client/AlarmListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message received: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lmy/app/client/Client;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v3, serviceIntent:Landroid/content/Intent;
    const-class v4, Lmy/app/client/AlarmListener;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #serviceIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lmy/app/client/AlarmListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in Alarm received !"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
