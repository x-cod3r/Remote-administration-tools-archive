.class public Lorg/htmlcleaner/CompactXmlSerializer;
.super Lorg/htmlcleaner/XmlSerializer;
.source "CompactXmlSerializer.java"


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0
    .parameter "props"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 7
    .parameter "tagNode"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 54
    invoke-virtual {p0, p1, p2, v6}, Lorg/htmlcleaner/CompactXmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 56
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 57
    .local v3, tagChildren:Ljava/util/List;
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CompactXmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 58
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 59
    .local v0, childrenIt:Ljava/util/ListIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 60
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, item:Ljava/lang/Object;
    instance-of v4, v2, Lorg/htmlcleaner/ContentNode;

    if-eqz v4, :cond_3

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, content:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CompactXmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "]]>"

    const-string v5, "]]&gt;"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/htmlcleaner/Utils;->isWhitespaceString(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 67
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0, v1}, Lorg/htmlcleaner/CompactXmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 71
    .end local v1           #content:Ljava/lang/String;
    :cond_3
    instance-of v4, v2, Lorg/htmlcleaner/CommentNode;

    if-eqz v4, :cond_4

    .line 72
    check-cast v2, Lorg/htmlcleaner/CommentNode;

    .end local v2           #item:Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1       #content:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v1           #content:Ljava/lang/String;
    .restart local v2       #item:Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Lorg/htmlcleaner/BaseToken;

    if-eqz v4, :cond_0

    .line 75
    check-cast v2, Lorg/htmlcleaner/BaseToken;

    .end local v2           #item:Ljava/lang/Object;
    invoke-interface {v2, p0, p2}, Lorg/htmlcleaner/BaseToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    goto :goto_0

    .line 79
    :cond_5
    invoke-virtual {p0, p1, p2, v6}, Lorg/htmlcleaner/CompactXmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 81
    .end local v0           #childrenIt:Ljava/util/ListIterator;
    :cond_6
    return-void
.end method
