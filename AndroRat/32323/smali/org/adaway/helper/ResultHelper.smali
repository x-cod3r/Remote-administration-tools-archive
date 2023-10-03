.class public Lorg/adaway/helper/ResultHelper;
.super Ljava/lang/Object;
.source "ResultHelper.java"


# static fields
.field private static final RESULT_NOTIFICATION_ID:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lorg/adaway/helper/ResultHelper;->tryToCreateSymlink(Landroid/content/Context;)V

    return-void
.end method

.method private static processResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "text"
    .parameter "statusText"
    .parameter "result"
    .parameter "iconStatus"
    .parameter "numberOfSuccessfulDownloads"
    .parameter "showDialog"

    .prologue
    .line 322
    invoke-static {p0}, Lorg/adaway/util/Utils;->isInForeground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    if-eqz p7, :cond_1

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/adaway/ui/BaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v1, "org.adaway.APPLYING_RESULT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    if-eqz p6, :cond_0

    .line 328
    const-string v1, "org.adaway.NUMBER_OF_SUCCESSFUL_DOWNLOADS"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 340
    .end local v0           #resultIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    if-eqz p6, :cond_3

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, p5}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    :goto_1
    return-void

    .line 337
    :cond_2
    invoke-static {p0, p1, p2, p4, p6}, Lorg/adaway/helper/ResultHelper;->showResultNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_3
    invoke-static {p0, p1, p3, p5}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public static showDialogBasedOnResult(Landroid/content/Context;ILjava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "result"
    .parameter "numberOfSuccessfulDownloads"

    .prologue
    const v10, 0x7f060066

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 163
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 164
    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, title:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f060065

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, text:Ljava/lang/String;
    invoke-static {p0, v5, v4, v8}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :goto_0
    const v6, 0x7f060067

    invoke-static {p0, v10, v6}, Lorg/adaway/util/Utils;->rebootQuestion(Landroid/content/Context;II)V

    .line 305
    :goto_1
    return-void

    .line 171
    :cond_0
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 176
    :cond_1
    const/16 v6, 0xe

    if-ne p1, v6, :cond_2

    .line 177
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    .line 179
    const v6, 0x7f06007a

    const v7, 0x7f060079

    invoke-static {p0, v6, v7}, Lorg/adaway/util/Utils;->rebootQuestion(Landroid/content/Context;II)V

    goto :goto_1

    .line 181
    :cond_2
    if-ne p1, v8, :cond_3

    .line 182
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusEnabled(Landroid/content/Context;)V

    goto :goto_1

    .line 183
    :cond_3
    const/4 v6, 0x5

    if-ne p1, v6, :cond_4

    .line 184
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    goto :goto_1

    .line 185
    :cond_4
    if-ne p1, v7, :cond_5

    .line 186
    const v6, 0x7f060051

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 187
    .restart local v5       #title:Ljava/lang/String;
    const v6, 0x7f060052

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    .restart local v4       #text:Ljava/lang/String;
    invoke-static {p0, v5, v4, v7}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 190
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_5
    const/16 v6, 0x9

    if-ne p1, v6, :cond_6

    .line 191
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f06005c

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 193
    const v6, 0x7f06005b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 194
    const v6, 0x108009b

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 195
    const v6, 0x7f060027

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/adaway/helper/ResultHelper$1;

    invoke-direct {v7, p0}, Lorg/adaway/helper/ResultHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    const v6, 0x7f060028

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/adaway/helper/ResultHelper$2;

    invoke-direct {v7, p0}, Lorg/adaway/helper/ResultHelper$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 210
    .local v2, question:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 212
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #question:Landroid/app/AlertDialog;
    :cond_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x1080027

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 214
    const v6, 0x7f060026

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/adaway/helper/ResultHelper$3;

    invoke-direct {v7}, Lorg/adaway/helper/ResultHelper$3;-><init>()V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    const v6, 0x7f060032

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/adaway/helper/ResultHelper$4;

    invoke-direct {v7, p0}, Lorg/adaway/helper/ResultHelper$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    const-string v5, ""

    .line 231
    .restart local v5       #title:Ljava/lang/String;
    const-string v4, ""

    .line 232
    .restart local v4       #text:Ljava/lang/String;
    const-string v3, ""

    .line 233
    .local v3, statusText:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 298
    :goto_2
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f06006c

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 300
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 303
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 235
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :pswitch_1
    const v6, 0x7f060070

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 236
    const v6, 0x7f06006f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    const v6, 0x7f060054

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-static {p0, v5, v3, v9}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 243
    :pswitch_2
    const v6, 0x7f06007e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 244
    const v6, 0x7f06007d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 245
    const v6, 0x7f060056

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {p0, v5, v3, v9}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 251
    :pswitch_3
    const v6, 0x7f06006e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 252
    const v6, 0x7f06006d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusEnabled(Landroid/content/Context;)V

    goto :goto_2

    .line 257
    :pswitch_4
    const v6, 0x7f060078

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 258
    const v6, 0x7f060077

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 263
    :pswitch_5
    const v6, 0x7f060060

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 264
    const v6, 0x7f06005f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 269
    :pswitch_6
    const v6, 0x7f06005e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 270
    const v6, 0x7f06005d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 275
    :pswitch_7
    const v6, 0x7f060062

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 276
    const v6, 0x7f060061

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 281
    :pswitch_8
    const v6, 0x7f060064

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 282
    const v6, 0x7f060063

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 287
    :pswitch_9
    const v6, 0x7f06007c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    const v6, 0x7f06007b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    sget-object v6, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-static {p0, v6}, Lorg/adaway/util/ApplyUtils;->isHostsFileCorrect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 292
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusEnabled(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 294
    :cond_7
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 233
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method

.method public static showNotificationBasedOnResult(Landroid/content/Context;ILjava/lang/String;)V
    .locals 19
    .parameter "context"
    .parameter "result"
    .parameter "numberOfSuccessfulDownloads"

    .prologue
    .line 55
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 56
    const v1, 0x7f060066

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, title:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f060065

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, text:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v1}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    invoke-static/range {p0 .. p0}, Lorg/adaway/helper/PreferenceHelper;->getNeverReboot(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const/4 v6, 0x4

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v4, v3

    move/from16 v5, p1

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v8}, Lorg/adaway/helper/ResultHelper;->processResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V

    .line 153
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const/16 v1, 0xe

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 68
    const v1, 0x7f06007a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .restart local v2       #title:Ljava/lang/String;
    const v1, 0x7f060079

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .restart local v3       #text:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v1}, Lorg/adaway/ui/BaseActivity;->setStatusBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    invoke-static/range {p0 .. p0}, Lorg/adaway/helper/PreferenceHelper;->getNeverReboot(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v4, v3

    move/from16 v5, p1

    invoke-static/range {v1 .. v8}, Lorg/adaway/helper/ResultHelper;->processResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V

    goto :goto_0

    .line 77
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    :cond_2
    const/16 v1, 0xf

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 78
    const v1, 0x7f06007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .restart local v2       #title:Ljava/lang/String;
    const v1, 0x7f06007b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    .restart local v3       #text:Ljava/lang/String;
    sget-object v1, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/adaway/util/ApplyUtils;->isHostsFileCorrect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    const/4 v6, 0x4

    .line 89
    .local v6, oldStatus:I
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v4, v3

    move/from16 v5, p1

    invoke-static/range {v1 .. v8}, Lorg/adaway/helper/ResultHelper;->processResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V

    goto :goto_0

    .line 86
    .end local v6           #oldStatus:I
    :cond_3
    const/4 v6, 0x5

    .restart local v6       #oldStatus:I
    goto :goto_1

    .line 90
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    .end local v6           #oldStatus:I
    :cond_4
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    .line 91
    const v1, 0x7f060051

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .restart local v2       #title:Ljava/lang/String;
    const v1, 0x7f060052

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    .restart local v3       #text:Ljava/lang/String;
    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v3

    move/from16 v11, p1

    invoke-static/range {v7 .. v14}, Lorg/adaway/helper/ResultHelper;->processResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 96
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    :cond_5
    const/16 v1, 0x10

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 97
    const v1, 0x7f06006e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .restart local v2       #title:Ljava/lang/String;
    const v1, 0x7f06006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    .restart local v3       #text:Ljava/lang/String;
    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v3

    move/from16 v11, p1

    invoke-static/range {v7 .. v14}, Lorg/adaway/helper/ResultHelper;->processResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 101
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x6

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 103
    const v1, 0x7f06007e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2       #title:Ljava/lang/String;
    const v1, 0x7f06007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .restart local v3       #text:Ljava/lang/String;
    const v1, 0x7f060056

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, statusText:Ljava/lang/String;
    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move/from16 v11, p1

    invoke-static/range {v7 .. v14}, Lorg/adaway/helper/ResultHelper;->processResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 109
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    .end local v10           #statusText:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    .line 111
    const v1, 0x7f060070

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2       #title:Ljava/lang/String;
    const v1, 0x7f06006f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3       #text:Ljava/lang/String;
    const v1, 0x7f060054

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 115
    .restart local v10       #statusText:Ljava/lang/String;
    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move/from16 v11, p1

    invoke-static/range {v7 .. v14}, Lorg/adaway/helper/ResultHelper;->processResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 117
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    .end local v10           #statusText:Ljava/lang/String;
    :cond_8
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_9

    .line 118
    invoke-static/range {p0 .. p0}, Lorg/adaway/ui/BaseActivity;->updateStatusEnabled(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 119
    :cond_9
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    .line 120
    invoke-static/range {p0 .. p0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 122
    :cond_a
    const-string v2, ""

    .line 123
    .restart local v2       #title:Ljava/lang/String;
    const-string v3, ""

    .line 124
    .restart local v3       #text:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 151
    :goto_2
    :pswitch_0
    const/16 v16, 0x5

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v11, p0

    move-object v12, v2

    move-object v13, v3

    move-object v14, v3

    move/from16 v15, p1

    invoke-static/range {v11 .. v18}, Lorg/adaway/helper/ResultHelper;->processResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 126
    :pswitch_1
    const v1, 0x7f06005c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    const v1, 0x7f06005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    goto :goto_2

    .line 130
    :pswitch_2
    const v1, 0x7f060078

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    const v1, 0x7f060077

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    goto :goto_2

    .line 134
    :pswitch_3
    const v1, 0x7f060060

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    const v1, 0x7f06005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    goto :goto_2

    .line 138
    :pswitch_4
    const v1, 0x7f06005e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    const v1, 0x7f06005d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    goto :goto_2

    .line 142
    :pswitch_5
    const v1, 0x7f060062

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    const v1, 0x7f060061

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    goto :goto_2

    .line 146
    :pswitch_6
    const v1, 0x7f060064

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    const v1, 0x7f060063

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 124
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static showResultNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "applyingResult"
    .parameter "failingUrl"

    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 359
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f020085

    .line 360
    .local v1, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 363
    .local v5, when:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f060023

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2, v1, p1, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 366
    .local v2, notification:Landroid/app/Notification;
    const/16 v7, 0x10

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 368
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lorg/adaway/ui/BaseActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .local v3, notificationIntent:Landroid/content/Intent;
    const-string v7, "org.adaway.APPLYING_RESULT"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    const-string v7, "org.adaway.NUMBER_OF_SUCCESSFUL_DOWNLOADS"

    invoke-virtual {v3, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const/4 v7, 0x0

    const/high16 v8, 0x800

    invoke-static {p0, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 377
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, p0, p1, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 379
    const/16 v7, 0x1e

    invoke-virtual {v4, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 380
    return-void
.end method

.method private static tryToCreateSymlink(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 386
    const/4 v3, 0x1

    .line 390
    .local v3, success:Z
    :try_start_0
    invoke-static {p0}, Lorg/adaway/helper/PreferenceHelper;->getApplyMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeToDataData"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 391
    sget-object v4, Lorg/adaway/util/Constants;->ANDROID_DATA_DATA_HOSTS:Ljava/lang/String;

    invoke-static {v4}, Lorg/adaway/util/ApplyUtils;->createSymlink(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/adaway/util/CommandException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/adaway/util/RemountException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 406
    sget-object v4, Lorg/adaway/util/Constants;->ANDROID_SYSTEM_ETC_HOSTS:Ljava/lang/String;

    invoke-static {p0, v4}, Lorg/adaway/util/ApplyUtils;->isHostsFileCorrect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 407
    const/4 v3, 0x1

    .line 413
    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    .line 414
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusEnabled(Landroid/content/Context;)V

    .line 416
    const v4, 0x7f060069

    const v5, 0x7f060068

    invoke-static {p0, v4, v5}, Lorg/adaway/util/Utils;->rebootQuestion(Landroid/content/Context;II)V

    .line 444
    :goto_2
    return-void

    .line 392
    :cond_2
    :try_start_1
    invoke-static {p0}, Lorg/adaway/helper/PreferenceHelper;->getApplyMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "customTarget"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    invoke-static {p0}, Lorg/adaway/helper/PreferenceHelper;->getCustomTarget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/adaway/util/ApplyUtils;->createSymlink(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/adaway/util/CommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/adaway/util/RemountException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 395
    :catch_0
    move-exception v2

    .line 396
    .local v2, e:Lorg/adaway/util/CommandException;
    const-string v4, "AdAway"

    const-string v5, "CommandException"

    invoke-static {v4, v5, v2}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    const/4 v3, 0x0

    .line 403
    goto :goto_0

    .line 399
    .end local v2           #e:Lorg/adaway/util/CommandException;
    :catch_1
    move-exception v2

    .line 400
    .local v2, e:Lorg/adaway/util/RemountException;
    const-string v4, "AdAway"

    const-string v5, "RemountException"

    invoke-static {v4, v5, v2}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    const/4 v3, 0x0

    goto :goto_0

    .line 409
    .end local v2           #e:Lorg/adaway/util/RemountException;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 419
    :cond_4
    invoke-static {p0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    .line 421
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 422
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f06006b

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f06006a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f06006c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 425
    const v4, 0x1080027

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 426
    const v4, 0x7f060026

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/adaway/helper/ResultHelper$5;

    invoke-direct {v5}, Lorg/adaway/helper/ResultHelper$5;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    const v4, 0x7f060032

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/adaway/helper/ResultHelper$6;

    invoke-direct {v5, p0}, Lorg/adaway/helper/ResultHelper$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 442
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2
.end method
