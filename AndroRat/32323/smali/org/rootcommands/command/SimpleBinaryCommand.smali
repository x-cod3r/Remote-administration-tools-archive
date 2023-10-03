.class public Lorg/rootcommands/command/SimpleBinaryCommand;
.super Lorg/rootcommands/command/BinaryCommand;
.source "SimpleBinaryCommand.java"


# instance fields
.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "binaryName"
    .parameter "parameters"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/rootcommands/command/BinaryCommand;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/rootcommands/command/SimpleBinaryCommand;->sb:Ljava/lang/StringBuilder;

    .line 26
    return-void
.end method


# virtual methods
.method public afterExecution(II)V
    .locals 0
    .parameter "id"
    .parameter "exitCode"

    .prologue
    .line 35
    return-void
.end method

.method public getExitCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/rootcommands/command/SimpleBinaryCommand;->exitCode:I

    return v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/rootcommands/command/SimpleBinaryCommand;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public output(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "line"

    .prologue
    .line 30
    iget-object v0, p0, Lorg/rootcommands/command/SimpleBinaryCommand;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    return-void
.end method
