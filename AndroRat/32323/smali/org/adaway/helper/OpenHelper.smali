.class public Lorg/adaway/helper/OpenHelper;
.super Ljava/lang/Object;
.source "OpenHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static openFileWithEditor(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 8
    .parameter "activity"
    .parameter "file"

    .prologue
    .line 67
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 70
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "text/plain"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f0600a5

    const v5, 0x7f0600a6

    const-string v6, "market://details?id=jp.sblo.pandora.jota"

    const-string v7, "Text Edit"

    invoke-static {v4, v5, v6, v7}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->newInstance(IILjava/lang/String;Ljava/lang/String;)Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;

    move-result-object v2

    .line 79
    .local v2, notFoundDialog:Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "notFoundDialog"

    invoke-virtual {v2, v4, v5}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openHostsFile(Landroid/support/v4/app/FragmentActivity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Lorg/rootcommands/Shell;->startRootShell()Lorg/rootcommands/Shell;

    move-result-object v1

    .line 46
    .local v1, rootShell:Lorg/rootcommands/Shell;
    new-instance v2, Lorg/rootcommands/Toolbox;

    invoke-direct {v2, v1}, Lorg/rootcommands/Toolbox;-><init>(Lorg/rootcommands/Shell;)V

    .line 48
    .local v2, tb:Lorg/rootcommands/Toolbox;
    sget-object v3, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    const-string v4, "RW"

    invoke-virtual {v2, v3, v4}, Lorg/rootcommands/Toolbox;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    const-string v3, "AdAway"

    const-string v4, "System partition could not be remounted as rw!"

    invoke-static {v3, v4}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    invoke-virtual {v1}, Lorg/rootcommands/Shell;->close()V

    .line 58
    .end local v1           #rootShell:Lorg/rootcommands/Shell;
    .end local v2           #tb:Lorg/rootcommands/Toolbox;
    :goto_1
    return-void

    .line 51
    .restart local v1       #rootShell:Lorg/rootcommands/Shell;
    .restart local v2       #tb:Lorg/rootcommands/Toolbox;
    :cond_0
    sget-object v3, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-static {p0, v3}, Lorg/adaway/helper/OpenHelper;->openFileWithEditor(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v1           #rootShell:Lorg/rootcommands/Shell;
    .end local v2           #tb:Lorg/rootcommands/Toolbox;
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AdAway"

    const-string v4, "Problem with root shell!"

    invoke-static {v3, v4, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
