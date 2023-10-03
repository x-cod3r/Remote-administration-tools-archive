.class public Lorg/htmlcleaner/BrowserCompactXmlSerializer;
.super Lorg/htmlcleaner/XmlSerializer;
.source "BrowserCompactXmlSerializer.java"


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0
    .parameter "props"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 12
    .parameter "tagNode"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 60
    invoke-virtual {p0, p1, p2, v7}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 62
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v5

    .line 63
    .local v5, tagChildren:Ljava/util/List;
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 64
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 65
    .local v0, childrenIt:Ljava/util/ListIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 66
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 67
    .local v3, item:Ljava/lang/Object;
    instance-of v8, v3, Lorg/htmlcleaner/ContentNode;

    if-eqz v8, :cond_7

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, content:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_4

    move v4, v6

    .line 70
    .local v4, startsWithSpace:Z
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_5

    move v2, v6

    .line 71
    .local v2, endsWithSpace:Z
    :goto_2
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "]]>"

    const-string v10, "]]&gt;"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    :goto_3
    if-eqz v4, :cond_1

    .line 74
    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 77
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    if-eqz v2, :cond_2

    .line 80
    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 84
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/htmlcleaner/Utils;->isWhitespaceString(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 86
    const-string v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_0

    .end local v2           #endsWithSpace:Z
    .end local v4           #startsWithSpace:Z
    :cond_4
    move v4, v7

    .line 69
    goto :goto_1

    .restart local v4       #startsWithSpace:Z
    :cond_5
    move v2, v7

    .line 70
    goto :goto_2

    .line 71
    .restart local v2       #endsWithSpace:Z
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 90
    .end local v1           #content:Ljava/lang/String;
    .end local v2           #endsWithSpace:Z
    .end local v4           #startsWithSpace:Z
    :cond_7
    instance-of v8, v3, Lorg/htmlcleaner/CommentNode;

    if-eqz v8, :cond_8

    .line 91
    check-cast v3, Lorg/htmlcleaner/CommentNode;

    .end local v3           #item:Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 92
    .restart local v1       #content:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    .end local v1           #content:Ljava/lang/String;
    .restart local v3       #item:Ljava/lang/Object;
    :cond_8
    instance-of v8, v3, Lorg/htmlcleaner/BaseToken;

    if-eqz v8, :cond_0

    .line 94
    check-cast v3, Lorg/htmlcleaner/BaseToken;

    .end local v3           #item:Ljava/lang/Object;
    invoke-interface {v3, p0, p2}, Lorg/htmlcleaner/BaseToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    goto/16 :goto_0

    .line 98
    :cond_9
    invoke-virtual {p0, p1, p2, v7}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 100
    .end local v0           #childrenIt:Ljava/util/ListIterator;
    :cond_a
    return-void
.end method
