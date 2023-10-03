.class public Lorg/rootcommands/Toolbox;
.super Ljava/lang/Object;
.source "Toolbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/rootcommands/Toolbox$WithPermissions;,
        Lorg/rootcommands/Toolbox$FileExistsCommand;,
        Lorg/rootcommands/Toolbox$LsCommand;,
        Lorg/rootcommands/Toolbox$PsCommand;
    }
.end annotation


# static fields
.field public static final REBOOT_HOTREBOOT:I = 0x1

.field public static final REBOOT_REBOOT:I = 0x2

.field public static final REBOOT_RECOVERY:I = 0x4

.field public static final REBOOT_SHUTDOWN:I = 0x3


# instance fields
.field private shell:Lorg/rootcommands/Shell;


# direct methods
.method public constructor <init>(Lorg/rootcommands/Shell;)V
    .locals 0
    .parameter "shell"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    .line 59
    return-void
.end method


# virtual methods
.method public adjustSystemClock(J)V
    .locals 2
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    const-string v0, "/dev/alarm"

    new-instance v1, Lorg/rootcommands/Toolbox$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/rootcommands/Toolbox$2;-><init>(Lorg/rootcommands/Toolbox;J)V

    invoke-virtual {p0, v0, v1}, Lorg/rootcommands/Toolbox;->withWritePermissions(Ljava/lang/String;Lorg/rootcommands/Toolbox$WithPermissions;)V

    .line 711
    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 9
    .parameter "source"
    .parameter "destination"
    .parameter "remountAsRw"
    .parameter "preservePermissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 483
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    :cond_0
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "dd can only copy files!"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 488
    :cond_1
    if-eqz p3, :cond_2

    .line 489
    const-string v4, "RW"

    invoke-virtual {p0, p2, v4}, Lorg/rootcommands/Toolbox;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 490
    const-string v4, "RootCommands"

    const-string v5, "Remounting failed! There is probably no need to remount this partition!"

    invoke-static {v4, v5}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_2
    const/4 v3, 0x0

    .line 497
    .local v3, permissions:Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 498
    invoke-virtual {p0, p1}, Lorg/rootcommands/Toolbox;->getFilePermissions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 501
    :cond_3
    const/4 v1, 0x0

    .line 503
    .local v1, commandSuccess:Z
    new-instance v2, Lorg/rootcommands/command/SimpleCommand;

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toolbox dd if="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-direct {v2, v4}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 505
    .local v2, ddCommand:Lorg/rootcommands/command/SimpleCommand;
    iget-object v4, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v4, v2}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v4

    invoke-virtual {v4}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 507
    invoke-virtual {v2}, Lorg/rootcommands/command/SimpleCommand;->getExitCode()I

    move-result v4

    if-nez v4, :cond_7

    .line 508
    const/4 v1, 0x1

    .line 521
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 522
    invoke-virtual {p0, p2, v3}, Lorg/rootcommands/Toolbox;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;)Z

    .line 526
    :cond_5
    if-eqz p3, :cond_6

    .line 527
    const-string v4, "RO"

    invoke-virtual {p0, p2, v4}, Lorg/rootcommands/Toolbox;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 528
    const-string v4, "RootCommands"

    const-string v5, "Remounting failed! There is probably no need to remount this partition!"

    invoke-static {v4, v5}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_6
    return v1

    .line 511
    :cond_7
    new-instance v0, Lorg/rootcommands/command/SimpleCommand;

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toolbox cat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-direct {v0, v4}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 513
    .local v0, catCommand:Lorg/rootcommands/command/SimpleCommand;
    iget-object v4, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v4, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v4

    invoke-virtual {v4}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 515
    invoke-virtual {v0}, Lorg/rootcommands/command/SimpleCommand;->getExitCode()I

    move-result v4

    if-nez v4, :cond_4

    .line 516
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    new-instance v0, Lorg/rootcommands/Toolbox$FileExistsCommand;

    invoke-direct {v0, p0, p1}, Lorg/rootcommands/Toolbox$FileExistsCommand;-><init>(Lorg/rootcommands/Toolbox;Ljava/lang/String;)V

    .line 624
    .local v0, fileExistsCommand:Lorg/rootcommands/Toolbox$FileExistsCommand;
    iget-object v1, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v1, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v1

    invoke-virtual {v1}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 626
    invoke-virtual {v0}, Lorg/rootcommands/Toolbox$FileExistsCommand;->isFileExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    const/4 v1, 0x1

    .line 629
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFilePermissions(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    const-string v2, "RootCommands"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x0

    .line 392
    .local v1, permissions:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/rootcommands/Toolbox;->fileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const-string v2, "RootCommands"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v0, Lorg/rootcommands/Toolbox$LsCommand;

    invoke-direct {v0, p0, p1}, Lorg/rootcommands/Toolbox$LsCommand;-><init>(Lorg/rootcommands/Toolbox;Ljava/lang/String;)V

    .line 396
    .local v0, lsCommand:Lorg/rootcommands/Toolbox$LsCommand;
    iget-object v2, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v2, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v2

    invoke-virtual {v2}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 398
    invoke-virtual {v0}, Lorg/rootcommands/Toolbox$LsCommand;->getPermissions()Ljava/lang/String;

    move-result-object v1

    .line 401
    .end local v0           #lsCommand:Lorg/rootcommands/Toolbox$LsCommand;
    :cond_0
    return-object v1
.end method

.method public getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 747
    invoke-static {}, Lorg/rootcommands/Remounter;->getMounts()Ljava/util/ArrayList;

    move-result-object v2

    .line 748
    .local v2, mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/rootcommands/Mount;>;"
    if-eqz v2, :cond_2

    .line 749
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/rootcommands/Mount;

    .line 750
    .local v1, mount:Lorg/rootcommands/Mount;
    invoke-virtual {v1}, Lorg/rootcommands/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 751
    const-string v4, "RootCommands"

    invoke-virtual {v1}, Lorg/rootcommands/Mount;->getFlags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {v1}, Lorg/rootcommands/Mount;->getFlags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 756
    .end local v1           #mount:Lorg/rootcommands/Mount;
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    .line 758
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
.end method

.method public getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    const-string v2, "RootCommands"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find symlink for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v1, 0x0

    .line 448
    .local v1, symlink:Ljava/lang/String;
    new-instance v0, Lorg/rootcommands/Toolbox$LsCommand;

    invoke-direct {v0, p0, p1}, Lorg/rootcommands/Toolbox$LsCommand;-><init>(Lorg/rootcommands/Toolbox;Ljava/lang/String;)V

    .line 449
    .local v0, lsCommand:Lorg/rootcommands/Toolbox$LsCommand;
    iget-object v2, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v2, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v2

    invoke-virtual {v2}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 451
    invoke-virtual {v0}, Lorg/rootcommands/Toolbox$LsCommand;->getSymlink()Ljava/lang/String;

    move-result-object v1

    .line 453
    return-object v1
.end method

.method public hasEnoughSpaceOnPartition(Ljava/lang/String;J)Z
    .locals 12
    .parameter "target"
    .parameter "size"

    .prologue
    .line 777
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 779
    .local v6, directory:Ljava/lang/String;
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 780
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v4, v9

    .line 781
    .local v4, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 782
    .local v0, availableBlocks:J
    mul-long v2, v0, v4

    .line 784
    .local v2, availableSpace:J
    const-string v9, "RootCommands"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Checking for enough space: Target: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", directory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", availableSpace: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/rootcommands/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    cmp-long v9, p2, v2

    if-gez v9, :cond_0

    .line 789
    const/4 v9, 0x1

    .line 798
    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v6           #directory:Ljava/lang/String;
    .end local v8           #stat:Landroid/os/StatFs;
    :goto_0
    return v9

    .line 791
    .restart local v0       #availableBlocks:J
    .restart local v2       #availableSpace:J
    .restart local v4       #blockSize:J
    .restart local v6       #directory:Ljava/lang/String;
    .restart local v8       #stat:Landroid/os/StatFs;
    :cond_0
    const-string v9, "RootCommands"

    const-string v10, "Not enough space on partition!"

    invoke-static {v9, v10}, Lorg/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    const/4 v9, 0x0

    goto :goto_0

    .line 794
    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v6           #directory:Ljava/lang/String;
    .end local v8           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v7

    .line 797
    .local v7, e:Ljava/lang/Exception;
    const-string v9, "RootCommands"

    const-string v10, "Problem while getting available space on partition!"

    invoke-static {v9, v10, v7}, Lorg/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 798
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public isBinaryRunning(Ljava/lang/String;)Z
    .locals 2
    .parameter "binaryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_bin.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/rootcommands/Toolbox;->isProcessRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .locals 2
    .parameter "processName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lorg/rootcommands/Toolbox$PsCommand;

    invoke-direct {v0, p0, p1}, Lorg/rootcommands/Toolbox$PsCommand;-><init>(Lorg/rootcommands/Toolbox;Ljava/lang/String;)V

    .line 217
    .local v0, psCommand:Lorg/rootcommands/Toolbox$PsCommand;
    iget-object v1, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v1, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v1

    invoke-virtual {v1}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 220
    invoke-virtual {v0}, Lorg/rootcommands/Toolbox$PsCommand;->getPids()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const/4 v1, 0x1

    .line 223
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRootAccessGiven()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lorg/rootcommands/command/SimpleCommand;

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "toolbox id"

    aput-object v4, v3, v2

    invoke-direct {v0, v3}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 73
    .local v0, idCommand:Lorg/rootcommands/command/SimpleCommand;
    iget-object v3, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v3, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v3

    invoke-virtual {v3}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 75
    invoke-virtual {v0}, Lorg/rootcommands/command/SimpleCommand;->getOutput()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uid=0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public killAll(Ljava/lang/String;)Z
    .locals 7
    .parameter "processName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    const-string v4, "RootCommands"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Killing process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v1, Lorg/rootcommands/Toolbox$PsCommand;

    invoke-direct {v1, p0, p1}, Lorg/rootcommands/Toolbox$PsCommand;-><init>(Lorg/rootcommands/Toolbox;Ljava/lang/String;)V

    .line 167
    .local v1, psCommand:Lorg/rootcommands/Toolbox$PsCommand;
    iget-object v4, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v4, v1}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v4

    invoke-virtual {v4}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 170
    invoke-virtual {v1}, Lorg/rootcommands/Toolbox$PsCommand;->getPids()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    new-instance v0, Lorg/rootcommands/command/SimpleCommand;

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toolbox kill -9 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/rootcommands/Toolbox$PsCommand;->getPidsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {v0, v4}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 174
    .local v0, killCommand:Lorg/rootcommands/command/SimpleCommand;
    iget-object v4, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v4, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v4

    invoke-virtual {v4}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 176
    invoke-virtual {v0}, Lorg/rootcommands/command/SimpleCommand;->getExitCode()I

    move-result v4

    if-nez v4, :cond_0

    .line 183
    .end local v0           #killCommand:Lorg/rootcommands/command/SimpleCommand;
    :goto_0
    return v2

    .restart local v0       #killCommand:Lorg/rootcommands/command/SimpleCommand;
    :cond_0
    move v2, v3

    .line 179
    goto :goto_0

    .line 182
    .end local v0           #killCommand:Lorg/rootcommands/command/SimpleCommand;
    :cond_1
    const-string v2, "RootCommands"

    const-string v4, "No pid found! Nothing was killed!"

    invoke-static {v2, v4}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 183
    goto :goto_0
