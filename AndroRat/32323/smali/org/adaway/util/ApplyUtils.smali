.class public Lorg/adaway/util/ApplyUtils;
.super Ljava/lang/Object;
.source "ApplyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyHostsFile(Landroid/content/Context;Ljava/lang/String;Lorg/rootcommands/Shell;)V
    .locals 11
    .parameter "context"
    .parameter "target"
    .parameter "shell"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/adaway/util/NotEnoughSpaceException;,
            Lorg/adaway/util/RemountException;,
            Lorg/adaway/util/CommandException;
        }
    .end annotation

    .prologue
    .line 136
    const-string v7, "AdAway"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy hosts file with target: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, privateDir:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "hosts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, privateFile:Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 142
    const-string v7, "AdAway"

    const-string v8, "Custom target ends with trailing slash, it is not a valid target!"

    invoke-static {v7, v8}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v7, Lorg/adaway/util/CommandException;

    invoke-direct {v7}, Lorg/adaway/util/CommandException;-><init>()V

    throw v7

    .line 147
    :cond_0
    sget-object v7, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 152
    invoke-static {p1, p2}, Lorg/adaway/util/ApplyUtils;->createDirectories(Ljava/lang/String;Lorg/rootcommands/Shell;)V

    .line 156
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 157
    .local v4, size:J
    const-string v7, "AdAway"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Size of hosts file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p1, v4, v5}, Lorg/adaway/util/ApplyUtils;->hasEnoughSpaceOnPartition(Ljava/lang/String;J)Z

    move-result v7

    if-nez v7, :cond_2

    .line 159
    new-instance v7, Lorg/adaway/util/NotEnoughSpaceException;

    invoke-direct {v7}, Lorg/adaway/util/NotEnoughSpaceException;-><init>()V

    throw v7

    .line 162
    :cond_2
    new-instance v6, Lorg/rootcommands/Toolbox;

    invoke-direct {v6, p2}, Lorg/rootcommands/Toolbox;-><init>(Lorg/rootcommands/Shell;)V

    .line 167
    .local v6, tb:Lorg/rootcommands/Toolbox;
    :try_start_0
    const-string v7, "AdAway"

    const-string v8, "Remounting for RW..."

    invoke-static {v7, v8}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v7, "RW"

    invoke-virtual {v6, p1, v7}, Lorg/rootcommands/Toolbox;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 169
    const-string v7, "AdAway"

    const-string v8, "Remounting as RW failed! Probably not a problem!"

    invoke-static {v7, v8}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_3
    sget-object v7, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 174
    new-instance v0, Lorg/rootcommands/command/SimpleCommand;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rm -f "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v0, v7}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 175
    .local v0, command:Lorg/rootcommands/command/SimpleCommand;
    invoke-virtual {p2, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v7

    invoke-virtual {v7}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 179
    .end local v0           #command:Lorg/rootcommands/command/SimpleCommand;
    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v3, p1, v7, v8}, Lorg/rootcommands/Toolbox;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v7

    if-nez v7, :cond_6

    .line 180
    new-instance v7, Lorg/adaway/util/CommandException;

    invoke-direct {v7}, Lorg/adaway/util/CommandException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v7, "AdAway"

    const-string v8, "Exception!"

    invoke-static {v7, v8, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    new-instance v7, Lorg/adaway/util/CommandException;

    invoke-direct {v7}, Lorg/adaway/util/CommandException;-><init>()V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    sget-object v8, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 194
    const-string v8, "AdAway"

    const-string v9, "Remounting back to RO..."

    invoke-static {v8, v9}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v8, "RO"

    invoke-virtual {v6, p1, v8}, Lorg/rootcommands/Toolbox;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 196
    const-string v8, "AdAway"

    const-string v9, "Remounting failed in finally! Probably not a problem!"

    invoke-static {v8, v9}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    throw v7

    .line 184
    :cond_6
    :try_start_2
    new-instance v0, Lorg/rootcommands/command/SimpleCommand;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chown 0:0 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chmod 644 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v0, v7}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 186
    .restart local v0       #command:Lorg/rootcommands/command/SimpleCommand;
    invoke-virtual {p2, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v7

    invoke-virtual {v7}, Lorg/rootcommands/command/Command;->waitForFinish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    sget-object v7, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 194
    const-string v7, "AdAway"

    const-string v8, "Remounting back to RO..."

    invoke-static {v7, v8}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v7, "RO"

    invoke-virtual {v6, p1, v7}, Lorg/rootcommands/Toolbox;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 196
    const-string v7, "AdAway"

    const-string v8, "Remounting failed in finally! Probably not a problem!"

    invoke-static {v7, v8}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_7
    return-void
.end method

.method public static createDirectories(Ljava/lang/String;Lorg/rootcommands/Shell;)V
    .locals 7
    .parameter "target"
    .parameter "shell"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/adaway/util/CommandException;
        }
    .end annotation

    .prologue
    .line 284
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 288
    .local v0, directory:Ljava/lang/String;
    :try_start_1
    new-instance v2, Lorg/rootcommands/command/SimpleCommand;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mkdir -p "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 291
    .local v2, mkdirCommand:Lorg/rootcommands/command/SimpleCommand;
    invoke-virtual {p1, v2}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v3

    invoke-virtual {v3}, Lorg/rootcommands/command/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    .end local v2           #mkdirCommand:Lorg/rootcommands/command/SimpleCommand;
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "AdAway"

    const-string v4, "Mkdir Exception"

    invoke-static {v3, v4, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 295
    .end local v0           #directory:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 296
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "AdAway"

    const-string v4, "Exception!"

    invoke-static {v3, v4, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    new-instance v3, Lorg/adaway/util/CommandException;

    invoke-direct {v3}, Lorg/adaway/util/CommandException;-><init>()V

    throw v3
.end method

.method public static createSymlink(Ljava/lang/String;)V
    .locals 8
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/adaway/util/RemountException;,
            Lorg/adaway/util/CommandException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v2, 0x0

    .line 211
    .local v2, rootShell:Lorg/rootcommands/Shell;
    :try_start_0
    invoke-static {}, Lorg/rootcommands/Shell;->startRootShell()Lorg/rootcommands/Shell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 215
    new-instance v3, Lorg/rootcommands/Toolbox;

    invoke-direct {v3, v2}, Lorg/rootcommands/Toolbox;-><init>(Lorg/rootcommands/Shell;)V

    .line 218
    .local v3, tb:Lorg/rootcommands/Toolbox;
    sget-object v4, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    const-string v5, "RW"

    invoke-virtual {v3, v4, v5}, Lorg/rootcommands/Toolbox;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    new-instance v4, Lorg/adaway/util/RemountException;

    invoke-direct {v4}, Lorg/adaway/util/RemountException;-><init>()V

    throw v4

    .line 212
    .end local v3           #tb:Lorg/rootcommands/Toolbox;
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Lorg/adaway/util/CommandException;

    const-string v5, "Problem opening root shell!"

    invoke-direct {v4, v5}, Lorg/adaway/util/CommandException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 225
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #tb:Lorg/rootcommands/Toolbox;
    :cond_0
    :try_start_1
    new-instance v0, Lorg/rootcommands/command/SimpleCommand;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rm -f "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ln -s "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chown 0:0 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 644 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v4}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 230
    .local v0, command:Lorg/rootcommands/command/SimpleCommand;
    invoke-virtual {v2, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v4

    invoke-virtual {v4}, Lorg/rootcommands/command/Command;->waitForFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 235
    sget-object v4, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    const-string v5, "RO"

    invoke-virtual {v3, v4, v5}, Lorg/rootcommands/Toolbox;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    :try_start_2
    invoke-virtual {v2}, Lorg/rootcommands/Shell;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 243
    return-void

    .line 239
    :catch_1
    move-exception v1

    .line 240
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Lorg/adaway/util/CommandException;

    const-string v5, "Problem closing root shell!"

    invoke-direct {v4, v5}, Lorg/adaway/util/CommandException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    .end local v0           #command:Lorg/rootcommands/command/SimpleCommand;
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Lorg/adaway/util/CommandException;

    invoke-direct {v4}, Lorg/adaway/util/CommandException;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    sget-object v5, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    const-string v6, "RO"

    invoke-virtual {v3, v5, v6}, Lorg/rootcommands/Toolbox;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    :try_start_4
    invoke-virtual {v2}, Lorg/rootcommands/Shell;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 240
    throw v4

    .line 239
    :catch_3
    move-exception v1

    .line 240
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Lorg/adaway/util/CommandException;

    const-string v5, "Problem closing root shell!"

    invoke-direct {v4, v5}, Lorg/adaway/util/CommandException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static hasEnoughSpaceOnPartition(Ljava/lang/String;J)Z
    .locals 13
    .parameter "target"
    .parameter "size"

    .prologue
    const/4 v9, 0x1

    .line 57
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, directory:Ljava/lang/String;
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 60
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v4, v10

    .line 61
    .local v4, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 62
    .local v0, availableBlocks:J
    mul-long v2, v0, v4

    .line 64
    .local v2, availableSpace:J
    const-string v10, "AdAway"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Checking for enough space: Target: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", directory: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", availableSpace: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    cmp-long v10, p1, v2

    if-gez v10, :cond_0

    .line 77
    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v6           #directory:Ljava/lang/String;
    .end local v8           #stat:Landroid/os/StatFs;
    :goto_0
    return v9

    .line 70
    .restart local v0       #availableBlocks:J
    .restart local v2       #availableSpace:J
    .restart local v4       #blockSize:J
    .restart local v6       #directory:Ljava/lang/String;
    .restart local v8       #stat:Landroid/os/StatFs;
    :cond_0
    const-string v10, "AdAway"

    const-string v11, "Not enough space on partition!"

    invoke-static {v10, v11}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v9, 0x0

    goto :goto_0

    .line 73
    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v6           #directory:Ljava/lang/String;
    .end local v8           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v7

    .line 76
    .local v7, e:Ljava/lang/Exception;
    const-string v10, "AdAway"

    const-string v11, "Problem while getting available space on partition!"

    invoke-static {v10, v11, v7}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isApnProxySet(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    .line 311
    const/4 v12, 0x0

    .line 314
    .local v12, result:Z
    :try_start_0
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 315
    .local v1, defaultApnUri:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "proxy"

    aput-object v3, v2, v0

    .line 317
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 321
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 323
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 324
    .local v9, nameColumn:I
    const-string v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 326
    .local v11, proxyColumn:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, name:Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 331
    .local v10, proxy:Ljava/lang/String;
    const-string v0, "AdAway"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has proxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "\\s*"

    invoke-virtual {v10, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const/4 v12, 0x1

    .line 339
    .end local v8           #name:Ljava/lang/String;
    .end local v10           #proxy:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 348
    .end local v1           #defaultApnUri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #nameColumn:I
    .end local v11           #proxyColumn:I
    :goto_0
    return v12

    .line 341
    .restart local v1       #defaultApnUri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "AdAway"

    const-string v3, "Could not get APN cursor!"

    invoke-static {v0, v3}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    .end local v1           #defaultApnUri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 344
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "AdAway"

    const-string v3, "Error while getting default APN!"

    invoke-static {v0, v3, v7}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isHostsFileCorrect(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "target"

    .prologue
    .line 87
    const/4 v7, 0x0

    .line 90
    .local v7, status:Z
    const/4 v8, 0x0

    .line 91
    .local v8, stream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 92
    .local v5, in:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 94
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, file:Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 97
    .end local v8           #stream:Ljava/io/InputStream;
    .local v9, stream:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 98
    .end local v5           #in:Ljava/io/InputStreamReader;
    .local v6, in:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 100
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, firstLine:Ljava/lang/String;
    const-string v10, "AdAway"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "First line of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v10, "# This hosts file is generated by AdAway."

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-result v10

    if-eqz v10, :cond_1

    .line 105
    const/4 v7, 0x1

    .line 116
    :goto_0
    if-eqz v9, :cond_3

    .line 118
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v5       #in:Ljava/io/InputStreamReader;
    move-object v8, v9

    .line 125
    .end local v3           #file:Ljava/io/File;
    .end local v4           #firstLine:Ljava/lang/String;
    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    :cond_0
    :goto_1
    return v7

    .line 107
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #in:Ljava/io/InputStreamReader;
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #firstLine:Ljava/lang/String;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    .restart local v9       #stream:Ljava/io/InputStream;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, e:Ljava/io/IOException;
    const-string v10, "AdAway"

    const-string v11, "Exception"

    invoke-static {v10, v11, v2}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v5       #in:Ljava/io/InputStreamReader;
    move-object v8, v9

    .line 121
    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_1

    .line 109
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #firstLine:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 110
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v10, "AdAway"

    const-string v11, "FileNotFoundException"

    invoke-static {v10, v11, v2}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    const/4 v7, 0x1

    .line 116
    if-eqz v8, :cond_0

    .line 118
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 119
    :catch_2
    move-exception v2

    .line 120
    .local v2, e:Ljava/io/IOException;
    const-string v10, "AdAway"

    const-string v11, "Exception"

    invoke-static {v10, v11, v2}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 112
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 113
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_7
    const-string v10, "AdAway"

    const-string v11, "Exception: "

    invoke-static {v10, v11, v2}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 114
    const/4 v7, 0x0

    .line 116
    if-eqz v8, :cond_0

    .line 118
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 119
    :catch_4
    move-exception v2

    .line 120
    .local v2, e:Ljava/io/IOException;
    const-string v10, "AdAway"

    const-string v11, "Exception"

    invoke-static {v10, v11, v2}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 116
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v8, :cond_2

    .line 118
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 121
    :cond_2
    :goto_5
    throw v10

    .line 119
    :catch_5
    move-exception v2

    .line 120
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "AdAway"

    const-string v12, "Exception"

    invoke-static {v11, v12, v2}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 116
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v9       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_4

    .end local v5           #in:Ljava/io/InputStreamReader;
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    .restart local v9       #stream:Ljava/io/InputStream;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v5       #in:Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #in:Ljava/io/InputStreamReader;
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    .restart local v9       #stream:Ljava/io/InputStream;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v5       #in:Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_4

    .line 112
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v9       #stream:Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v8, v9

    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_3

    .end local v5           #in:Ljava/io/InputStreamReader;
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    .restart local v9       #stream:Ljava/io/InputStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v5       #in:Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #in:Ljava/io/InputStreamReader;
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    .restart local v9       #stream:Ljava/io/InputStream;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v5       #in:Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_3

    .line 109
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v9       #stream:Ljava/io/InputStream;
    :catch_9
    move-exception v2

    move-object v8, v9

    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_2

    .end local v5           #in:Ljava/io/InputStreamReader;
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    .restart local v9       #stream:Ljava/io/InputStream;
    :catch_a
    move-exception v2

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v5       #in:Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #in:Ljava/io/InputStreamReader;
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    .restart local v9       #stream:Ljava/io/InputStream;
    :catch_b
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v5       #in:Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #in:Ljava/io/InputStreamReader;
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #firstLine:Ljava/lang/String;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    .restart local v9       #stream:Ljava/io/InputStream;
    :cond_3
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v5       #in:Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static isSymlinkCorrect(Ljava/lang/String;Lorg/rootcommands/Shell;)Z
    .locals 7
    .parameter "target"
    .parameter "shell"

    .prologue
    const/4 v3, 0x0

    .line 253
    const-string v4, "AdAway"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking whether /system/etc/hosts is a symlink and pointing to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or not."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v2, Lorg/rootcommands/Toolbox;

    invoke-direct {v2, p1}, Lorg/rootcommands/Toolbox;-><init>(Lorg/rootcommands/Shell;)V

    .line 257
    .local v2, tb:Lorg/rootcommands/Toolbox;
    const/4 v1, 0x0

    .line 259
    .local v1, symlink:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/rootcommands/Toolbox;->getSymlink(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 265
    const-string v4, "AdAway"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "symlink: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    const/4 v3, 0x1

    .line 270
    :cond_0
    :goto_0
    return v3

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AdAway"

    const-string v5, "Problem getting symlink!"

    invoke-static {v4, v5, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
