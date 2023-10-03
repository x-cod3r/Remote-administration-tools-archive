.class public Lorg/htmlcleaner/TagInfo;
.super Ljava/lang/Object;
.source "TagInfo.java"


# static fields
.field protected static final BODY:I = 0x2

.field protected static final CONTENT_ALL:I = 0x0

.field protected static final CONTENT_NONE:I = 0x1

.field protected static final CONTENT_TEXT:I = 0x2

.field protected static final HEAD:I = 0x1

.field protected static final HEAD_AND_BODY:I


# instance fields
.field private belongsTo:I

.field private childTags:Ljava/util/Set;

.field private contentType:I

.field private continueAfterTags:Ljava/util/Set;

.field private copyTags:Ljava/util/Set;

.field private deprecated:Z

.field private fatalTag:Ljava/lang/String;

.field private higherTags:Ljava/util/Set;

.field private ignorePermitted:Z

.field private mustCloseTags:Ljava/util/Set;

.field private name:Ljava/lang/String;

.field private permittedTags:Ljava/util/Set;

.field private requiredParent:Ljava/lang/String;

.field private unique:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZZZ)V
    .locals 3
    .parameter "name"
    .parameter "contentType"
    .parameter "belongsTo"
    .parameter "depricated"
    .parameter "unique"
    .parameter "ignorePermitted"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagInfo;->continueAfterTags:Ljava/util/Set;

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:I

    .line 123
    iput-object v2, p0, Lorg/htmlcleaner/TagInfo;->requiredParent:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lorg/htmlcleaner/TagInfo;->fatalTag:Ljava/lang/String;

    .line 125
    iput-boolean v1, p0, Lorg/htmlcleaner/TagInfo;->deprecated:Z

    .line 126
    iput-boolean v1, p0, Lorg/htmlcleaner/TagInfo;->unique:Z

    .line 127
    iput-boolean v1, p0, Lorg/htmlcleaner/TagInfo;->ignorePermitted:Z

    .line 131
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->name:Ljava/lang/String;

    .line 132
    iput p2, p0, Lorg/htmlcleaner/TagInfo;->contentType:I

    .line 133
    iput p3, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:I

    .line 134
    iput-boolean p4, p0, Lorg/htmlcleaner/TagInfo;->deprecated:Z

    .line 135
    iput-boolean p5, p0, Lorg/htmlcleaner/TagInfo;->unique:Z

    .line 136
    iput-boolean p6, p0, Lorg/htmlcleaner/TagInfo;->ignorePermitted:Z

    .line 137
    return-void
.end method


# virtual methods
.method allowsAnything()Z
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lorg/htmlcleaner/TagInfo;->contentType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method allowsBody()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 323
    iget v1, p0, Lorg/htmlcleaner/TagInfo;->contentType:I

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method allowsItem(Lorg/htmlcleaner/BaseToken;)Z
    .locals 6
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 363
    iget v4, p0, Lorg/htmlcleaner/TagInfo;->contentType:I

    if-eq v4, v3, :cond_1

    instance-of v4, p1, Lorg/htmlcleaner/TagToken;

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 364
    check-cast v1, Lorg/htmlcleaner/TagToken;

    .line 365
    .local v1, tagToken:Lorg/htmlcleaner/TagToken;
    invoke-virtual {v1}, Lorg/htmlcleaner/TagToken;->getName()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, tagName:Ljava/lang/String;
    const-string v4, "script"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    .end local v0           #tagName:Ljava/lang/String;
    .end local v1           #tagToken:Lorg/htmlcleaner/TagToken;
    .end local p1
    :cond_0
    :goto_0
    return v3

    .line 371
    .restart local p1
    :cond_1
    iget v4, p0, Lorg/htmlcleaner/TagInfo;->contentType:I

    if-nez v4, :cond_6

    .line 372
    iget-object v4, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 373
    instance-of v3, p1, Lorg/htmlcleaner/TagToken;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    check-cast p1, Lorg/htmlcleaner/TagToken;

    .end local p1
    invoke-virtual {p1}, Lorg/htmlcleaner/TagToken;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_2
    move v3, v2

    goto :goto_0

    .line 374
    .restart local p1
    :cond_3
    iget-object v4, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 375
    instance-of v4, p1, Lorg/htmlcleaner/TagToken;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    check-cast p1, Lorg/htmlcleaner/TagToken;

    .end local p1
    invoke-virtual {p1}, Lorg/htmlcleaner/TagToken;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    :cond_4
    :goto_1
    move v3, v2

    goto :goto_0

    .restart local p1
    :cond_5
    move v2, v3

    goto :goto_1

    .line 378
    :cond_6
    const/4 v4, 0x2

    iget v5, p0, Lorg/htmlcleaner/TagInfo;->contentType:I

    if-ne v4, v5, :cond_7

    .line 379
    instance-of v4, p1, Lorg/htmlcleaner/TagToken;

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_7
    move v3, v2

    .line 382
    goto :goto_0
.end method

