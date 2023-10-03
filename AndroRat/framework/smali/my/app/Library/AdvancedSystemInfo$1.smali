.class Lmy/app/Library/AdvancedSystemInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedSystemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmy/app/Library/AdvancedSystemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmy/app/Library/AdvancedSystemInfo;


# direct methods
.method constructor <init>(Lmy/app/Library/AdvancedSystemInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    .line 124
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 127
    const-string v9, "health"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 128
    .local v0, health:I
    const-string v9, "level"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 129
    .local v1, level:I
    const-string v9, "plugged"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 130
    .local v2, plugged:I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "present"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 131
    .local v3, present:Z
    const-string v9, "scale"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 132
    .local v4, scale:I
    const-string v9, "status"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 133
    .local v5, status:I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "technology"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, technology:Ljava/lang/String;
    const-string v9, "temperature"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 135
    .local v7, temperature:I
    const-string v9, "voltage"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 137
    .local v8, voltage:I
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v9, v0}, LPacket/AdvancedInformationPacket;->setBatteryHealth(I)V

    .line 138
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v9, v1}, LPacket/AdvancedInformationPacket;->setBatteryLevel(I)V

    .line 139
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v9, v2}, LPacket/AdvancedInformationPacket;->setBatteryPlugged(I)V

    .line 140
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v9, v3}, LPacket/AdvancedInformationPacket;->setBatteryPresent(Z)V

    .line 141
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v9, v4}, LPacket/AdvancedInformationPacket;->setBatteryScale(I)V

    .line 142
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v9, v5}, LPacket/AdvancedInformationPacket;->setBatteryStatus(I)V

    .line 143
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v9, v6}, LPacket/AdvancedInformationPacket;->setBatteryTechnology(Ljava/lang/String;)V

    .line 144
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v9, v7}, LPacket/AdvancedInformationPacket;->setBatteryTemperature(I)V

    .line 145
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v9, v8}, LPacket/AdvancedInformationPacket;->setBatteryVoltage(I)V

    .line 148
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->ctx:Lmy/app/client/ClientListener;

    iget-object v10, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget v10, v10, Lmy/app/Library/AdvancedSystemInfo;->channel:I

    iget-object v11, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v11, v11, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v11}, LPacket/AdvancedInformationPacket;->build()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lmy/app/client/ClientListener;->handleData(I[B)V

    .line 150
    iget-object v9, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    iget-object v9, v9, Lmy/app/Library/AdvancedSystemInfo;->ctx:Lmy/app/client/ClientListener;

    iget-object v10, p0, Lmy/app/Library/AdvancedSystemInfo$1;->this$0:Lmy/app/Library/AdvancedSystemInfo;

    #getter for: Lmy/app/Library/AdvancedSystemInfo;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v10}, Lmy/app/Library/AdvancedSystemInfo;->access$0(Lmy/app/Library/AdvancedSystemInfo;)Landroid/content/BroadcastReceiver;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmy/app/client/ClientListener;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    return-void
.end method
