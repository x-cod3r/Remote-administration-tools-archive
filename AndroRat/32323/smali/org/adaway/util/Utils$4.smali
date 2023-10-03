.class final Lorg/adaway/util/Utils$4;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adaway/util/Utils;->isInForeground(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private isAppOnForeground(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 230
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 232
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 233
    .local v2, appProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v5

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 238
    .local v1, appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 240
    const/4 v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 225
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0, v0}, Lorg/adaway/util/Utils$4;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 221
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/adaway/util/Utils$4;->doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