.end method

.method public killAllBinary(Ljava/lang/String;)Z
    .locals 2
    .parameter "binaryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_bin.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/rootcommands/Toolbox;->killAll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reboot(I)V
    .locals 4
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 551
    if-ne p1, v2, :cond_1

    .line 552
    const-string v2, "system_server"

    invoke-virtual {p0, v2}, Lorg/rootcommands/Toolbox;->killAll(Ljava/lang/String;)Z

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 567
    const-string v0, "reboot"

    .line 571
    .local v0, command:Ljava/lang/String;
    :goto_1
    new-instance v1, Lorg/rootcommands/command/SimpleCommand;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 572
    .local v1, rebootCommand:Lorg/rootcommands/command/SimpleCommand;
    iget-object v2, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v2, v1}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v2

    invoke-virtual {v2}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 574
    invoke-virtual {v1}, Lorg/rootcommands/command/SimpleCommand;->getExitCode()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 575
    const-string v2, "RootCommands"

    const-string v3, "Reboot failed!"

    invoke-static {v2, v3}, Lorg/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #rebootCommand:Lorg/rootcommands/command/SimpleCommand;
    :pswitch_0
    const-string v0, "reboot"

    .line 559
    .restart local v0       #command:Ljava/lang/String;
    goto :goto_1

    .line 561
    .end local v0           #command:Ljava/lang/String;
    :pswitch_1
    const-string v0, "reboot -p"

    .line 562
    .restart local v0       #command:Ljava/lang/String;
    goto :goto_1

    .line 564
    .end local v0           #command:Ljava/lang/String;
    :pswitch_2
    const-string v0, "reboot recovery"

    .line 565
    .restart local v0       #command:Ljava/lang/String;
    goto :goto_1

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "file"
    .parameter "mountType"

    .prologue
    .line 731
    new-instance v0, Lorg/rootcommands/Remounter;

    iget-object v1, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-direct {v0, v1}, Lorg/rootcommands/Remounter;-><init>(Lorg/rootcommands/Shell;)V

    .line 733
    .local v0, remounter:Lorg/rootcommands/Remounter;
    invoke-virtual {v0, p1, p2}, Lorg/rootcommands/Remounter;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setFilePermissions(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "file"
    .parameter "permissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 418
    const-string v3, "RootCommands"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set permissions of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v0, Lorg/rootcommands/command/SimpleCommand;

    new-array v3, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toolbox chmod "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {v0, v3}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 421
    .local v0, chmodCommand:Lorg/rootcommands/command/SimpleCommand;
    iget-object v3, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v3, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v3

    invoke-virtual {v3}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 423
    invoke-virtual {v0}, Lorg/rootcommands/command/SimpleCommand;->getExitCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 426
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setSystemClock(J)V
    .locals 2
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    const-string v0, "/dev/alarm"

    new-instance v1, Lorg/rootcommands/Toolbox$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/rootcommands/Toolbox$1;-><init>(Lorg/rootcommands/Toolbox;J)V

    invoke-virtual {p0, v0, v1}, Lorg/rootcommands/Toolbox;->withWritePermissions(Ljava/lang/String;Lorg/rootcommands/Toolbox$WithPermissions;)V

    .line 692
    return-void
.end method

.method public toggleAdbDaemon(Z)V
    .locals 7
    .parameter "toggle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 812
    new-instance v0, Lorg/rootcommands/command/SimpleCommand;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "setprop persist.service.adb.enable 0"

    aput-object v3, v2, v4

    const-string v3, "stop adbd"

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 814
    .local v0, disableAdb:Lorg/rootcommands/command/SimpleCommand;
    new-instance v1, Lorg/rootcommands/command/SimpleCommand;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "setprop persist.service.adb.enable 1"

    aput-object v3, v2, v4

    const-string v3, "stop adbd"

    aput-object v3, v2, v5

    const-string v3, "sleep 1"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string v4, "start adbd"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lorg/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 817
    .local v1, enableAdb:Lorg/rootcommands/command/SimpleCommand;
    if-eqz p1, :cond_0

    .line 818
    iget-object v2, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v2, v1}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v2

    invoke-virtual {v2}, Lorg/rootcommands/command/Command;->waitForFinish()V

    .line 822
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v2, p0, Lorg/rootcommands/Toolbox;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v2, v0}, Lorg/rootcommands/Shell;->add(Lorg/rootcommands/command/Command;)Lorg/rootcommands/command/Command;

    move-result-object v2

    invoke-virtual {v2}, Lorg/rootcommands/command/Command;->waitForFinish()V

    goto :goto_0
.end method

.method public withPermission(Ljava/lang/String;Ljava/lang/String;Lorg/rootcommands/Toolbox$WithPermissions;)V
    .locals 1
    .parameter "file"
    .parameter "permission"
    .parameter "withPermissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Lorg/rootcommands/Toolbox;->getFilePermissions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, oldPermissions:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lorg/rootcommands/Toolbox;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;)Z

    .line 654
    invoke-virtual {p3}, Lorg/rootcommands/Toolbox$WithPermissions;->whileHavingPermissions()V

    .line 657
    invoke-virtual {p0, p1, v0}, Lorg/rootcommands/Toolbox;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;)Z

    .line 658
    return-void
.end method

.method public withWritePermissions(Ljava/lang/String;Lorg/rootcommands/Toolbox$WithPermissions;)V
    .locals 1
    .parameter "file"
    .parameter "withWritePermissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/rootcommands/util/BrokenBusyboxException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    const-string v0, "666"

    invoke-virtual {p0, p1, v0, p2}, Lorg/rootcommands/Toolbox;->withPermission(Ljava/lang/String;Ljava/lang/String;Lorg/rootcommands/Toolbox$WithPermissions;)V

    .line 673
    return-void
.end method
