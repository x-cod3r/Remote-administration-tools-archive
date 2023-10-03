.class public Lorg/adaway/service/RevertService;
.super Lcom/commonsware/cwac/wakeful/WakefulIntentService;
.source "RevertService.java"


# instance fields
.field private mService:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "AdAwayRevertService"

    invoke-direct {p0, v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private revert(Lorg/rootcommands/Shell;)I
    .locals 7
    .parameter "shell"

    .prologue
    const/4 v6, 0x0

    .line 83
    iget-object v3, p0, Lorg/adaway/service/RevertService;->mService:Landroid/content/Context;

    const v4, 0x7f06004e

    invoke-virtual {p0, v4}, Lorg/adaway/service/RevertService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f06004f

    invoke-virtual {p0, v5}, Lorg/adaway/service/RevertService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v6}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    :try_start_0
    iget-object v3, p0, Lorg/adaway/service/RevertService;->mService:Landroid/content/Context;

    const-string v4, "hosts"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 92
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "127.0.0.1 localhost"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "localhost"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, localhost:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 96
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 99
    iget-object v3, p0, Lorg/adaway/service/RevertService;->mService:Landroid/content/Context;

    sget-object v4, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Lorg/adaway/util/ApplyUtils;->copyHostsFile(Landroid/content/Context;Ljava/lang/String;Lorg/rootcommands/Shell;)V

    .line 102
    iget-object v3, p0, Lorg/adaway/service/RevertService;->mService:Landroid/content/Context;

    const-string v4, "hosts"

    invoke-virtual {v3, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 105
    iget-object v3, p0, Lorg/adaway/service/RevertService;->mService:Landroid/content/Context;

    invoke-static {v3}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/16 v3, 0xe

    .line 111
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #localhost:Ljava/lang/String;
    :goto_0
    return v3

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AdAway"

    const-string v4, "Exception"

    invoke-static {v3, v4, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    const/16 v3, 0xf

    goto :goto_0
.end method


# virtual methods
.method public doWakefulWork(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 59
    iget-object v3, p0, Lorg/adaway/service/RevertService;->mService:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/adaway/ui/BaseActivity;->setButtonsDisabledBroadcast(Landroid/content/Context;Z)V

    .line 62
    :try_start_0
    invoke-static {}, Lorg/rootcommands/Shell;->startRootShell()Lorg/rootcommands/Shell;

    move-result-object v2

    .line 63
    .local v2, rootShell:Lorg/rootcommands/Shell;
    invoke-direct {p0, v2}, Lorg/adaway/service/RevertService;->revert(Lorg/rootcommands/Shell;)I

    move-result v1

    .line 64
    .local v1, revertResult:I
    invoke-virtual {v2}, Lorg/rootcommands/Shell;->close()V

    .line 66
    const-string v3, "AdAway"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revert result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lorg/adaway/service/RevertService;->mService:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/adaway/ui/BaseActivity;->setButtonsDisabledBroadcast(Landroid/content/Context;Z)V

    .line 71
    iget-object v3, p0, Lorg/adaway/service/RevertService;->mService:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lorg/adaway/helper/ResultHelper;->showNotificationBasedOnResult(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #revertResult:I
    .end local v2           #rootShell:Lorg/rootcommands/Shell;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AdAway"

    const-string v4, "Problem while reverting!"

    invoke-static {v3, v4, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 48
    iput-object p0, p0, Lorg/adaway/service/RevertService;->mService:Landroid/content/Context;

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
