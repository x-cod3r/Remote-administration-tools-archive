.class public Lorg/htmlcleaner/DomSerializer;
.super Ljava/lang/Object;
.source "DomSerializer.java"


# instance fields
.field protected escapeXml:Z

.field protected props:Lorg/htmlcleaner/CleanerProperties;


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 1
    .parameter "props"

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/DomSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;Z)V
    .locals 1
    .parameter "props"
    .parameter "escapeXml"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/htmlcleaner/DomSerializer;->escapeXml:Z

    .line 22
    iput-object p1, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 23
    iput-boolean p2, p0, Lorg/htmlcleaner/DomSerializer;->escapeXml:Z

    .line 24
    return-void
.end method

.method private createElement(Lorg/htmlcleaner/TagNode;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 6
    .parameter "node"
    .parameter "document"

    .prologue
    .line 45
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, name:Ljava/lang/String;
    iget-object v5, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v5}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v1

    .line 47
    .local v1, nsAware:Z
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, prefix:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object v2

    .line 49
    .local v2, nsDeclarations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 50
    .local v3, nsURI:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 51
    if-eqz v1, :cond_3

    .line 52
    if-eqz v2, :cond_0

    .line 53
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #nsURI:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 55
    .restart local v3       #nsURI:Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    .line 56
    invoke-virtual {p1, v4}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    :cond_1
    if-nez v3, :cond_2

    .line 59
    move-object v3, v4

    .line 75
    :cond_2
    :goto_0
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 76
    invoke-interface {p2, v3, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 78
    :goto_1
    return-object v5

    .line 62
    :cond_3
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_4
    if-eqz v1, :cond_2

    .line 66
    if-eqz v2, :cond_5

    .line 67
    const-string v5, ""

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #nsURI:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 69
    .restart local v3       #nsURI:Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_2

    .line 70
    invoke-virtual {p1, v4}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 78
    :cond_6
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    goto :goto_1
.end method

.method private createSubnodes(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/util/List;)V
    .locals 12
    .parameter "document"
    .parameter "element"
    .parameter "tagChildren"

    .prologue
    const/4 v10, 0x1

    .line 108
    if-eqz p3, :cond_8

    .line 109
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 110
    .local v3, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 112
    .local v4, item:Ljava/lang/Object;
    instance-of v11, v4, Lorg/htmlcleaner/CommentNode;

    if-eqz v11, :cond_1

    move-object v1, v4

    .line 113
    check-cast v1, Lorg/htmlcleaner/CommentNode;

    .line 114
    .local v1, commentNode:Lorg/htmlcleaner/CommentNode;
    invoke-virtual {v1}, Lorg/htmlcleaner/CommentNode;->getContent()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v11}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    .line 115
    .local v0, comment:Lorg/w3c/dom/Comment;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 116
    .end local v0           #comment:Lorg/w3c/dom/Comment;
    .end local v1           #commentNode:Lorg/htmlcleaner/CommentNode;
    :cond_1
    instance-of v11, v4, Lorg/htmlcleaner/ContentNode;

    if-eqz v11, :cond_6

    .line 117
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, nodeName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, content:Ljava/lang/String;
    iget-object v11, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v11}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataForScriptAndStyle()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "script"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "style"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    move v6, v10

    .line 121
    .local v6, specialCase:Z
    :goto_1
    iget-boolean v11, p0, Lorg/htmlcleaner/DomSerializer;->escapeXml:Z

    if-eqz v11, :cond_3

    if-nez v6, :cond_3

    .line 122
    iget-object v11, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-static {v2, v11, v10}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v2

    .line 124
    :cond_3
    if-eqz v6, :cond_5

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v11

    :goto_2
    invoke-interface {p2, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 119
    .end local v6           #specialCase:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 124
    .restart local v6       #specialCase:Z
    :cond_5
    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v11

    goto :goto_2

    .line 125
    .end local v2           #content:Ljava/lang/String;
    .end local v5           #nodeName:Ljava/lang/String;
    .end local v6           #specialCase:Z
    :cond_6
    instance-of v11, v4, Lorg/htmlcleaner/TagNode;

    if-eqz v11, :cond_7

    move-object v7, v4

    .line 126
    check-cast v7, Lorg/htmlcleaner/TagNode;

    .line 127
    .local v7, subTagNode:Lorg/htmlcleaner/TagNode;
    invoke-direct {p0, v7, p1}, Lorg/htmlcleaner/DomSerializer;->createElement(Lorg/htmlcleaner/TagNode;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 129
    .local v8, subelement:Lorg/w3c/dom/Element;
    invoke-direct {p0, v7, v8}, Lorg/htmlcleaner/DomSerializer;->setAttributes(Lorg/htmlcleaner/TagNode;Lorg/w3c/dom/Element;)V

    .line 132
    invoke-virtual {v7}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v8, v11}, Lorg/htmlcleaner/DomSerializer;->createSubnodes(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/util/List;)V

    .line 134
    invoke-interface {p2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 135
    .end local v7           #subTagNode:Lorg/htmlcleaner/TagNode;
    .end local v8           #subelement:Lorg/w3c/dom/Element;
    :cond_7
    instance-of v11, v4, Ljava/util/List;

    if-eqz v11, :cond_0

    move-object v9, v4

    .line 136
    check-cast v9, Ljava/util/List;

    .line 137
    .local v9, sublist:Ljava/util/List;
    invoke-direct {p0, p1, p2, v9}, Lorg/htmlcleaner/DomSerializer;->createSubnodes(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/util/List;)V

    goto/16 :goto_0

    .line 141
    .end local v3           #it:Ljava/util/Iterator;
    .end local v4           #item:Ljava/lang/Object;
    .end local v9           #sublist:Ljava/util/List;
    :cond_8
    return-void
.end method

.method private setAttributes(Lorg/htmlcleaner/TagNode;Lorg/w3c/dom/Element;)V
    .locals 8
    .parameter "node"
    .parameter "element"

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 84
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, attrValue:Ljava/lang/String;
    iget-boolean v6, p0, Lorg/htmlcleaner/DomSerializer;->escapeXml:Z

    if-eqz v6, :cond_0

    .line 87
    iget-object v6, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v2

    .line 90
    :cond_0
    invoke-static {v1}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, attPrefix:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 92
    iget-object v6, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v6}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 93
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, nsURI:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 95
    move-object v5, v0

    .line 97
    :cond_1
    invoke-interface {p2, v5, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v5           #nsURI:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-interface {p2, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v0           #attPrefix:Ljava/lang/String;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public createDOM(Lorg/htmlcleaner/TagNode;)Lorg/w3c/dom/Document;
    .locals 4
    .parameter "rootNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 33
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 34
    .local v0, document:Lorg/w3c/dom/Document;
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/DomSerializer;->createElement(Lorg/htmlcleaner/TagNode;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 35
    .local v2, rootElement:Lorg/w3c/dom/Element;
    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 37
    invoke-direct {p0, p1, v2}, Lorg/htmlcleaner/DomSerializer;->setAttributes(Lorg/htmlcleaner/TagNode;Lorg/w3c/dom/Element;)V

    .line 39
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lorg/htmlcleaner/DomSerializer;->createSubnodes(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/util/List;)V

    .line 41
    return-object v0
.end method
