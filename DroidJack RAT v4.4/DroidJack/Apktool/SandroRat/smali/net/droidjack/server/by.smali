.class public Lnet/droidjack/server/by;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SandroRat_Configuration_Database"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "SystemConfigurationTable"

    iput-object v0, p0, Lnet/droidjack/server/by;->b:Ljava/lang/String;

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnet/droidjack/server/by;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/droidjack/server/by;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnet/droidjack/server/by;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/droidjack/server/by;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/droidjack/server/by;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-direct {p0}, Lnet/droidjack/server/by;->b()V

    const-string v8, ""

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "CONFIGURATION"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "VALUE"

    aput-object v1, v2, v0

    iget-object v0, p0, Lnet/droidjack/server/by;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lnet/droidjack/server/by;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONFIGURATION=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lnet/droidjack/server/by;->c()V

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v8

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lnet/droidjack/server/by;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnet/droidjack/server/by;->a()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "CONFIGURATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/droidjack/server/by;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lnet/droidjack/server/by;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-direct {p0}, Lnet/droidjack/server/by;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lnet/droidjack/server/by;->a()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "CONFIGURATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lnet/droidjack/server/by;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lnet/droidjack/server/by;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONFIGURATION=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lnet/droidjack/server/by;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lnet/droidjack/server/by;->b()V

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "CONFIGURATION"

    aput-object v1, v2, v0

    iget-object v0, p0, Lnet/droidjack/server/by;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lnet/droidjack/server/by;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONFIGURATION=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    invoke-direct {p0}, Lnet/droidjack/server/by;->c()V

    return v0

    :cond_0
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v9

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/droidjack/server/by;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (CONFIGURATION TEXT, VALUE TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Drop table if exists "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/droidjack/server/by;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/droidjack/server/by;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
