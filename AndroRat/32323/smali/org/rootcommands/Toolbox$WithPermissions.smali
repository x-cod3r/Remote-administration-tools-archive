.class public abstract Lorg/rootcommands/Toolbox$WithPermissions;
.super Ljava/lang/Object;
.source "Toolbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rootcommands/Toolbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "WithPermissions"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/rootcommands/Toolbox;


# direct methods
.method public constructor <init>(Lorg/rootcommands/Toolbox;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lorg/rootcommands/Toolbox$WithPermissions;->this$0:Lorg/rootcommands/Toolbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract whileHavingPermissions()V
.end method
