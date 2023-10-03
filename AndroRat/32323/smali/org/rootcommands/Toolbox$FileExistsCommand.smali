.class Lorg/rootcommands/Toolbox$FileExistsCommand;
.super Lorg/rootcommands/command/Command;
.source "Toolbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rootcommands/Toolbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileExistsCommand"
.end annotation


# instance fields
.field private file:Ljava/lang/String;

.field private fileExists:Z

.field final synthetic this$0:Lorg/rootcommands/Toolbox;


# direct methods
.method public constructor <init>(Lorg/rootcommands/Toolbox;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "file"

    .prologue
    const/4 v3, 0x0

    .line 587
    iput-object p1, p0, Lorg/rootcommands/Toolbox$FileExistsCommand;->this$0:Lorg/rootcommands/Toolbox;

    .line 588
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toolbox ls "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lorg/rootcommands/command/Command;-><init>([Ljava/lang/String;)V

    .line 585
    iput-boolean v3, p0, Lorg/rootcommands/Toolbox$FileExistsCommand;->fileExists:Z

    .line 589
    iput-object p2, p0, Lorg/rootcommands/Toolbox$FileExistsCommand;->file:Ljava/lang/String;

    .line 590
    return-void
.end method


# virtual methods
.method public afterExecution(II)V
    .locals 0
    .parameter "id"
    .parameter "exitCode"

    .prologue
    .line 605
    return-void
.end method

.method public isFileExists()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lorg/rootcommands/Toolbox$FileExistsCommand;->fileExists:Z

    return v0
.end method

.method public output(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "line"

    .prologue
    .line 598
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/rootcommands/Toolbox$FileExistsCommand;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/rootcommands/Toolbox$FileExistsCommand;->fileExists:Z

    .line 601
    :cond_0
    return-void
.end method
