.class public Lorg/rootcommands/command/SimpleCommand;
.super Lorg/rootcommands/command/Command;
.source "SimpleCommand.java"


# instance fields
.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/rootcommands/command/Command;-><init>([Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/rootcommands/command/SimpleCommand;->sb:Ljava/lang/StringBuilder;

    .line 24
    return-void
.end method


# virtual methods
.method public afterExecution(II)V
    .locals 0
    .parameter "id"
    .parameter "exitCode"

    .prologue
    .line 33
    return-void
.end method

.method public getExitCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/rootcommands/command/SimpleCommand;->exitCode:I

    return v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/rootcommands/command/SimpleCommand;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public output(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "line"

    .prologue
    .line 28
    iget-object v0, p0, Lorg/rootcommands/command/SimpleCommand;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    return-void
.end method
