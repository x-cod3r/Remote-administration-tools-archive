.class final Lorg/adaway/helper/ImportExportHelper$1;
.super Landroid/os/AsyncTask;
.source "ImportExportHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adaway/helper/ImportExportHelper;->onActivityResultHandleImport(Landroid/content/Context;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mApplyProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lorg/adaway/helper/ImportExportHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/adaway/helper/ImportExportHelper$1;->val$result:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/adaway/helper/ImportExportHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "unused"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, blacklist:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 105
    .local v6, whitelist:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 107
    .local v5, redirectionList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lorg/adaway/helper/ImportExportHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lorg/adaway/helper/ImportExportHelper$1;->val$result:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 108
    .local v2, is:Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 110
    .local v4, reader:Ljava/io/BufferedReader;
    new-instance v3, Lorg/adaway/util/HostsParser;

    const/4 v7, 0x1

    invoke-direct {v3, v4, v7}, Lorg/adaway/util/HostsParser;-><init>(Ljava/io/BufferedReader;Z)V

    .line 111
    .local v3, parser:Lorg/adaway/util/HostsParser;
    invoke-virtual {v3}, Lorg/adaway/util/HostsParser;->getBlacklist()Ljava/util/HashSet;

    move-result-object v0

    .line 112
    invoke-virtual {v3}, Lorg/adaway/util/HostsParser;->getWhitelist()Ljava/util/HashSet;

    move-result-object v6

    .line 113
    invoke-virtual {v3}, Lorg/adaway/util/HostsParser;->getRedirectionList()Ljava/util/HashMap;

    move-result-object v5

    .line 115
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #parser:Lorg/adaway/util/HostsParser;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :goto_0
    iget-object v7, p0, Lorg/adaway/helper/ImportExportHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v7, v0}, Lorg/adaway/provider/ProviderHelper;->importBlacklist(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 123
    iget-object v7, p0, Lorg/adaway/helper/ImportExportHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v7, v6}, Lorg/adaway/provider/ProviderHelper;->importWhitelist(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 124
    iget-object v7, p0, Lorg/adaway/helper/ImportExportHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v7, v5}, Lorg/adaway/provider/ProviderHelper;->importRedirectionList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 127
    const/4 v7, 0x0

    return-object v7

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "AdAway"

    const-string v8, "File not found!"

    invoke-static {v7, v8, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 119
    .local v1, e:Ljava/io/IOException;
    const-string v7, "AdAway"

    const-string v8, "IO Exception"

    invoke-static {v7, v8, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/adaway/helper/ImportExportHelper$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "unused"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lorg/adaway/helper/ImportExportHelper$1;->mApplyProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 133
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/adaway/helper/ImportExportHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/adaway/helper/ImportExportHelper$1;->mApplyProgressDialog:Landroid/app/ProgressDialog;

    .line 134
    iget-object v0, p0, Lorg/adaway/helper/ImportExportHelper$1;->mApplyProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/adaway/helper/ImportExportHelper$1;->val$context:Landroid/content/Context;

    const v2, 0x7f06004a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lorg/adaway/helper/ImportExportHelper$1;->mApplyProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 136
    iget-object v0, p0, Lorg/adaway/helper/ImportExportHelper$1;->mApplyProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 137
    iget-object v0, p0, Lorg/adaway/helper/ImportExportHelper$1;->mApplyProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 138
    return-void
.end method