.method public defineAllowedChildrenTags(Ljava/lang/String;)V
    .locals 4
    .parameter "commaSeparatedListOfTags"

    .prologue
    .line 166
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, currTag:Ljava/lang/String;
    iget-object v2, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v0           #currTag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V
    .locals 4
    .parameter "commaSeparatedListOfTags"

    .prologue
    .line 182
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, currTag:Ljava/lang/String;
    iget-object v2, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v0           #currTag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public defineCloseBeforeTags(Ljava/lang/String;)V
    .locals 4
    .parameter "commaSeparatedListOfTags"

    .prologue
    .line 199
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, currTag:Ljava/lang/String;
    iget-object v2, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    .end local v0           #currTag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public defineCloseInsideCopyAfterTags(Ljava/lang/String;)V
    .locals 4
    .parameter "commaSeparatedListOfTags"

    .prologue
    .line 191
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, currTag:Ljava/lang/String;
    iget-object v2, p0, Lorg/htmlcleaner/TagInfo;->continueAfterTags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v0           #currTag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public defineFatalTags(Ljava/lang/String;)V
    .locals 4
    .parameter "commaSeparatedListOfTags"

    .prologue
    .line 140
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, currTag:Ljava/lang/String;
    iput-object v0, p0, Lorg/htmlcleaner/TagInfo;->fatalTag:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v0           #currTag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public defineForbiddenTags(Ljava/lang/String;)V
    .locals 4
    .parameter "commaSeparatedListOfTags"

    .prologue
    .line 158
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, currTag:Ljava/lang/String;
    iget-object v2, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v0           #currTag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public defineHigherLevelTags(Ljava/lang/String;)V
    .locals 4
    .parameter "commaSeparatedListOfTags"

    .prologue
    .line 174
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, currTag:Ljava/lang/String;
    iget-object v2, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local v0           #currTag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public defineRequiredEnclosingTags(Ljava/lang/String;)V
    .locals 4
    .parameter "commaSeparatedListOfTags"

    .prologue
    .line 149
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, currTag:Ljava/lang/String;
    iput-object v0, p0, Lorg/htmlcleaner/TagInfo;->requiredParent:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v0           #currTag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getBelongsTo()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:I

    return v0
.end method

.method public getChildTags()Ljava/util/Set;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/htmlcleaner/TagInfo;->contentType:I

    return v0
.end method

.method public getContinueAfterTags()Ljava/util/Set;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->continueAfterTags:Ljava/util/Set;

    return-object v0
.end method

.method public getCopyTags()Ljava/util/Set;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    return-object v0
.end method

.method public getFatalTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->fatalTag:Ljava/lang/String;

    return-object v0
.end method

.method public getHigherTags()Ljava/util/Set;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    return-object v0
.end method

.method public getMustCloseTags()Ljava/util/Set;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermittedTags()Ljava/util/Set;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    return-object v0
.end method

.method public getRequiredParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->requiredParent:Ljava/lang/String;

    return-object v0
.end method

.method hasCopyTags()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPermittedTags()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isContinueAfter(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 339
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->continueAfterTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isCopy(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 331
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeprecated()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lorg/htmlcleaner/TagInfo;->deprecated:Z

    return v0
.end method

.method public isEmptyTag()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 313
    iget v1, p0, Lorg/htmlcleaner/TagInfo;->contentType:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeadAndBodyTag()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 351
    iget v1, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeadTag()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 347
    iget v1, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHigher(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 327
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIgnorePermitted()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/htmlcleaner/TagInfo;->ignorePermitted:Z

    return v0
.end method

.method isMustCloseTag(Lorg/htmlcleaner/TagInfo;)Z
    .locals 3
    .parameter "tagInfo"

    .prologue
    const/4 v0, 0x0

    .line 355
    if-eqz p1, :cond_1

    .line 356
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Lorg/htmlcleaner/TagInfo;->contentType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 359
    :cond_1
    return v0
.end method

.method public isUnique()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lorg/htmlcleaner/TagInfo;->unique:Z

    return v0
.end method

.method public setBelongsTo(I)V
    .locals 0
    .parameter "belongsTo"

    .prologue
    .line 281
    iput p1, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:I

    .line 282
    return-void
.end method

.method public setChildTags(Ljava/util/Set;)V
    .locals 0
    .parameter "childTags"

    .prologue
    .line 241
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    .line 242
    return-void
.end method

.method public setContinueAfterTags(Ljava/util/Set;)V
    .locals 0
    .parameter "continueAfterTags"

    .prologue
    .line 265
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->continueAfterTags:Ljava/util/Set;

    .line 266
    return-void
.end method

.method public setCopyTags(Ljava/util/Set;)V
    .locals 0
    .parameter "copyTags"

    .prologue
    .line 257
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    .line 258
    return-void
.end method

.method public setDeprecated(Z)V
    .locals 0
    .parameter "deprecated"

    .prologue
    .line 297
    iput-boolean p1, p0, Lorg/htmlcleaner/TagInfo;->deprecated:Z

    .line 298
    return-void
.end method

.method public setFatalTag(Ljava/lang/String;)V
    .locals 0
    .parameter "fatalTag"

    .prologue
    .line 289
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->fatalTag:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setHigherTags(Ljava/util/Set;)V
    .locals 0
    .parameter "higherTags"

    .prologue
    .line 233
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    .line 234
    return-void
.end method

.method public setIgnorePermitted(Z)V
    .locals 0
    .parameter "ignorePermitted"

    .prologue
    .line 317
    iput-boolean p1, p0, Lorg/htmlcleaner/TagInfo;->ignorePermitted:Z

    .line 318
    return-void
.end method

.method public setMustCloseTags(Ljava/util/Set;)V
    .locals 0
    .parameter "mustCloseTags"

    .prologue
    .line 225
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    .line 226
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 213
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->name:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setPermittedTags(Ljava/util/Set;)V
    .locals 0
    .parameter "permittedTags"

    .prologue
    .line 249
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    .line 250
    return-void
.end method

.method public setRequiredParent(Ljava/lang/String;)V
    .locals 0
    .parameter "requiredParent"

    .prologue
    .line 273
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->requiredParent:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setUnique(Z)V
    .locals 0
    .parameter "unique"

    .prologue
    .line 305
    iput-boolean p1, p0, Lorg/htmlcleaner/TagInfo;->unique:Z

    .line 306
    return-void
.end method
