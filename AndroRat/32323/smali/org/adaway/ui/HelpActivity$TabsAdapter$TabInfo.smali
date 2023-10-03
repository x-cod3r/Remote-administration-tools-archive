.class final Lorg/adaway/ui/HelpActivity$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adaway/ui/HelpActivity$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "_args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, _class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/adaway/ui/HelpActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 120
    iput-object p2, p0, Lorg/adaway/ui/HelpActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lorg/adaway/ui/HelpActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lorg/adaway/ui/HelpActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lorg/adaway/ui/HelpActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lorg/adaway/ui/HelpActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
