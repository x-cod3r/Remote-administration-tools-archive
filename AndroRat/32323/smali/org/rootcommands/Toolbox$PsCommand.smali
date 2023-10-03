.class Lorg/rootcommands/Toolbox$PsCommand;
.super Lorg/rootcommands/command/Command;
.source "Toolbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rootcommands/Toolbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PsCommand"
.end annotation


# instance fields
.field private pids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private processName:Ljava/lang/String;

.field private psPattern:Ljava/util/regex/Pattern;

.field private psRegex:Ljava/lang/String;

.field final synthetic this$0:Lorg/rootcommands/Toolbox;


# direct methods
.method public constructor <init>(Lorg/rootcommands/Toolbox;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "processName"

    .prologue
    .line 91
    iput-object p1, p0, Lorg/rootcommands/Toolbox$PsCommand;->this$0:Lorg/rootcommands/Toolbox;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "toolbox ps"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/rootcommands/command/Command;-><init>([Ljava/lang/String;)V

    .line 93
    iput-object p2, p0, Lorg/rootcommands/Toolbox$PsCommand;->processName:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/rootcommands/Toolbox$PsCommand;->pids:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^\\S+\\s+([0-9]+).*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/rootcommands/Toolbox$PsCommand;->psRegex:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lorg/rootcommands/Toolbox$PsCommand;->psRegex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/rootcommands/Toolbox$PsCommand;->psPattern:Ljava/util/regex/Pattern;

    .line 106
    return-void
.end method


# virtual methods
.method public afterExecution(II)V
    .locals 0
    .parameter "id"
    .parameter "exitCode"

    .prologue
    .line 146
    return-void
.end method

.method public getPids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/rootcommands/Toolbox$PsCommand;->pids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPidsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/rootcommands/Toolbox$PsCommand;->pids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public output(ILjava/lang/String;)V
    .locals 6
    .parameter "id"
    .parameter "line"

    .prologue
    .line 125
    iget-object v3, p0, Lorg/rootcommands/Toolbox$PsCommand;->processName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lorg/rootcommands/Toolbox$PsCommand;->psPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 130
    .local v2, psMatcher:Ljava/util/regex/Matcher;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, pid:Ljava/lang/String;
    iget-object v3, p0, Lorg/rootcommands/Toolbox$PsCommand;->pids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v3, "RootCommands"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v1           #pid:Ljava/lang/String;
    .end local v2           #psMatcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local v2       #psMatcher:Ljava/util/regex/Matcher;
    :cond_1
    const-string v3, "RootCommands"

    const-string v4, "Matching in ps command failed!"

    invoke-static {v3, v4}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "RootCommands"

    const-string v4, "Error with regex!"

    invoke-static {v3, v4, v0}, Lorg/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
