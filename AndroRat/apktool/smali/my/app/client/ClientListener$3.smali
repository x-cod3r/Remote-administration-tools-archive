.class Lmy/app/client/ClientListener$3;
.super Landroid/content/BroadcastReceiver;
.source "ClientListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmy/app/client/ClientListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field final synthetic this$0:Lmy/app/client/ClientListener;


# direct methods
.method constructor <init>(Lmy/app/client/ClientListener;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmy/app/client/ClientListener$3;->this$0:Lmy/app/client/ClientListener;

    .line 229
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 231
    const-string v0, "ConnectivityReceiver"

    iput-object v0, p0, Lmy/app/client/ClientListener$3;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, action:Ljava/lang/String;
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 241
    .local v2, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 242
    .local v0, TestCo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 243
    const/4 v5, 0x0

    .line 247
    .local v5, state:Z
    :goto_0
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 248
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 249
    const-string v6, "Wifi"

    .line 255
    .local v6, type:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_4

    .line 256
    iget-object v7, p0, Lmy/app/client/ClientListener$3;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Connection is Available "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v7, p0, Lmy/app/client/ClientListener$3;->this$0:Lmy/app/client/ClientListener;

    iget-boolean v7, v7, Lmy/app/client/ClientListener;->isConnected:Z

    if-nez v7, :cond_0

    .line 258
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lmy/app/client/Client;

    invoke-direct {v4, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v4, serviceIntent:Landroid/content/Intent;
    const-string v7, "ConnectivityCheckReceiver"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 266
    .end local v4           #serviceIntent:Landroid/content/Intent;
    :cond_0
    :goto_2
    iget-object v7, p0, Lmy/app/client/ClientListener$3;->this$0:Lmy/app/client/ClientListener;

    iput-boolean v5, v7, Lmy/app/client/ClientListener;->isConnected:Z

    .line 267
    return-void

    .line 245
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #state:Z
    .end local v6           #type:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    .restart local v5       #state:Z
    goto :goto_0

    .line 250
    .restart local v3       #networkInfo:Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_3

    .line 251
    const-string v6, "3g"

    .restart local v6       #type:Ljava/lang/String;
    goto :goto_1

    .line 253
    .end local v6           #type:Ljava/lang/String;
    :cond_3
    const-string v6, "other"

    .restart local v6       #type:Ljava/lang/String;
    goto :goto_1

    .line 264
    :cond_4
    iget-object v7, p0, Lmy/app/client/ClientListener$3;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Connection is not Available "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
