.class public Lorg/adaway/util/HostsSourcesCursorAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "HostsSourcesCursorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 0
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "flags"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 38
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "v"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 45
    const v16, 0x7f08003f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 46
    .local v2, cBox:Landroid/widget/CheckBox;
    const v16, 0x7f080040

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 47
    .local v6, hostnameTextView:Landroid/widget/TextView;
    const v16, 0x7f080041

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 49
    .local v13, lastModifiedTextView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 51
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 52
    .local v3, cursorPosition:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "checkbox_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 53
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "url_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 54
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "last_modified_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 56
    const-string v16, "enabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 57
    .local v5, enabledCol:I
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, enabled:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 60
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    :goto_0
    const-string v16, "url"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 67
    .local v15, urlCol:I
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 68
    .local v14, url:Ljava/lang/String;
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const-string v16, "last_modified_local"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 73
    .local v9, lastModifiedLocalCol:I
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 74
    .local v7, lastModifiedLocal:J
    const-string v16, "last_modified_online"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 76
    .local v12, lastModifiedOnlineCol:I
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 77
    .local v10, lastModifiedOnline:J
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f0600a1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    invoke-static {v0, v7, v8}, Lorg/adaway/util/DateUtils;->longToDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0600a2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lorg/adaway/util/DateUtils;->longToDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v3           #cursorPosition:I
    .end local v4           #enabled:Ljava/lang/String;
    .end local v5           #enabledCol:I
    .end local v7           #lastModifiedLocal:J
    .end local v9           #lastModifiedLocalCol:I
    .end local v10           #lastModifiedOnline:J
    .end local v12           #lastModifiedOnlineCol:I
    .end local v14           #url:Ljava/lang/String;
    .end local v15           #urlCol:I
    :cond_0
    return-void

    .line 62
    .restart local v3       #cursorPosition:I
    .restart local v4       #enabled:Ljava/lang/String;
    .restart local v5       #enabledCol:I
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method
