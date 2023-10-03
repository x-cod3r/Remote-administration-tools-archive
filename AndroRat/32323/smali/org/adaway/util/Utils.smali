.class public Lorg/adaway/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAndroidOnline(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 168
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 170
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 171
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v2, 0x1

    .line 174
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAndroidRooted(Landroid/app/Activity;)Z
    .locals 7
    .parameter "activity"

    .prologue
    .line 63
    const/4 v4, 0x0

    .line 69
    .local v4, rootAccess:Z
    invoke-static {}, Lorg/rootcommands/RootCommands;->rootAccessGiven()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    const/4 v4, 0x1

    .line 95
    :goto_0
    return v4

    .line 72
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 74
    const v5, 0x1080027

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 75
    const v5, 0x7f060082

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 78
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 79
    .local v3, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030028

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, dialogView:Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/adaway/util/Utils$1;

    invoke-direct {v6, p0}, Lorg/adaway/util/Utils$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 91
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static isInForeground(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 221
    new-instance v2, Lorg/adaway/util/Utils$4;

    invoke-direct {v2}, Lorg/adaway/util/Utils$4;-><init>()V

    .line 247
    .local v2, foregroundCheckTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Landroid/content/Context;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 249
    .local v1, foreground:Z
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Landroid/content/Context;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 256
    :goto_0
    return v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "AdAway"

    const-string v4, "IsInForeground InterruptedException"

    invoke-static {v3, v4, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 252
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    const-string v3, "AdAway"

    const-string v4, "IsInForeground ExecutionException"

    invoke-static {v3, v4, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isInstalledOnSdCard(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 187
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x7

    if-le v6, v7, :cond_2

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 190
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 191
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 192
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_1

    .line 210
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    move v4, v5

    .line 192
    goto :goto_0

    .line 193
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 200
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, filesDir:Ljava/lang/String;
    const-string v6, "/data/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 202
    goto :goto_0

    .line 203
    :cond_3
    const-string v6, "/mnt/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "/sdcard/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_0

    .end local v1           #filesDir:Ljava/lang/String;
    :goto_1
    move v4, v5

    .line 210
    goto :goto_0

    .line 206
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static rebootQuestion(Landroid/content/Context;II)V
    .locals 7
    .parameter "context"
    .parameter "titleR"
    .parameter "messageR"

    .prologue
    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 109
    const v5, 0x108009b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 113
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030029

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, dialogView:Landroid/view/View;
    const v5, 0x7f080058

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 117
    .local v4, text:Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v5, 0x7f060027

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/adaway/util/Utils$2;

    invoke-direct {v6, v1, p0}, Lorg/adaway/util/Utils$2;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    const v5, 0x7f060028

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/adaway/util/Utils$3;

    invoke-direct {v6, v1, p0}, Lorg/adaway/util/Utils$3;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 158
    .local v3, question:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 159
    return-void
.end method
