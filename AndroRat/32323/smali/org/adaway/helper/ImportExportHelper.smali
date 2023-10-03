.class public Lorg/adaway/helper/ImportExportHelper;
.super Ljava/lang/Object;
.source "ImportExportHelper.java"


# static fields
.field static final REQUEST_CODE_IMPORT:I = 0x2a


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exportLists(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 158
    new-instance v0, Lorg/adaway/helper/ImportExportHelper$2;

    invoke-direct {v0, p0}, Lorg/adaway/helper/ImportExportHelper$2;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, exportListsTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    return-void
.end method

.method public static onActivityResultHandleImport(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 91
    const/16 v2, 0x2a

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 95
    .local v1, result:Landroid/net/Uri;
    const-string v2, "AdAway"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File manager Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lorg/adaway/helper/ImportExportHelper$1;

    invoke-direct {v0, p0, v1}, Lorg/adaway/helper/ImportExportHelper$1;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 147
    .local v0, importListsTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    .end local v0           #importListsTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    .end local v1           #result:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public static openFileStream(Landroid/support/v4/app/FragmentActivity;)V
    .locals 7
    .parameter "activity"

    .prologue
    .line 64
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const/16 v3, 0x2a

    :try_start_0
    invoke-virtual {p0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0600a7

    const v4, 0x7f0600a8

    const-string v5, "market://details?id=org.openintents.filemanager"

    const-string v6, "OI File Manager"

    invoke-static {v3, v4, v5, v6}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->newInstance(IILjava/lang/String;Ljava/lang/String;)Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;

    move-result-object v2

    .line 75
    .local v2, notFoundDialog:Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "notFoundDialog"

    invoke-virtual {v2, v3, v4}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
