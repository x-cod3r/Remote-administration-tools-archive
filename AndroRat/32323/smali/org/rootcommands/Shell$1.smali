.class Lorg/rootcommands/Shell$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rootcommands/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/rootcommands/Shell;


# direct methods
.method constructor <init>(Lorg/rootcommands/Shell;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lorg/rootcommands/Shell$1;->this$0:Lorg/rootcommands/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lorg/rootcommands/Shell$1;->this$0:Lorg/rootcommands/Shell;

    #calls: Lorg/rootcommands/Shell;->writeCommands()V
    invoke-static {v1}, Lorg/rootcommands/Shell;->access$000(Lorg/rootcommands/Shell;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RootCommands"

    const-string v2, "IO Exception"

    invoke-static {v1, v2, v0}, Lorg/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
