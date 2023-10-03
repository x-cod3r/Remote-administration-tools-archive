.class public Lorg/adaway/util/TcpdumpUtils;
.super Ljava/lang/Object;
.source "TcpdumpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteLog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, cachePath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/adaway/util/Constants;->FILE_SEPERATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dns_log.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 94
    const v5, 0x7f0600a9

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 96
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 103
    .end local v0           #cachePath:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 98
    .restart local v0       #cachePath:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #filePath:Ljava/lang/String;
    :cond_0
    const-string v5, "AdAway"

    const-string v6, "Tcpdump log is not existing!"

    invoke-static {v5, v6}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0           #cachePath:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/io/IOException;
    const-string v5, "AdAway"

    const-string v6, "Can not get cache dir!"

    invoke-static {v5, v6, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isTcpdumpRunning(Lorg/rootcommands/Shell;)Z
    .locals 5
    .parameter "shell"

    .prologue
    const/4 v2, 0x0

    .line 126
    :try_start_0
    new-instance v1, Lorg/rootcommands/Toolbox;

    invoke-direct {v1, p0}, Lorg/rootcommands/Toolbox;-><init>(Lorg/rootcommands/Shell;)V

    .line 128
    .local v1, tb:Lorg/rootcommands/Toolbox;
    const-string v3, "tcpdump"

    invoke-virtual {v1, v3}, Lorg/rootcommands/Toolbox;->isBinaryRunning(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const/4 v2, 0x1

    .line 135
    .end local v1           #tb:Lorg/rootcommands/Toolbox;
    :cond_0
    :goto_0
    return v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AdAway"

    const-string v4, "Exception while checking tcpdump"

    invoke-static {v3, v4, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startTcpdump(Landroid/content/Context;Lorg/rootcommands/Shell;)Z
    .locals 9
    .parameter "context"
    .parameter "shell"

    .prologue
    const/4 v6, 0x0

    .line 43
    const-string v7, "AdAway"

    const-string v8, "Starting tcpdump..."

    invoke-static {v7, v8}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, cachePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/adaway/util/Constants;->FILE_SEPERATOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns_log.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-i any -p -l -v -t -s 512 \'udp dst port 53\' >> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/adaway/util/Constants;->FILE_SEPERATOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns_log.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " 2>&1 &"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, parameters:Ljava/lang/String;
    new-instance v5, Lorg/rootcommands/command/SimpleBinaryCommand;

    const-string v7, "tcpdump"

    invoke-direct {v5, p0, v7, v4}, Lorg/rootcommands/command/SimpleBinaryCommand;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v5, tcpdumpCommand:Lorg/rootcommands/command/SimpleBinaryCommand;
    :try_start_1
    invoke-virtual {p1, v5}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v7

    invoke-virtual {v7}, Lorg/rootcommands/command/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    const/4 v6, 0x1

    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #parameters:Ljava/lang/String;
    .end local v5           #tcpdumpCommand:Lorg/rootcommands/command/SimpleBinaryCommand;
    :goto_0
    return v6

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/io/IOException;
    const-string v7, "AdAway"

    const-string v8, "Problem while getting cache directory!"

    invoke-static {v7, v8, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #filePath:Ljava/lang/String;
    .restart local v4       #parameters:Ljava/lang/String;
    .restart local v5       #tcpdumpCommand:Lorg/rootcommands/command/SimpleBinaryCommand;
    :catch_1
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "AdAway"

    const-string v8, "Exception while starting tcpdump"

    invoke-static {v7, v8, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static stopTcpdump(Landroid/content/Context;Lorg/rootcommands/Shell;)V
    .locals 4
    .parameter "context"
    .parameter "shell"

    .prologue
    .line 112
    :try_start_0
    new-instance v1, Lorg/rootcommands/Toolbox;

    invoke-direct {v1, p1}, Lorg/rootcommands/Toolbox;-><init>(Lorg/rootcommands/Shell;)V

    .line 113
    .local v1, tb:Lorg/rootcommands/Toolbox;
    const-string v2, "tcpdump"

    invoke-virtual {v1, v2}, Lorg/rootcommands/Toolbox;->killAllBinary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1           #tb:Lorg/rootcommands/Toolbox;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AdAway"

    const-string v3, "Exception while killing tcpdump"

    invoke-static {v2, v3, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
