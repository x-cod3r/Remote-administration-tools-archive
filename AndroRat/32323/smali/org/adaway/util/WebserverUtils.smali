.class public Lorg/adaway/util/WebserverUtils;
.super Ljava/lang/Object;
.source "WebserverUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWebserverRunning(Lorg/rootcommands/Shell;)Z
    .locals 5
    .parameter "shell"

    .prologue
    const/4 v2, 0x0

    .line 89
    :try_start_0
    new-instance v1, Lorg/rootcommands/Toolbox;

    invoke-direct {v1, p0}, Lorg/rootcommands/Toolbox;-><init>(Lorg/rootcommands/Shell;)V

    .line 91
    .local v1, tb:Lorg/rootcommands/Toolbox;
    const-string v3, "blank_webserver"

    invoke-virtual {v1, v3}, Lorg/rootcommands/Toolbox;->isBinaryRunning(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const/4 v2, 0x1

    .line 98
    .end local v1           #tb:Lorg/rootcommands/Toolbox;
    :cond_0
    :goto_0
    return v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AdAway"

    const-string v4, "Exception while checking webserver process"

    invoke-static {v3, v4, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startWebserver(Landroid/content/Context;Lorg/rootcommands/Shell;)V
    .locals 4
    .parameter "context"
    .parameter "shell"

    .prologue
    .line 38
    const-string v2, "AdAway"

    const-string v3, "Starting webserver..."

    invoke-static {v2, v3}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_0
    new-instance v1, Lorg/rootcommands/command/SimpleBinaryCommand;

    const-string v2, "blank_webserver"

    const-string v3, " > /dev/null 2>&1 &"

    invoke-direct {v1, p0, v2, v3}, Lorg/rootcommands/command/SimpleBinaryCommand;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v1, webserverCommand:Lorg/rootcommands/command/SimpleBinaryCommand;
    invoke-virtual {p1, v1}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v2

    invoke-virtual {v2}, Lorg/rootcommands/command/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #webserverCommand:Lorg/rootcommands/command/SimpleBinaryCommand;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AdAway"

    const-string v3, "Exception while starting webserver"

    invoke-static {v2, v3, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startWebserverOnBoot(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 57
    invoke-static {p0}, Lorg/adaway/helper/PreferenceHelper;->getWebserverOnBoot(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    :try_start_0
    invoke-static {}, Lorg/rootcommands/Shell;->startRootShell()Lorg/rootcommands/Shell;

    move-result-object v1

    .line 60
    .local v1, rootShell:Lorg/rootcommands/Shell;
    invoke-static {p0, v1}, Lorg/adaway/util/WebserverUtils;->startWebserver(Landroid/content/Context;Lorg/rootcommands/Shell;)V

    .line 61
    invoke-virtual {v1}, Lorg/rootcommands/Shell;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1           #rootShell:Lorg/rootcommands/Shell;
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AdAway"

    const-string v3, "Problem while starting webserver on boot!"

    invoke-static {v2, v3, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static stopWebserver(Landroid/content/Context;Lorg/rootcommands/Shell;)V
    .locals 4
    .parameter "context"
    .parameter "shell"

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Lorg/rootcommands/Toolbox;

    invoke-direct {v1, p1}, Lorg/rootcommands/Toolbox;-><init>(Lorg/rootcommands/Shell;)V

    .line 76
    .local v1, tb:Lorg/rootcommands/Toolbox;
    const-string v2, "blank_webserver"

    invoke-virtual {v1, v2}, Lorg/rootcommands/Toolbox;->killAllBinary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #tb:Lorg/rootcommands/Toolbox;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AdAway"

    const-string v3, "Exception while killing webserver"

    invoke-static {v2, v3, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
