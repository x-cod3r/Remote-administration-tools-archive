.class public abstract Lorg/rootcommands/command/Command;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field brokenBusyboxDetected:Z

.field final command:[Ljava/lang/String;

.field exitCode:I

.field finished:Z

.field id:I

.field shell:Lorg/rootcommands/Shell;

.field timeout:I


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 1
    .parameter "timeout"
    .parameter "command"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lorg/rootcommands/command/Command;->finished:Z

    .line 32
    iput-boolean v0, p0, Lorg/rootcommands/command/Command;->brokenBusyboxDetected:Z

    .line 35
    sget v0, Lorg/rootcommands/RootCommands;->DEFAULT_TIMEOUT:I

    iput v0, p0, Lorg/rootcommands/command/Command;->timeout:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/rootcommands/command/Command;->shell:Lorg/rootcommands/Shell;

    .line 43
    iput-object p2, p0, Lorg/rootcommands/command/Command;->command:[Ljava/lang/String;

    .line 44
    iput p1, p0, Lorg/rootcommands/command/Command;->timeout:I

    .line 45
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "command"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lorg/rootcommands/command/Command;->finished:Z

    .line 32
    iput-boolean v0, p0, Lorg/rootcommands/command/Command;->brokenBusyboxDetected:Z

    .line 35
    sget v0, Lorg/rootcommands/RootCommands;->DEFAULT_TIMEOUT:I

    iput v0, p0, Lorg/rootcommands/command/Command;->timeout:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/rootcommands/command/Command;->shell:Lorg/rootcommands/Shell;

    .line 39
    iput-object p1, p0, Lorg/rootcommands/command/Command;->command:[Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public addedToShell(Lorg/rootcommands/Shell;I)V
    .locals 0
    .parameter "shell"
    .parameter "id"

    .prologue
    .line 54
    iput-object p1, p0, Lorg/rootcommands/command/Command;->shell:Lorg/rootcommands/Shell;

    .line 55
    iput p2, p0, Lorg/rootcommands/command/Command;->id:I

    .line 56
    return-void
.end method

.method public abstract afterExecution(II)V
.end method

.method public commandFinished(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 108
    const-string v0, "RootCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finished."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/rootcommands/command/Command;->command:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/rootcommands/command/Command;->command:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 2>&1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    const-string v2, "RootCommands"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending command(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public abstract output(ILjava/lang/String;)V
.end method

.method public processAfterExecution(I)V
    .locals 3
    .parameter "exitCode"

    .prologue
    .line 100
    const-string v0, "RootCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/rootcommands/command/Command;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ExitCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lorg/rootcommands/command/Command;->id:I

    invoke-virtual {p0, v0, p1}, Lorg/rootcommands/command/Command;->afterExecution(II)V

    .line 103
    return-void
.end method

.method public processOutput(Ljava/lang/String;)V
    .locals 3
    .parameter "line"

    .prologue
    .line 79
    const-string v0, "RootCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/rootcommands/command/Command;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "Value too large for defined data type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "RootCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Busybox is broken with high probability due to line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/rootcommands/command/Command;->brokenBusyboxDetected:Z

    .line 94
    :cond_0
    iget v0, p0, Lorg/rootcommands/command/Command;->id:I

    invoke-virtual {p0, v0, p1}, Lorg/rootcommands/command/Command;->output(ILjava/lang/String;)V

    .line 95
    return-void
.end method

.method public setExitCode(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iput p1, p0, Lorg/rootcommands/command/Command;->exitCode:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/rootcommands/command/Command;->finished:Z

    .line 115
    iget v0, p0, Lorg/rootcommands/command/Command;->id:I

    invoke-virtual {p0, v0}, Lorg/rootcommands/command/Command;->commandFinished(I)V

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit p0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminate(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/rootcommands/command/Command;->shell:Lorg/rootcommands/Shell;

    invoke-virtual {v0}, Lorg/rootcommands/Shell;->close()V

    .line 128
    const-string v0, "RootCommands"

    const-string v1, "Terminating the shell."

    invoke-static {v0, v1}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lorg/rootcommands/command/Command;->terminated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public terminated(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 135
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/rootcommands/command/Command;->setExitCode(I)V

    .line 136
    const-string v0, "RootCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/rootcommands/command/Command;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not finish, because of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public waitForFinish()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Lorg/rootcommands/util/BrokenBusyboxException;
        }
    .end annotation

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lorg/rootcommands/command/Command;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 150
    :try_start_1
    iget v1, p0, Lorg/rootcommands/command/Command;->timeout:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lorg/rootcommands/command/Command;->finished:Z

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/rootcommands/command/Command;->finished:Z

    .line 157
    const-string v1, "Timeout"

    invoke-virtual {p0, v1}, Lorg/rootcommands/command/Command;->terminate(Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Timeout has occurred."

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "RootCommands"

    const-string v2, "InterruptedException in waitForFinish()"

    invoke-static {v1, v2, v0}, Lorg/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 162
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-boolean v1, p0, Lorg/rootcommands/command/Command;->brokenBusyboxDetected:Z

    if-eqz v1, :cond_2

    .line 163
    new-instance v1, Lorg/rootcommands/util/BrokenBusyboxException;

    invoke-direct {v1}, Lorg/rootcommands/util/BrokenBusyboxException;-><init>()V

    throw v1

    .line 166
    :cond_2
    iget v1, p0, Lorg/rootcommands/command/Command;->exitCode:I

    invoke-virtual {p0, v1}, Lorg/rootcommands/command/Command;->processAfterExecution(I)V

    .line 167
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    return-void
.end method

.method public writeCommand(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/rootcommands/command/Command;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 76
    return-void
.end method
