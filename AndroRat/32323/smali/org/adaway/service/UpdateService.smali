.class public Lorg/adaway/service/UpdateService;
.super Lcom/commonsware/cwac/wakeful/WakefulIntentService;
.source "UpdateService.java"


# static fields
.field public static final EXTRA_BACKGROUND_EXECUTION:Ljava/lang/String; = "org.adaway.BACKGROUND_EXECUTION"

.field private static final UPDATE_NOTIFICATION_ID:I = 0xa


# instance fields
.field private mApplyAfterCheck:Z

.field private mBackgroundExecution:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumberOfDownloads:I

.field private mNumberOfFailedDownloads:I

.field private mService:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "AdAwayUpdateService"

    invoke-direct {p0, v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private cancelUpdateNotification()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/adaway/service/UpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 275
    return-void
.end method

.method private checkForUpdates()I
    .locals 17

    .prologue
    .line 137
    const/4 v11, 0x0

    .line 139
    .local v11, updateAvailable:Z
    const/4 v10, 0x4

    .line 141
    .local v10, returnCode:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    invoke-static {v12}, Lorg/adaway/util/Utils;->isAndroidOnline(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 143
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/adaway/service/UpdateService;->mNumberOfFailedDownloads:I

    .line 144
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/adaway/service/UpdateService;->mNumberOfDownloads:I

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    invoke-static {v12}, Lorg/adaway/provider/ProviderHelper;->getEnabledHostsSourcesCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v8

    .line 150
    .local v8, enabledHostsSourcesCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 153
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/adaway/service/UpdateService;->mNumberOfDownloads:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/adaway/service/UpdateService;->mNumberOfDownloads:I

    .line 156
    const-string v12, "url"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, currentUrl:Ljava/lang/String;
    const-string v12, "last_modified_local"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 163
    .local v2, currentLastModifiedLocal:J
    :try_start_0
    const-string v12, "AdAway"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Checking hosts file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/adaway/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    .local v9, mURL:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 169
    .local v1, connection:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v4

    .line 171
    .local v4, currentLastModifiedOnline:J
    const-string v12, "AdAway"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mConnectionLastModified: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    invoke-static {v14, v4, v5}, Lorg/adaway/util/DateUtils;->longToDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v12, "AdAway"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCurrentLastModified: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    invoke-static {v14, v2, v3}, Lorg/adaway/util/DateUtils;->longToDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 187
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 190
    cmp-long v12, v4, v2

    if-lez v12, :cond_1

    .line 191
    const/4 v11, 0x1

    .line 195
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    const-string v13, "_id"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v12, v13, v14, v4, v5}, Lorg/adaway/provider/ProviderHelper;->updateHostsSourceLastModifiedOnline(Landroid/content/Context;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1           #connection:Ljava/net/URLConnection;
    .end local v4           #currentLastModifiedOnline:J
    .end local v9           #mURL:Ljava/net/URL;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 215
    .end local v2           #currentLastModifiedLocal:J
    .end local v6           #currentUrl:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_3

    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lorg/adaway/service/UpdateService;->mNumberOfDownloads:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/adaway/service/UpdateService;->mNumberOfFailedDownloads:I

    if-ne v12, v13, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lorg/adaway/service/UpdateService;->mNumberOfDownloads:I

    if-eqz v12, :cond_4

    .line 221
    const/4 v10, 0x6

    .line 234
    .end local v8           #enabledHostsSourcesCursor:Landroid/database/Cursor;
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 235
    const/4 v10, 0x3

    .line 239
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    sget-object v13, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-static {v12, v13}, Lorg/adaway/util/ApplyUtils;->isHostsFileCorrect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 240
    const/4 v10, 0x5

    .line 243
    :cond_6
    return v10

    .line 200
    .restart local v2       #currentLastModifiedLocal:J
    .restart local v6       #currentUrl:Ljava/lang/String;
    .restart local v8       #enabledHostsSourcesCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 201
    .local v7, e:Ljava/lang/Exception;
    const-string v12, "AdAway"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception while downloading from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v7}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    move-object/from16 v0, p0

    iget v12, v0, Lorg/adaway/service/UpdateService;->mNumberOfFailedDownloads:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/adaway/service/UpdateService;->mNumberOfFailedDownloads:I

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    const-string v13, "_id"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x0

    invoke-static/range {v12 .. v16}, Lorg/adaway/provider/ProviderHelper;->updateHostsSourceLastModifiedOnline(Landroid/content/Context;JJ)V

    goto :goto_0

    .line 225
    .end local v2           #currentLastModifiedLocal:J
    .end local v6           #currentUrl:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #enabledHostsSourcesCursor:Landroid/database/Cursor;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/adaway/service/UpdateService;->mBackgroundExecution:Z

    if-nez v12, :cond_8

    .line 226
    const/4 v10, 0x7

    goto :goto_1

    .line 228
    :cond_8
    const-string v12, "AdAway"

    const-string v13, "Should not happen! In background execution is no connection available!"

    invoke-static {v12, v13}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showUpdateNotification()V
    .locals 15

    .prologue
    const v14, 0x7f06004d

    const v13, 0x7f060023

    const/4 v12, 0x0

    .line 250
    const v4, 0x7f020085

    .line 251
    .local v4, icon:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v13}, Lorg/adaway/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v14}, Lorg/adaway/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 255
    .local v8, when:J
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v4, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 256
    .local v5, notification:Landroid/app/Notification;
    const/4 v10, 0x2

    iput v10, v5, Landroid/app/Notification;->flags:I

    .line 258
    invoke-virtual {p0}, Lorg/adaway/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 259
    .local v3, context:Landroid/content/Context;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v13}, Lorg/adaway/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v14}, Lorg/adaway/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, contentTitle:Ljava/lang/CharSequence;
    const v10, 0x7f060050

    invoke-virtual {p0, v10}, Lorg/adaway/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, contentText:Ljava/lang/CharSequence;
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lorg/adaway/ui/BaseActivity;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v6, notificationIntent:Landroid/content/Intent;
    invoke-static {p0, v12, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 265
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 267
    iget-object v10, p0, Lorg/adaway/service/UpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v11, 0xa

    invoke-virtual {v10, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 268
    return-void
.end method


# virtual methods
.method public doWakefulWork(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 103
    iget-object v2, p0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    invoke-static {v2}, Lorg/adaway/util/Utils;->isInForeground(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-direct {p0}, Lorg/adaway/service/UpdateService;->showUpdateNotification()V

    .line 107
    :cond_0
    iget-object v2, p0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    iget-object v3, p0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    const v4, 0x7f06004d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    const v5, 0x7f060050

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    invoke-direct {p0}, Lorg/adaway/service/UpdateService;->checkForUpdates()I

    move-result v0

    .line 112
    .local v0, result:I
    const-string v2, "AdAway"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update Check result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lorg/adaway/service/UpdateService;->cancelUpdateNotification()V

    .line 117
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lorg/adaway/service/UpdateService;->mApplyAfterCheck:Z

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    const-class v3, Lorg/adaway/service/ApplyService;

    invoke-static {v2, v3}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/adaway/service/UpdateService;->mNumberOfDownloads:I

    iget v4, p0, Lorg/adaway/service/UpdateService;->mNumberOfFailedDownloads:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/adaway/service/UpdateService;->mNumberOfDownloads:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, successfulDownloads:Ljava/lang/String;
    iget-object v2, p0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lorg/adaway/helper/ResultHelper;->showNotificationBasedOnResult(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 74
    iput-object p0, p0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    .line 76
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lorg/adaway/service/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lorg/adaway/service/UpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 79
    iput-boolean v2, p0, Lorg/adaway/service/UpdateService;->mBackgroundExecution:Z

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 82
    const-string v1, "org.adaway.BACKGROUND_EXECUTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "org.adaway.BACKGROUND_EXECUTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/adaway/service/UpdateService;->mBackgroundExecution:Z

    .line 88
    :cond_0
    iput-boolean v2, p0, Lorg/adaway/service/UpdateService;->mApplyAfterCheck:Z

    .line 89
    iget-boolean v1, p0, Lorg/adaway/service/UpdateService;->mBackgroundExecution:Z

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lorg/adaway/service/UpdateService;->mService:Landroid/content/Context;

    invoke-static {v1}, Lorg/adaway/helper/PreferenceHelper;->getAutomaticUpdateDaily(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "org.adaway.BACKGROUND_EXECUTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/adaway/service/UpdateService;->mApplyAfterCheck:Z

    .line 95
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
