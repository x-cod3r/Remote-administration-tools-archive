.class public Lorg/adaway/provider/ProviderHelper;
.super Ljava/lang/Object;
.source "ProviderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteBlacklistItem(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "rowId"

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/adaway/provider/AdAwayContract$Blacklist;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public static deleteHostsSource(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "rowId"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/adaway/provider/AdAwayContract$HostsSources;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static deleteRedirectionListItem(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "rowId"

    .prologue
    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/adaway/provider/AdAwayContract$RedirectionList;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public static deleteWhitelistItem(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "rowId"

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/adaway/provider/AdAwayContract$Whitelist;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public static getEnabledBlacklistCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/adaway/provider/AdAwayContract$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "enabled"

    aput-object v4, v2, v3

    const-string v3, "enabled=1"

    const/4 v4, 0x0

    const-string v5, "url ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledBlacklistHashSet(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v1, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/adaway/provider/ProviderHelper;->getEnabledBlacklistCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    const-string v2, "url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_2
    return-object v1
.end method

.method public static getEnabledHostsSourcesArrayList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/adaway/provider/ProviderHelper;->getEnabledHostsSourcesCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 104
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    const-string v2, "url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_2
    return-object v1
.end method

.method public static getEnabledHostsSourcesCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/adaway/provider/AdAwayContract$HostsSources;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "last_modified_local"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "last_modified_online"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "enabled"

    aput-object v4, v2, v3

    const-string v3, "enabled=1"

    const/4 v4, 0x0

    const-string v5, "url ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledRedirectionListCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/adaway/provider/AdAwayContract$RedirectionList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ip"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "enabled"

    aput-object v4, v2, v3

    const-string v3, "enabled=1"

    const/4 v4, 0x0

    const-string v5, "url ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledRedirectionListHashMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v1, list:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/adaway/provider/ProviderHelper;->getEnabledRedirectionListCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 346
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    :cond_0
    const-string v2, "url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ip"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 353
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_2
    return-object v1
.end method

.method public static getEnabledWhitelistCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/adaway/provider/AdAwayContract$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "enabled"

    aput-object v4, v2, v3

    const-string v3, "enabled=1"

    const/4 v4, 0x0

    const-string v5, "url ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledWhitelistHashSet(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 265
    .local v1, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/adaway/provider/ProviderHelper;->getEnabledWhitelistCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 267
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    :cond_0
    const-string v2, "url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_2
    return-object v1
.end method

.method public static importBlacklist(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, blacklist:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .line 210
    .local v2, values:[Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 211
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 212
    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v2, v0

    .line 214
    aget-object v4, v2, v0

    const-string v5, "url"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    aget-object v3, v2, v0

    const-string v4, "enabled"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/adaway/provider/AdAwayContract$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 222
    return-void
.end method

.method public static importRedirectionList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, redirectionList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 370
    .local v3, values:[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 371
    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 372
    .local v2, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v3, v0

    .line 373
    aget-object v5, v3, v0

    const-string v6, "url"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    aget-object v5, v3, v0

    const-string v6, "ip"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    aget-object v4, v3, v0

    const-string v5, "enabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v2           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/adaway/provider/AdAwayContract$RedirectionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 382
    return-void
.end method

.method public static importWhitelist(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, whitelist:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .line 289
    .local v2, values:[Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 290
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 291
    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v2, v0

    .line 293
    aget-object v4, v2, v0

    const-string v5, "url"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    aget-object v3, v2, v0

    const-string v4, "enabled"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/adaway/provider/AdAwayContract$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 301
    return-void
.end method

.method public static insertBlacklistItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "hostname"

    .prologue
    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/adaway/provider/AdAwayContract$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 152
    return-void
.end method

.method public static insertHostsSource(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 43
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    const-string v1, "last_modified_local"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    const-string v1, "last_modified_online"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/adaway/provider/AdAwayContract$HostsSources;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 48
    return-void
.end method

.method public static insertRedirectionListItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "hostname"
    .parameter "ip"

    .prologue
    .line 306
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "ip"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/adaway/provider/AdAwayContract$RedirectionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 311
    return-void
.end method

.method public static insertWhitelistItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "hostname"

    .prologue
    .line 227
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/adaway/provider/AdAwayContract$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 231
    return-void
.end method

.method public static updateAllEnabledHostsSourcesLastModifiedLocalFromOnline(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 123
    invoke-static {p0}, Lorg/adaway/provider/ProviderHelper;->getEnabledHostsSourcesCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    .local v0, cursor:Landroid/database/Cursor;
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 125
    .local v3, idCol:I
    const-string v7, "last_modified_online"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 130
    .local v6, lastModifiedOnlineCol:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    :cond_0
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 133
    .local v4, lastModifiedOnline:J
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 136
    .local v1, id:J
    invoke-static {p0, v1, v2, v4, v5}, Lorg/adaway/provider/ProviderHelper;->updateHostsSourceLastModifiedLocal(Landroid/content/Context;JJ)V

    .line 138
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 140
    .end local v1           #id:J
    .end local v4           #lastModifiedOnline:J
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_2
    return-void
.end method

.method public static updateBlacklistItemEnabled(Landroid/content/Context;JZ)V
    .locals 4
    .parameter "context"
    .parameter "rowId"
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    .line 166
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/adaway/provider/AdAwayContract$Blacklist;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public static updateBlacklistItemHostname(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "rowId"
    .parameter "hostname"

    .prologue
    const/4 v3, 0x0

    .line 159
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/adaway/provider/AdAwayContract$Blacklist;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public static updateHostsSourceEnabled(Landroid/content/Context;JZ)V
    .locals 4
    .parameter "context"
    .parameter "rowId"
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    .line 63
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/adaway/provider/AdAwayContract$HostsSources;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public static updateHostsSourceLastModifiedLocal(Landroid/content/Context;JJ)V
    .locals 4
    .parameter "context"
    .parameter "rowId"
    .parameter "last_modified_local"

    .prologue
    const/4 v3, 0x0

    .line 71
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "last_modified_local"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/adaway/provider/AdAwayContract$HostsSources;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public static updateHostsSourceLastModifiedOnline(Landroid/content/Context;JJ)V
    .locals 4
    .parameter "context"
    .parameter "rowId"
    .parameter "last_modified_online"

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "last_modified_online"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/adaway/provider/AdAwayContract$HostsSources;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public static updateHostsSourceUrl(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "rowId"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/adaway/provider/AdAwayContract$HostsSources;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public static updateRedirectionListItemEnabled(Landroid/content/Context;JZ)V
    .locals 4
    .parameter "context"
    .parameter "rowId"
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    .line 328
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/adaway/provider/AdAwayContract$RedirectionList;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method public static updateRedirectionListItemHostnameAndIp(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "rowId"
    .parameter "hostname"
    .parameter "ip"

    .prologue
    const/4 v3, 0x0

    .line 320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 321
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "ip"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/adaway/provider/AdAwayContract$RedirectionList;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method public static updateWhitelistItemEnabled(Landroid/content/Context;JZ)V
    .locals 4
    .parameter "context"
    .parameter "rowId"
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    .line 245
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/adaway/provider/AdAwayContract$Whitelist;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public static updateWhitelistItemHostname(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "rowId"
    .parameter "hostname"

    .prologue
    const/4 v3, 0x0

    .line 238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/adaway/provider/AdAwayContract$Whitelist;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 242
    return-void
.end method
