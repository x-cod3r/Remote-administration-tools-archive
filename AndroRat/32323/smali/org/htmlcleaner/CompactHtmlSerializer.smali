.class public Lorg/htmlcleaner/CompactHtmlSerializer;
.super Lorg/htmlcleaner/HtmlSerializer;
.source "CompactHtmlSerializer.java"


# instance fields
.field private openPreTags:I


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 1
    .parameter "props"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    .line 52
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

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 55
    const-string v9, "pre"

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 56
    .local v3, isPreTag:Z
    if-eqz v3, :cond_0

    .line 57
    iget v9, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2, v8}, Lorg/htmlcleaner/CompactHtmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 62
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v6

    .line 63
    .local v6, tagChildren:Ljava/util/List;
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CompactHtmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 64
    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 65
    .local v0, childrenIt:Ljava/util/ListIterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 66
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 67
    .local v4, item:Ljava/lang/Object;
    instance-of v9, v4, Lorg/htmlcleaner/ContentNode;

    if-eqz v9, :cond_9

    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, content:Ljava/lang/String;
    iget v9, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    if-lez v9, :cond_2

    .line 70
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_6

    move v5, v7

    .line 73
    .local v5, startsWithSpace:Z
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v7, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_7

    move v2, v7

    .line 74
    .local v2, endsWithSpace:Z
    :goto_2
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CompactHtmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 76
    :goto_3
    if-eqz v5, :cond_3

    .line 77
    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 80
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 81
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 82
    if-eqz v2, :cond_4

    .line 83
    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 87
    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 88
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/htmlcleaner/Utils;->isWhitespaceString(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 89
    const-string v9, "\n"

    invoke-virtual {p2, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    :cond_5
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_0

    .end local v2           #endsWithSpace:Z
    .end local v5           #startsWithSpace:Z
    :cond_6
    move v5, v8

    .line 72
    goto :goto_1

    .restart local v5       #startsWithSpace:Z
    :cond_7
    move v2, v8

    .line 73
    goto :goto_2

    .line 74
    .restart local v2       #endsWithSpace:Z
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/htmlcleaner/CompactHtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 94
    .end local v1           #content:Ljava/lang/String;
    .end local v2           #endsWithSpace:Z
    .end local v5           #startsWithSpace:Z
    :cond_9
    instance-of v9, v4, Lorg/htmlcleaner/CommentNode;

    if-eqz v9, :cond_a

    .line 95
    check-cast v4, Lorg/htmlcleaner/CommentNode;

    .end local v4           #item:Ljava/lang/Object;
    invoke-virtual {v4}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #content:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .end local v1           #content:Ljava/lang/String;
    .restart local v4       #item:Ljava/lang/Object;
    :cond_a
    instance-of v9, v4, Lorg/htmlcleaner/BaseToken;

    if-eqz v9, :cond_1

    .line 98
    check-cast v4, Lorg/htmlcleaner/BaseToken;

    .end local v4           #item:Ljava/lang/Object;
    invoke-interface {v4, p0, p2}, Lorg/htmlcleaner/BaseToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    goto/16 :goto_0

    .line 102
    :cond_b
    invoke-virtual {p0, p1, p2, v8}, Lorg/htmlcleaner/CompactHtmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 103
    if-eqz v3, :cond_c

    .line 104
    iget v7, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    .line 107
    .end local v0           #childrenIt:Ljava/util/ListIterator;
    :cond_c
    return-void
.end method
