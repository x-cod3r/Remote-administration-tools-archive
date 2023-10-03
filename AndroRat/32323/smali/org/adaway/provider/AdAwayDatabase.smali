.class public Lorg/adaway/provider/AdAwayDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AdAwayDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/adaway/provider/AdAwayDatabase$Tables;
    }
.end annotation


# static fields
.field private static final CREATE_BLACKLIST:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS blacklist(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, enabled INTEGER)"

.field private static final CREATE_HOSTS_SOURCES:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS hosts_sources(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, last_modified_local INTEGER, last_modified_online INTEGER, enabled INTEGER)"

.field private static final CREATE_REDIRECTION_LIST:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS redirection_list(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, ip TEXT, enabled INTEGER)"

.field private static final CREATE_WHITELIST:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS whitelist(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, enabled INTEGER)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "adaway.db"

.field private static final DATABASE_VERSION:I = 0x6


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    const-string v0, "adaway.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 69
    return-void
.end method

.method private insertDefaultHostsSources(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 82
    const-string v0, "INSERT OR IGNORE INTO hosts_sources(url, last_modified_local, last_modified_online, enabled) VALUES (?, ?, ?, ?)"

    .line 84
    .local v0, insertHostsSources:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 87
    .local v1, insertStmt:Landroid/database/sqlite/SQLiteStatement;
    const-string v2, "http://winhelp2002.mvps.org/hosts.txt"

    invoke-virtual {p0, v1, v2}, Lorg/adaway/provider/AdAwayDatabase;->insertHostsSource(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)J

    .line 90
    const-string v2, "http://hosts-file.net/ad_servers.asp"

    invoke-virtual {p0, v1, v2}, Lorg/adaway/provider/AdAwayDatabase;->insertHostsSource(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)J

    .line 93
    const-string v2, "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext"

    invoke-virtual {p0, v1, v2}, Lorg/adaway/provider/AdAwayDatabase;->insertHostsSource(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)J

    .line 97
    const-string v2, "http://www.ismeh.com/HOSTS"

    invoke-virtual {p0, v1, v2}, Lorg/adaway/provider/AdAwayDatabase;->insertHostsSource(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)J

    .line 98
    return-void
.end method


# virtual methods
.method public insertHostsSource(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)J
    .locals 3
    .parameter "insertStmt"
    .parameter "url"

    .prologue
    const-wide/16 v1, 0x0

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 73
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 74
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 75
    const/4 v0, 0x4

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 102
    const-string v0, "AdAway"

    const-string v1, "Creating database..."

    invoke-static {v0, v1}, Lorg/adaway/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "CREATE TABLE IF NOT EXISTS hosts_sources(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, last_modified_local INTEGER, last_modified_online INTEGER, enabled INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v0, "CREATE TABLE IF NOT EXISTS whitelist(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, enabled INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "CREATE TABLE IF NOT EXISTS blacklist(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, enabled INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    const-string v0, "CREATE TABLE IF NOT EXISTS redirection_list(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, ip TEXT, enabled INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1}, Lorg/adaway/provider/AdAwayDatabase;->insertDefaultHostsSources(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 114
    const-string v0, "AdAway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/adaway/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 118
    const-string v0, "CREATE TABLE IF NOT EXISTS whitelist(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, enabled INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v0, "CREATE TABLE IF NOT EXISTS blacklist(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, enabled INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v0, "CREATE TABLE IF NOT EXISTS redirection_list(_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT UNIQUE, ip TEXT, enabled INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    :cond_0
    const/4 v0, 0x2

    if-gt p2, v0, :cond_1

    .line 127
    :cond_1
    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    .line 131
    const-string v0, "UPDATE hosts_sources SET url=\"http://winhelp2002.mvps.org/hosts.txt\" WHERE url=\"http://www.mvps.org/winhelp2002/hosts.txt\""

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    const-string v0, "INSERT INTO hosts_sources (url, enabled) VALUES (\"http://sysctl.org/cameleon/hosts\", 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "DROP TABLE IF EXISTS last_modified"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    const-string v0, "ALTER TABLE hosts_sources ADD COLUMN last_modified_local"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v0, "ALTER TABLE hosts_sources ADD COLUMN last_modified_online"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    :cond_2
    const/4 v0, 0x4

    if-gt p2, v0, :cond_3

    .line 145
    const-string v0, "DELETE FROM hosts_sources WHERE url=\"http://sysctl.org/cameleon/hosts\""

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    const-string v0, "INSERT INTO hosts_sources (url, last_modified_local, last_modified_online, enabled) VALUES (\"http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext\", 0, 0, 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    :cond_3
    const/4 v0, 0x5

    if-gt p2, v0, :cond_4

    .line 154
    const-string v0, "INSERT INTO hosts_sources (url, last_modified_local, last_modified_online, enabled) VALUES (\"http://www.ismeh.com/HOSTS\", 0, 0, 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_4
    const-string v0, "DROP TABLE IF EXISTS hosts_sources"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string v0, "DROP TABLE IF EXISTS whitelist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v0, "DROP TABLE IF EXISTS blacklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string v0, "DROP TABLE IF EXISTS redirection_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, p1}, Lorg/adaway/provider/AdAwayDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
