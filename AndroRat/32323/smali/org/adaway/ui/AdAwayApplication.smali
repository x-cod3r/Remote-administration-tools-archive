.class public Lorg/adaway/ui/AdAwayApplication;
.super Landroid/app/Application;
.source "AdAwayApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 37
    :try_start_0
    const-string v0, "AdAway"

    const-string v1, "Setting workaround for AsyncTask..."

    invoke-static {v0, v1}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-static {p0}, Lorg/adaway/helper/PreferenceHelper;->getDebugEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lorg/adaway/util/Constants;->DEBUG:Z

    .line 45
    const-string v0, "AdAway"

    const-string v1, "Debug set to true by preference!"

    invoke-static {v0, v1}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-boolean v0, Lorg/adaway/util/Constants;->DEBUG:Z

    sput-boolean v0, Lorg/rootcommands/RootCommands;->DEBUG:Z

    .line 53
    :goto_1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 54
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/adaway/util/Constants;->DEBUG:Z

    .line 50
    sget-boolean v0, Lorg/adaway/util/Constants;->DEBUG:Z

    sput-boolean v0, Lorg/rootcommands/RootCommands;->DEBUG:Z

    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method
