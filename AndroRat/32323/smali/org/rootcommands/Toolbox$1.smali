.class Lorg/rootcommands/Toolbox$1;
.super Lorg/rootcommands/Toolbox$WithPermissions;
.source "Toolbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/rootcommands/Toolbox;->setSystemClock(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/rootcommands/Toolbox;

.field final synthetic val$millis:J


# direct methods
.method constructor <init>(Lorg/rootcommands/Toolbox;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lorg/rootcommands/Toolbox$1;->this$0:Lorg/rootcommands/Toolbox;

    iput-wide p2, p0, Lorg/rootcommands/Toolbox$1;->val$millis:J

    invoke-direct {p0, p1}, Lorg/rootcommands/Toolbox$WithPermissions;-><init>(Lorg/rootcommands/Toolbox;)V

    return-void
.end method


# virtual methods
.method whileHavingPermissions()V
    .locals 2

    .prologue
    .line 689
    iget-wide v0, p0, Lorg/rootcommands/Toolbox$1;->val$millis:J

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 690
    return-void
.end method
