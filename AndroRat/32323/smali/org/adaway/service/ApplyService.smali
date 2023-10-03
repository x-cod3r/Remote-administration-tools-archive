.class public Lorg/adaway/service/ApplyService;
.super Lcom/commonsware/cwac/wakeful/WakefulIntentService;
.source "ApplyService.java"


# static fields
.field private static final APPLY_NOTIFICATION_ID:I = 0x14


# instance fields
.field private mApplyNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumberOfDownloads:I

.field private mNumberOfFailedDownloads:I

.field private mService:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "AdAwayApplyService"

    invoke-direct {p0, v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private cancelApplyNotification()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lorg/adaway/service/ApplyService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 537
    return-void
.end method

.method private download()I
    .locals 24

    .prologue
    .line 137
    const/16 v18, 0x1

    .line 139
    .local v18, returnCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/adaway/util/Utils;->isAndroidOnline(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f060071

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f060071

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f060071

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/adaway/service/ApplyService;->showApplyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/16 v17, 0x0

    .line 149
    .local v17, out:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "hosts_downloaded"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v17

    .line 152
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/adaway/service/ApplyService;->mNumberOfFailedDownloads:I

    .line 153
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/adaway/service/ApplyService;->mNumberOfDownloads:I

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/adaway/provider/ProviderHelper;->getEnabledHostsSourcesCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v14

    .line 159
    .local v14, enabledHostsSourcesCursor:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/adaway/service/ApplyService;->mNumberOfDownloads:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/adaway/service/ApplyService;->mNumberOfDownloads:I

    .line 164
    const/4 v15, 0x0

    .line 165
    .local v15, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 166
    .local v5, bis:Ljava/io/BufferedInputStream;
    const-string v19, "url"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    .line 170
    .local v11, currentUrl:Ljava/lang/String;
    :try_start_1
    const-string v19, "AdAway"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Downloading hosts file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/adaway/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f060071

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v11}, Lorg/adaway/service/ApplyService;->updateApplyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 178
    .local v16, mURL:Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 181
    .local v7, connection:Ljava/net/URLConnection;
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 182
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 184
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 185
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .local v6, bis:Ljava/io/BufferedInputStream;
    if-nez v15, :cond_1

    .line 186
    :try_start_2
    const-string v19, "AdAway"

    const-string v20, "Stream is null"

    invoke-static/range {v19 .. v20}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 191
    .local v12, data:[B
    const/4 v8, 0x0

    .line 194
    .local v8, count:I
    :goto_0
    invoke-virtual {v6, v12}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_9

    .line 195
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 209
    .end local v8           #count:I
    .end local v12           #data:[B
    :catch_0
    move-exception v13

    move-object v5, v6

    .line 210
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #connection:Ljava/net/URLConnection;
    .end local v16           #mURL:Ljava/net/URL;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .local v13, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v19, "AdAway"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception while downloading from "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lorg/adaway/service/ApplyService;->mNumberOfFailedDownloads:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/adaway/service/ApplyService;->mNumberOfFailedDownloads:I

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    invoke-static/range {v19 .. v23}, Lorg/adaway/provider/ProviderHelper;->updateHostsSourceLastModifiedOnline(Landroid/content/Context;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    if-eqz v17, :cond_2

    .line 223
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V

    .line 225
    :cond_2
    if-eqz v5, :cond_3

    .line 226
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 228
    :cond_3
    if-eqz v15, :cond_4

    .line 229
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 236
    .end local v13           #e:Ljava/io/IOException;
    :cond_4
    :goto_2
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-nez v19, :cond_0

    .line 240
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #currentUrl:Ljava/lang/String;
    .end local v15           #is:Ljava/io/InputStream;
    :cond_5
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v19

    if-nez v19, :cond_6

    .line 241
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/adaway/service/ApplyService;->mNumberOfDownloads:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/adaway/service/ApplyService;->mNumberOfFailedDownloads:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/adaway/service/ApplyService;->mNumberOfDownloads:I

    move/from16 v19, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v19, :cond_7

    .line 246
    const/16 v18, 0x6

    .line 253
    :cond_7
    if-eqz v17, :cond_8

    .line 254
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 264
    .end local v14           #enabledHostsSourcesCursor:Landroid/database/Cursor;
    .end local v17           #out:Ljava/io/FileOutputStream;
    :cond_8
    :goto_3
    return v18

    .line 199
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #connection:Ljava/net/URLConnection;
    .restart local v8       #count:I
    .restart local v11       #currentUrl:Ljava/lang/String;
    .restart local v12       #data:[B
    .restart local v14       #enabledHostsSourcesCursor:Landroid/database/Cursor;
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #mURL:Ljava/net/URL;
    .restart local v17       #out:Ljava/io/FileOutputStream;
    :cond_9
    :try_start_7
    sget-object v19, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 202
    invoke-virtual {v7}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v9

    .line 204
    .local v9, currentLastModifiedOnline:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v9, v10}, Lorg/adaway/provider/ProviderHelper;->updateHostsSourceLastModifiedOnline(Landroid/content/Context;JJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 222
    if-eqz v17, :cond_a

    .line 223
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V

    .line 225
    :cond_a
    if-eqz v6, :cond_b

    .line 226
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 228
    :cond_b
    if-eqz v15, :cond_c

    .line 229
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_c
    move-object v5, v6

    .line 233
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 231
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v13

    .line 232
    .local v13, e:Ljava/lang/Exception;
    :try_start_9
    const-string v19, "AdAway"

    const-string v20, "Exception on flush and closing streams."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 234
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .line 231
    .end local v7           #connection:Ljava/net/URLConnection;
    .end local v8           #count:I
    .end local v9           #currentLastModifiedOnline:J
    .end local v12           #data:[B
    .end local v16           #mURL:Ljava/net/URL;
    .local v13, e:Ljava/io/IOException;
    :catch_2
    move-exception v13

    .line 232
    .local v13, e:Ljava/lang/Exception;
    const-string v19, "AdAway"

    const-string v20, "Exception on flush and closing streams."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 248
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #currentUrl:Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #enabledHostsSourcesCursor:Landroid/database/Cursor;
    .end local v15           #is:Ljava/io/InputStream;
    :catch_3
    move-exception v13

    .line 249
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v19, "AdAway"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Private File can not be created, Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 250
    const/16 v18, 0x2

    .line 253
    if-eqz v17, :cond_8

    .line 254
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_3

    .line 256
    :catch_4
    move-exception v13

    .line 257
    const-string v19, "AdAway"

    const-string v20, "Exception on close of out."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 221
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v11       #currentUrl:Ljava/lang/String;
    .restart local v14       #enabledHostsSourcesCursor:Landroid/database/Cursor;
    .restart local v15       #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v19

    .line 222
    :goto_4
    if-eqz v17, :cond_d

    .line 223
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V

    .line 225
    :cond_d
    if-eqz v5, :cond_e

    .line 226
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 228
    :cond_e
    if-eqz v15, :cond_f

    .line 229
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 233
    :cond_f
    :goto_5
    :try_start_d
    throw v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 252
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #currentUrl:Ljava/lang/String;
    .end local v14           #enabledHostsSourcesCursor:Landroid/database/Cursor;
    .end local v15           #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v19

    .line 253
    if-eqz v17, :cond_10

    .line 254
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 258
    :cond_10
    :goto_6
    throw v19

    .line 231
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v11       #currentUrl:Ljava/lang/String;
    .restart local v14       #enabledHostsSourcesCursor:Landroid/database/Cursor;
    .restart local v15       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v13

    .line 232
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_f
    const-string v20, "AdAway"

    const-string v21, "Exception on flush and closing streams."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_5

    .line 256
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #currentUrl:Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v15           #is:Ljava/io/InputStream;
    :catch_6
    move-exception v13

    .line 257
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v19, "AdAway"

    const-string v20, "Exception on close of out."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 256
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #enabledHostsSourcesCursor:Landroid/database/Cursor;
    :catch_7
    move-exception v13

    .line 257
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v20, "AdAway"

    const-string v21, "Exception on close of out."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 261
    .end local v13           #e:Ljava/lang/Exception;
    .end local v17           #out:Ljava/io/FileOutputStream;
    :cond_11
    const/16 v18, 0x7

    goto/16 :goto_3

    .line 221
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #connection:Ljava/net/URLConnection;
    .restart local v11       #currentUrl:Ljava/lang/String;
    .restart local v14       #enabledHostsSourcesCursor:Landroid/database/Cursor;
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #mURL:Ljava/net/URL;
    .restart local v17       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v19

    move-object v5, v6

    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 209
    .end local v7           #connection:Ljava/net/URLConnection;
    .end local v16           #mURL:Ljava/net/URL;
    :catch_8
    move-exception v13

    goto/16 :goto_1
.end method

.method private showApplyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentText"

    .prologue
    const v8, 0x7f060023

    const/4 v7, 0x0

    .line 490
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    const-class v4, Lorg/adaway/ui/BaseActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x1000

    invoke-static {v3, v7, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 495
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 498
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020085

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, p2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Lorg/adaway/service/ApplyService;->mApplyNotification:Landroid/app/Notification;

    .line 500
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mApplyNotification:Landroid/app/Notification;

    const/16 v4, 0xa

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, contentTitleWithAppName:Ljava/lang/String;
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mApplyNotification:Landroid/app/Notification;

    invoke-virtual {v3, p1, v1, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 510
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x14

    iget-object v5, p0, Lorg/adaway/service/ApplyService;->mApplyNotification:Landroid/app/Notification;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 513
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-static {v3, p3, p4, v7}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 514
    return-void
.end method

.method private updateApplyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "contentTitle"
    .parameter "contentText"

    .prologue
    const/4 v6, 0x0

    .line 518
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    const-class v4, Lorg/adaway/ui/BaseActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x1000

    invoke-static {v3, v6, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 523
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    const v5, 0x7f060023

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, contentTitleWithAppName:Ljava/lang/String;
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mApplyNotification:Landroid/app/Notification;

    invoke-virtual {v3, p1, v1, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 529
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x14

    iget-object v5, p0, Lorg/adaway/service/ApplyService;->mApplyNotification:Landroid/app/Notification;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 532
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-static {v3, p2, p3, v6}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 533
    return-void
.end method


# virtual methods
.method apply()I
    .locals 30

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f060072

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f060072

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f060074

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/adaway/service/ApplyService;->showApplyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/16 v22, 0x1

    .line 282
    .local v22, returnCode:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "hosts_downloaded"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    .line 284
    .local v8, fis:Ljava/io/FileInputStream;
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 287
    .local v18, reader:Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 288
    .local v17, parser:Lorg/adaway/util/HostsParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/helper/PreferenceHelper;->getWhitelistRedirectionRules(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 289
    new-instance v17, Lorg/adaway/util/HostsParser;

    .end local v17           #parser:Lorg/adaway/util/HostsParser;
    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/adaway/util/HostsParser;-><init>(Ljava/io/BufferedReader;Z)V

    .line 294
    .restart local v17       #parser:Lorg/adaway/util/HostsParser;
    :goto_0
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f060072

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f060073

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/adaway/service/ApplyService;->updateApplyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/provider/ProviderHelper;->getEnabledWhitelistHashSet(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/adaway/util/HostsParser;->addWhitelist(Ljava/util/HashSet;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/provider/ProviderHelper;->getEnabledBlacklistHashSet(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/adaway/util/HostsParser;->addBlacklist(Ljava/util/HashSet;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/provider/ProviderHelper;->getEnabledRedirectionListHashMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/adaway/util/HostsParser;->addRedirectionList(Ljava/util/HashMap;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/provider/ProviderHelper;->getEnabledHostsSourcesArrayList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 311
    .local v7, enabledHostsSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v25, "AdAway"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Enabled hosts sources list: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {v17 .. v17}, Lorg/adaway/util/HostsParser;->compileList()V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f060072

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f060075

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/adaway/service/ApplyService;->updateApplyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "hosts"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 324
    .local v9, fos:Ljava/io/FileOutputStream;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "# This hosts file is generated by AdAway."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "# Please do not modify it directly, it will be overwritten when AdAway is applied again."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "# This file is generated from the following sources:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 326
    .local v10, header:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 329
    const/16 v24, 0x0

    .line 330
    .local v24, source:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 331
    .local v11, host:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "# "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 332
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 371
    .end local v7           #enabledHostsSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v10           #header:Ljava/lang/String;
    .end local v11           #host:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #parser:Lorg/adaway/util/HostsParser;
    .end local v18           #reader:Ljava/io/BufferedReader;
    .end local v24           #source:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 372
    .local v6, e:Ljava/io/FileNotFoundException;
    const-string v25, "AdAway"

    const-string v26, "file to read or file to write could not be found"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    const/16 v22, 0x2

    .line 382
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "hosts_downloaded"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f060072

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f060076

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/adaway/service/ApplyService;->updateApplyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/16 v23, 0x0

    .line 390
    .local v23, rootShell:Lorg/rootcommands/Shell;
    :try_start_1
    invoke-static {}, Lorg/rootcommands/Shell;->startRootShell()Lorg/rootcommands/Shell;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v23

    .line 397
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/helper/PreferenceHelper;->getApplyMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "writeToSystem"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    sget-object v26, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/adaway/util/ApplyUtils;->copyHostsFile(Landroid/content/Context;Ljava/lang/String;Lorg/rootcommands/Shell;)V
    :try_end_2
    .catch Lorg/adaway/util/NotEnoughSpaceException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/adaway/util/RemountException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/adaway/util/CommandException; {:try_start_2 .. :try_end_2} :catch_5

    .line 423
    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "hosts"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/provider/ProviderHelper;->updateAllEnabledHostsSourcesLastModifiedLocalFromOnline(Landroid/content/Context;)V

    .line 432
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/helper/PreferenceHelper;->getApplyMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "writeToSystem"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    sget-object v26, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-static/range {v25 .. v26}, Lorg/adaway/util/ApplyUtils;->isHostsFileCorrect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 438
    const/16 v22, 0x8

    .line 468
    :cond_1
    :goto_5
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Lorg/rootcommands/Shell;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 474
    :goto_6
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/util/ApplyUtils;->isApnProxySet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 476
    const-string v25, "AdAway"

    const-string v26, "APN proxy is set!"

    invoke-static/range {v25 .. v26}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/16 v22, 0x10

    .line 481
    :cond_2
    return v22

    .line 291
    .end local v23           #rootShell:Lorg/rootcommands/Shell;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v17       #parser:Lorg/adaway/util/HostsParser;
    .restart local v18       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    new-instance v17, Lorg/adaway/util/HostsParser;

    .end local v17           #parser:Lorg/adaway/util/HostsParser;
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/adaway/util/HostsParser;-><init>(Ljava/io/BufferedReader;Z)V

    .restart local v17       #parser:Lorg/adaway/util/HostsParser;
    goto/16 :goto_0

    .line 335
    .restart local v7       #enabledHostsSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #header:Ljava/lang/String;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v24       #source:Ljava/lang/String;
    :cond_4
    sget-object v25, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/helper/PreferenceHelper;->getRedirectionIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 340
    .local v19, redirectionIP:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "127.0.0.1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "localhost"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "::1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "localhost"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 343
    .local v16, localhost:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 345
    sget-object v25, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 349
    invoke-virtual/range {v17 .. v17}, Lorg/adaway/util/HostsParser;->getBlacklist()Ljava/util/HashSet;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 350
    .local v12, hostname:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 351
    .local v15, line:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    .line 375
    .end local v7           #enabledHostsSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v10           #header:Ljava/lang/String;
    .end local v12           #hostname:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #line:Ljava/lang/String;
    .end local v16           #localhost:Ljava/lang/String;
    .end local v17           #parser:Lorg/adaway/util/HostsParser;
    .end local v18           #reader:Ljava/io/BufferedReader;
    .end local v19           #redirectionIP:Ljava/lang/String;
    .end local v24           #source:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 376
    .local v6, e:Ljava/io/IOException;
    const-string v25, "AdAway"

    const-string v26, "files can not be written or read"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    const/16 v22, 0x2

    goto/16 :goto_2

    .line 357
    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #enabledHostsSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #header:Ljava/lang/String;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v16       #localhost:Ljava/lang/String;
    .restart local v17       #parser:Lorg/adaway/util/HostsParser;
    .restart local v18       #reader:Ljava/io/BufferedReader;
    .restart local v19       #redirectionIP:Ljava/lang/String;
    .restart local v24       #source:Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Lorg/adaway/util/HostsParser;->getRedirectionList()Ljava/util/HashMap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 358
    .local v14, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 359
    .local v20, redirectionItemHostname:Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 361
    .local v21, redirectionItemIP:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 362
    .restart local v15       #line:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_8

    .line 367
    .end local v14           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #line:Ljava/lang/String;
    .end local v20           #redirectionItemHostname:Ljava/lang/String;
    .end local v21           #redirectionItemIP:Ljava/lang/String;
    :cond_6
    sget-object v25, Lorg/adaway/util/Constants;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 369
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 391
    .end local v7           #enabledHostsSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v10           #header:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #localhost:Ljava/lang/String;
    .end local v17           #parser:Lorg/adaway/util/HostsParser;
    .end local v18           #reader:Ljava/io/BufferedReader;
    .end local v19           #redirectionIP:Ljava/lang/String;
    .end local v24           #source:Ljava/lang/String;
    .restart local v23       #rootShell:Lorg/rootcommands/Shell;
    :catch_2
    move-exception v6

    .line 392
    .local v6, e:Ljava/lang/Exception;
    const-string v25, "AdAway"

    const-string v26, "Problem opening a root shell!"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 400
    .end local v6           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/helper/PreferenceHelper;->getApplyMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "writeToDataData"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    sget-object v26, Lorg/adaway/util/Constants;->ANDROID_DATA_DATA_HOSTS:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/adaway/util/ApplyUtils;->copyHostsFile(Landroid/content/Context;Ljava/lang/String;Lorg/rootcommands/Shell;)V
    :try_end_6
    .catch Lorg/adaway/util/NotEnoughSpaceException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/adaway/util/RemountException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/adaway/util/CommandException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_4

    .line 408
    :catch_3
    move-exception v6

    .line 409
    .local v6, e:Lorg/adaway/util/NotEnoughSpaceException;
    const-string v25, "AdAway"

    const-string v26, "Exception: "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    const/16 v22, 0xa

    .line 420
    goto/16 :goto_4

    .line 403
    .end local v6           #e:Lorg/adaway/util/NotEnoughSpaceException;
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/helper/PreferenceHelper;->getApplyMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "customTarget"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/adaway/helper/PreferenceHelper;->getCustomTarget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/adaway/util/ApplyUtils;->copyHostsFile(Landroid/content/Context;Ljava/lang/String;Lorg/rootcommands/Shell;)V
    :try_end_7
    .catch Lorg/adaway/util/NotEnoughSpaceException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/adaway/util/RemountException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/adaway/util/CommandException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_4

    .line 412
    :catch_4
    move-exception v6

    .line 413
    .local v6, e:Lorg/adaway/util/RemountException;
    const-string v25, "AdAway"

    const-string v26, "Exception: "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    const/16 v22, 0xb

    .line 420
    goto/16 :goto_4

    .line 416
    .end local v6           #e:Lorg/adaway/util/RemountException;
    :catch_5
    move-exception v6

    .line 417
    .local v6, e:Lorg/adaway/util/CommandException;
    const-string v25, "AdAway"

    const-string v26, "Exception: "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    const/16 v22, 0xc

    goto/16 :goto_4

    .line 440
    .end local v6           #e:Lorg/adaway/util/CommandException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/helper/PreferenceHelper;->getApplyMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "writeToDataData"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    sget-object v26, Lorg/adaway/util/Constants;->ANDROID_DATA_DATA_HOSTS:Ljava/lang/String;

    invoke-static/range {v25 .. v26}, Lorg/adaway/util/ApplyUtils;->isHostsFileCorrect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 445
    const/16 v22, 0x8

    goto/16 :goto_5

    .line 447
    :cond_a
    sget-object v25, Lorg/adaway/util/Constants;->ANDROID_DATA_DATA_HOSTS:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/adaway/util/ApplyUtils;->isSymlinkCorrect(Ljava/lang/String;Lorg/rootcommands/Shell;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 448
    const/16 v22, 0x9

    goto/16 :goto_5

    .line 451
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/helper/PreferenceHelper;->getApplyMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "customTarget"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/adaway/helper/PreferenceHelper;->getCustomTarget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, customTarget:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v5}, Lorg/adaway/util/ApplyUtils;->isHostsFileCorrect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 458
    const/16 v22, 0x8

    goto/16 :goto_5

    .line 460
    :cond_c
    move-object/from16 v0, v23

    invoke-static {v5, v0}, Lorg/adaway/util/ApplyUtils;->isSymlinkCorrect(Ljava/lang/String;Lorg/rootcommands/Shell;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 461
    const/16 v22, 0x9

    goto/16 :goto_5

    .line 469
    .end local v5           #customTarget:Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 470
    .local v6, e:Ljava/lang/Exception;
    const-string v25, "AdAway"

    const-string v26, "Problem closing the root shell!"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method

.method public doWakefulWork(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-static {v3, v7}, Lorg/adaway/ui/BaseActivity;->setButtonsDisabledBroadcast(Landroid/content/Context;Z)V

    .line 95
    invoke-direct {p0}, Lorg/adaway/service/ApplyService;->download()I

    move-result v1

    .line 96
    .local v1, downloadResult:I
    const-string v3, "AdAway"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-ne v1, v7, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/adaway/service/ApplyService;->apply()I

    move-result v0

    .line 102
    .local v0, applyResult:I
    invoke-direct {p0}, Lorg/adaway/service/ApplyService;->cancelApplyNotification()V

    .line 104
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-static {v3, v6}, Lorg/adaway/ui/BaseActivity;->setButtonsDisabledBroadcast(Landroid/content/Context;Z)V

    .line 105
    const-string v3, "AdAway"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Apply result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/adaway/service/ApplyService;->mNumberOfDownloads:I

    iget v5, p0, Lorg/adaway/service/ApplyService;->mNumberOfFailedDownloads:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/adaway/service/ApplyService;->mNumberOfDownloads:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, successfulDownloads:Ljava/lang/String;
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lorg/adaway/helper/ResultHelper;->showNotificationBasedOnResult(Landroid/content/Context;ILjava/lang/String;)V

    .line 123
    .end local v0           #applyResult:I
    .end local v2           #successfulDownloads:Ljava/lang/String;
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    .line 112
    invoke-direct {p0}, Lorg/adaway/service/ApplyService;->cancelApplyNotification()V

    .line 114
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-static {v3, v6}, Lorg/adaway/ui/BaseActivity;->setButtonsDisabledBroadcast(Landroid/content/Context;Z)V

    .line 116
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-static {v3, v1, v8}, Lorg/adaway/helper/ResultHelper;->showNotificationBasedOnResult(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0}, Lorg/adaway/service/ApplyService;->cancelApplyNotification()V

    .line 120
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-static {v3, v6}, Lorg/adaway/ui/BaseActivity;->setButtonsDisabledBroadcast(Landroid/content/Context;Z)V

    .line 121
    iget-object v3, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-static {v3, v1, v8}, Lorg/adaway/helper/ResultHelper;->showNotificationBasedOnResult(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 78
    iput-object p0, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lorg/adaway/service/ApplyService;->mService:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/adaway/service/ApplyService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
