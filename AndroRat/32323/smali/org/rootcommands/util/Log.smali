.class public final Lorg/rootcommands/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 40
    sget-boolean v0, Lorg/rootcommands/RootCommands;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 46
    sget-boolean v0, Lorg/rootcommands/RootCommands;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 52
    sget-boolean v0, Lorg/rootcommands/RootCommands;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 58
    sget-boolean v0, Lorg/rootcommands/RootCommands;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 28
    sget-boolean v0, Lorg/rootcommands/RootCommands;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 34
    sget-boolean v0, Lorg/rootcommands/RootCommands;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    return-void
.end method
