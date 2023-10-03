.class Lorg/rootcommands/Toolbox$2;
.super Lorg/rootcommands/Toolbox$WithPermissions;
.source "Toolbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/rootcommands/Toolbox;->adjustSystemClock(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/rootcommands/Toolbox;

.field final synthetic val$offset:J


# direct methods
.method constructor <init>(Lorg/rootcommands/Toolbox;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lorg/rootcommands/Toolbox$2;->this$0:Lorg/rootcommands/Toolbox;

    iput-wide p2, p0, Lorg/rootcommands/Toolbox$2;->val$offset:J

    invoke-direct {p0, p1}, Lorg/rootcommands/Toolbox$WithPermissions;-><init>(Lorg/rootcommands/Toolbox;)V

    return-void
.end method


# virtual methods
.method whileHavingPermissions()V
    .locals 4

    .prologue
    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/rootcommands/Toolbox$2;->val$offset:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 709
    return-void
.end method
