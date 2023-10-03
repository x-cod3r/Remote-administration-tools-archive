.class public Lorg/htmlcleaner/SimpleXmlSerializer;
.super Lorg/htmlcleaner/XmlSerializer;
.source "SimpleXmlSerializer.java"


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0
    .parameter "props"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 6
    .parameter "tagNode"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 53
    invoke-virtual {p0, p1, p2, v5}, Lorg/htmlcleaner/SimpleXmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 55
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/SimpleXmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 56
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 57
    .local v2, item:Ljava/lang/Object;
    instance-of v3, v2, Lorg/htmlcleaner/ContentNode;

    if-eqz v3, :cond_2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, content:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/SimpleXmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "]]>"

    const-string v4, "]]&gt;"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/SimpleXmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 60
    .end local v0           #content:Ljava/lang/String;
    :cond_2
    instance-of v3, v2, Lorg/htmlcleaner/BaseToken;

    if-eqz v3, :cond_0

    .line 61
    check-cast v2, Lorg/htmlcleaner/BaseToken;

    .end local v2           #item:Ljava/lang/Object;
    invoke-interface {v2, p0, p2}, Lorg/htmlcleaner/BaseToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0, p1, p2, v5}, Lorg/htmlcleaner/SimpleXmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 67
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method
