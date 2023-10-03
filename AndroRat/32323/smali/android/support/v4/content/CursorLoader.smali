.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 109
    iput-object p2, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 110
    iput-object p3, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 111
    iput-object p4, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 113
    iput-object p6, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 78
    .local v0, oldCursor:Landroid/database/Cursor;
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 80
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 84
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 214
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 51
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 54
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p0, v6, v0}, Landroid/support/v4/content/CursorLoader;->registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    .line 56
    :cond_0
    return-object v6
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->onStopLoading()V

    .line 156
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 160
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->forceLoad()V

    .line 131
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->cancelLoad()Z

    .line 140
    return-void
.end method

.method registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "cursor"
    .parameter "observer"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .parameter "projection"

    .prologue
    .line 175
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 183
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .parameter "selectionArgs"

    .prologue
    .line 191
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .parameter "sortOrder"

    .prologue
    .line 199
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 167
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 168
    return-void
.end method
