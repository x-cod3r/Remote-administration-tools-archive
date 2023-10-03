.class public Lorg/htmlcleaner/PrettyXmlSerializer;
.super Lorg/htmlcleaner/XmlSerializer;
.source "PrettyXmlSerializer.java"


# static fields
.field private static final DEFAULT_INDENTATION_STRING:Ljava/lang/String; = "\t"


# instance fields
.field private indentString:Ljava/lang/String;

.field private indents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 1
    .parameter "props"

    .prologue
    .line 55
    const-string v0, "\t"

    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/PrettyXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;Ljava/lang/String;)V
    .locals 1
    .parameter "props"
    .parameter "indentString"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    .line 51
    const-string v0, "\t"

    iput-object v0, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indentString:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indents:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indentString:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private declared-synchronized getIndent(I)Ljava/lang/String;
    .locals 6
    .parameter "level"

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 73
    .local v3, size:I
    if-gt v3, p1, :cond_2

    .line 74
    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 75
    .local v2, prevIndent:Ljava/lang/String;
    :goto_0
    move v1, v3

    .local v1, i:I
    :goto_1
    if-gt v1, p1, :cond_2

    .line 76
    if-nez v2, :cond_1

    const-string v0, ""

    .line 77
    .local v0, currIndent:Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    move-object v2, v0

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    .end local v0           #currIndent:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #prevIndent:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indents:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    goto :goto_0

    .line 76
    .restart local v1       #i:I
    .restart local v2       #prevIndent:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indentString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 82
    .end local v1           #i:I
    .end local v2           #prevIndent:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 72
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getIndentedText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "content"
    .parameter "level"

    .prologue
    .line 86
    invoke-direct {p0, p2}, Lorg/htmlcleaner/PrettyXmlSerializer;->getIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, indent:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v2, result:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "\n\r"

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, line:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    .end local v1           #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getSingleLineOfChildren(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter "children"

    .prologue
    const/4 v5, 0x0

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v4, result:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    .local v1, childrenIt:Ljava/util/Iterator;
    const/4 v3, 0x1

    .line 105
    .local v3, isFirst:Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, child:Ljava/lang/Object;
    instance-of v6, v0, Lorg/htmlcleaner/ContentNode;

    if-nez v6, :cond_1

    .line 132
    .end local v0           #child:Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v5

    .line 111
    .restart local v0       #child:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, content:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 115
    invoke-static {v2}, Lorg/htmlcleaner/Utils;->ltrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 120
    invoke-static {v2}, Lorg/htmlcleaner/Utils;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    :cond_3
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    const-string v6, "\r"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    .line 126
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const/4 v3, 0x0

    .line 130
    goto :goto_0

    .line 132
    .end local v0           #child:Ljava/lang/Object;
    .end local v2           #content:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 1
    .parameter "tagNode"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/PrettyXmlSerializer;->serializePrettyXml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;I)V

    .line 65
    return-void
.end method

.method protected serializePrettyXml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;I)V
    .locals 12
    .parameter "tagNode"
    .parameter "writer"
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v8

    .line 137
    .local v8, tagChildren:Ljava/util/List;
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v6

    .line 138
    .local v6, isHeadlessNode:Z
    if-eqz v6, :cond_3

    const-string v5, ""

    .line 140
    .local v5, indent:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 141
    const/4 v9, 0x1

    invoke-virtual {p0, p1, p2, v9}, Lorg/htmlcleaner/PrettyXmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 143
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/PrettyXmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 144
    invoke-direct {p0, v8}, Lorg/htmlcleaner/PrettyXmlSerializer;->getSingleLineOfChildren(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, singleLine:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/PrettyXmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    .line 146
    .local v3, dontEscape:Z
    if-eqz v7, :cond_5

    .line 147
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/PrettyXmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 148
    invoke-virtual {p0, v7}, Lorg/htmlcleaner/PrettyXmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_1
    if-nez v7, :cond_1

    .line 171
    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 174
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {p0, p1, p2, v9}, Lorg/htmlcleaner/PrettyXmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 176
    .end local v3           #dontEscape:Z
    .end local v7           #singleLine:Ljava/lang/String;
    :cond_2
    return-void

    .line 138
    .end local v5           #indent:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p3}, Lorg/htmlcleaner/PrettyXmlSerializer;->getIndent(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 150
    .restart local v3       #dontEscape:Z
    .restart local v5       #indent:Ljava/lang/String;
    .restart local v7       #singleLine:Ljava/lang/String;
    :cond_4
    const-string v9, "]]>"

    const-string v10, "]]&gt;"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_5
    if-nez v6, :cond_6

    .line 154
    const-string v9, "\n"

    invoke-virtual {p2, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 156
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, child:Ljava/lang/Object;
    instance-of v9, v0, Lorg/htmlcleaner/TagNode;

    if-eqz v9, :cond_9

    .line 158
    check-cast v0, Lorg/htmlcleaner/TagNode;

    .end local v0           #child:Ljava/lang/Object;
    if-eqz v6, :cond_8

    move v9, p3

    :goto_3
    invoke-virtual {p0, v0, p2, v9}, Lorg/htmlcleaner/PrettyXmlSerializer;->serializePrettyXml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;I)V

    goto :goto_2

    :cond_8
    add-int/lit8 v9, p3, 0x1

    goto :goto_3

    .line 159
    .restart local v0       #child:Ljava/lang/Object;
    :cond_9
    instance-of v9, v0, Lorg/htmlcleaner/ContentNode;

    if-eqz v9, :cond_c

    .line 160
    if-eqz v3, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "]]>"

    const-string v11, "]]&gt;"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, content:Ljava/lang/String;
    :goto_4
    if-eqz v6, :cond_b

    move v9, p3

    :goto_5
    invoke-direct {p0, v2, v9}, Lorg/htmlcleaner/PrettyXmlSerializer;->getIndentedText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 160
    .end local v2           #content:Ljava/lang/String;
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/htmlcleaner/PrettyXmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 161
    .restart local v2       #content:Ljava/lang/String;
    :cond_b
    add-int/lit8 v9, p3, 0x1

    goto :goto_5

    .line 162
    .end local v2           #content:Ljava/lang/String;
    :cond_c
    instance-of v9, v0, Lorg/htmlcleaner/CommentNode;

    if-eqz v9, :cond_7

    move-object v1, v0

    .line 163
    check-cast v1, Lorg/htmlcleaner/CommentNode;

    .line 164
    .local v1, commentNode:Lorg/htmlcleaner/CommentNode;
    invoke-virtual {v1}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v2

    .line 165
    .restart local v2       #content:Ljava/lang/String;
    if-eqz v6, :cond_d

    move v9, p3

    :goto_6
    invoke-direct {p0, v2, v9}, Lorg/htmlcleaner/PrettyXmlSerializer;->getIndentedText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    add-int/lit8 v9, p3, 0x1

    goto :goto_6
.end method
