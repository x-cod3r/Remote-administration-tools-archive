.class public Lorg/htmlcleaner/JDomSerializer;
.super Ljava/lang/Object;
.source "JDomSerializer.java"


# instance fields
.field protected escapeXml:Z

.field private factory:Lorg/jdom/DefaultJDOMFactory;

.field protected props:Lorg/htmlcleaner/CleanerProperties;


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 1
    .parameter "props"

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/JDomSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;Z)V
    .locals 1
    .parameter "props"
    .parameter "escapeXml"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/htmlcleaner/JDomSerializer;->escapeXml:Z

    .line 21
    iput-object p1, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 22
    iput-boolean p2, p0, Lorg/htmlcleaner/JDomSerializer;->escapeXml:Z

    .line 23
    return-void
.end method

.method private createElement(Lorg/htmlcleaner/TagNode;)Lorg/jdom/Element;
    .locals 8
    .parameter "node"

    .prologue
    .line 42
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, name:Ljava/lang/String;
    iget-object v7, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v7}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v3

    .line 44
    .local v3, nsAware:Z
    invoke-static {v1}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, prefix:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object v4

    .line 46
    .local v4, nsDeclarations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 47
    .local v5, nsURI:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 48
    invoke-static {v1}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    if-eqz v3, :cond_2

    .line 50
    if-eqz v4, :cond_0

    .line 51
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nsURI:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 53
    .restart local v5       #nsURI:Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_1

    .line 54
    invoke-virtual {p1, v6}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    :cond_1
    if-nez v5, :cond_2

    .line 57
    move-object v5, v6

    .line 72
    :cond_2
    :goto_0
    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    .line 73
    if-nez v6, :cond_6

    invoke-static {v5}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v2

    .line 74
    .local v2, ns:Lorg/jdom/Namespace;
    :goto_1
    iget-object v7, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom/DefaultJDOMFactory;

    invoke-virtual {v7, v1, v2}, Lorg/jdom/DefaultJDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    .line 79
    .end local v2           #ns:Lorg/jdom/Namespace;
    .local v0, element:Lorg/jdom/Element;
    :goto_2
    if-eqz v3, :cond_3

    .line 80
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/JDomSerializer;->defineNamespaceDeclarations(Lorg/htmlcleaner/TagNode;Lorg/jdom/Element;)V

    .line 82
    :cond_3
    return-object v0

    .line 61
    .end local v0           #element:Lorg/jdom/Element;
    :cond_4
    if-eqz v3, :cond_2

    .line 62
    if-eqz v4, :cond_5

    .line 63
    const-string v7, ""

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nsURI:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 65
    .restart local v5       #nsURI:Ljava/lang/String;
    :cond_5
    if-nez v5, :cond_2

    .line 66
    invoke-virtual {p1, v6}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 73
    :cond_6
    invoke-static {v6, v5}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v2

    goto :goto_1

    .line 76
    :cond_7
    iget-object v7, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom/DefaultJDOMFactory;

    invoke-virtual {v7, v1}, Lorg/jdom/DefaultJDOMFactory;->element(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    .restart local v0       #element:Lorg/jdom/Element;
    goto :goto_2
.end method

.method private createSubnodes(Lorg/jdom/Element;Ljava/util/List;)V
    .locals 13
    .parameter "element"
    .parameter "tagChildren"

    .prologue
    .line 125
    if-eqz p2, :cond_8

    .line 126
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 127
    .local v3, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 129
    .local v4, item:Ljava/lang/Object;
    instance-of v11, v4, Lorg/htmlcleaner/CommentNode;

    if-eqz v11, :cond_1

    move-object v1, v4

    .line 130
    check-cast v1, Lorg/htmlcleaner/CommentNode;

    .line 131
    .local v1, commentNode:Lorg/htmlcleaner/CommentNode;
    iget-object v11, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom/DefaultJDOMFactory;

    invoke-virtual {v1}, Lorg/htmlcleaner/CommentNode;->getContent()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jdom/DefaultJDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object v0

    .line 132
    .local v0, comment:Lorg/jdom/Comment;
    invoke-virtual {p1, v0}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    goto :goto_0

    .line 133
    .end local v0           #comment:Lorg/jdom/Comment;
    .end local v1           #commentNode:Lorg/htmlcleaner/CommentNode;
    :cond_1
    instance-of v11, v4, Lorg/htmlcleaner/ContentNode;

    if-eqz v11, :cond_6

    .line 134
    invoke-virtual {p1}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, nodeName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, content:Ljava/lang/String;
    iget-object v11, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

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
    const/4 v6, 0x1

    .line 138
    .local v6, specialCase:Z
    :goto_1
    iget-boolean v11, p0, Lorg/htmlcleaner/JDomSerializer;->escapeXml:Z

    if-eqz v11, :cond_3

    if-nez v6, :cond_3

    .line 139
    iget-object v11, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    const/4 v12, 0x1

    invoke-static {v2, v11, v12}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v2

    .line 141
    :cond_3
    if-eqz v6, :cond_5

    iget-object v11, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom/DefaultJDOMFactory;

    invoke-virtual {v11, v2}, Lorg/jdom/DefaultJDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom/CDATA;

    move-result-object v10

    .line 142
    .local v10, text:Lorg/jdom/Text;
    :goto_2
    invoke-virtual {p1, v10}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    goto :goto_0

    .line 136
    .end local v6           #specialCase:Z
    .end local v10           #text:Lorg/jdom/Text;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 141
    .restart local v6       #specialCase:Z
    :cond_5
    iget-object v11, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom/DefaultJDOMFactory;

    invoke-virtual {v11, v2}, Lorg/jdom/DefaultJDOMFactory;->text(Ljava/lang/String;)Lorg/jdom/Text;

    move-result-object v10

    goto :goto_2

    .line 143
    .end local v2           #content:Ljava/lang/String;
    .end local v5           #nodeName:Ljava/lang/String;
    .end local v6           #specialCase:Z
    :cond_6
    instance-of v11, v4, Lorg/htmlcleaner/TagNode;

    if-eqz v11, :cond_7

    move-object v7, v4

    .line 144
    check-cast v7, Lorg/htmlcleaner/TagNode;

    .line 145
    .local v7, subTagNode:Lorg/htmlcleaner/TagNode;
    invoke-direct {p0, v7}, Lorg/htmlcleaner/JDomSerializer;->createElement(Lorg/htmlcleaner/TagNode;)Lorg/jdom/Element;

    move-result-object v8

    .line 147
    .local v8, subelement:Lorg/jdom/Element;
    invoke-direct {p0, v7, v8}, Lorg/htmlcleaner/JDomSerializer;->setAttributes(Lorg/htmlcleaner/TagNode;Lorg/jdom/Element;)V

    .line 150
    invoke-virtual {v7}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v8, v11}, Lorg/htmlcleaner/JDomSerializer;->createSubnodes(Lorg/jdom/Element;Ljava/util/List;)V

    .line 152
    invoke-virtual {p1, v8}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    goto/16 :goto_0

    .line 153
    .end local v7           #subTagNode:Lorg/htmlcleaner/TagNode;
    .end local v8           #subelement:Lorg/jdom/Element;
    :cond_7
    instance-of v11, v4, Ljava/util/List;

    if-eqz v11, :cond_0

    move-object v9, v4

    .line 154
    check-cast v9, Ljava/util/List;

    .line 155
    .local v9, sublist:Ljava/util/List;
    invoke-direct {p0, p1, v9}, Lorg/htmlcleaner/JDomSerializer;->createSubnodes(Lorg/jdom/Element;Ljava/util/List;)V

    goto/16 :goto_0

    .line 159
    .end local v3           #it:Ljava/util/Iterator;
    .end local v4           #item:Ljava/lang/Object;
    .end local v9           #sublist:Ljava/util/List;
    :cond_8
    return-void
.end method

.method private defineNamespaceDeclarations(Lorg/htmlcleaner/TagNode;Lorg/jdom/Element;)V
    .locals 7
    .parameter "node"
    .parameter "element"

    .prologue
    .line 86
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object v2

    .line 87
    .local v2, nsDeclarations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 88
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    .local v3, nsEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, nsPrefix:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 91
    .local v5, nsURI:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {v5}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v1

    .line 92
    .local v1, ns:Lorg/jdom/Namespace;
    :goto_1
    invoke-virtual {p2, v1}, Lorg/jdom/Element;->addNamespaceDeclaration(Lorg/jdom/Namespace;)V

    goto :goto_0

    .line 91
    .end local v1           #ns:Lorg/jdom/Namespace;
    :cond_1
    invoke-static {v4, v5}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v1

    goto :goto_1

    .line 95
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #nsEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #nsPrefix:Ljava/lang/String;
    .end local v5           #nsURI:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setAttributes(Lorg/htmlcleaner/TagNode;Lorg/jdom/Element;)V
    .locals 9
    .parameter "node"
    .parameter "element"

    .prologue
    .line 98
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 99
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, attrValue:Ljava/lang/String;
    iget-boolean v7, p0, Lorg/htmlcleaner/JDomSerializer;->escapeXml:Z

    if-eqz v7, :cond_0

    .line 102
    iget-object v7, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v2

    .line 104
    :cond_0
    invoke-static {v1}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, attPrefix:Ljava/lang/String;
    const/4 v5, 0x0

    .line 106
    .local v5, ns:Lorg/jdom/Namespace;
    if-eqz v0, :cond_2

    .line 107
    invoke-static {v1}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v7, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v7}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 109
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, nsURI:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 111
    move-object v6, v0

    .line 113
    :cond_1
    invoke-static {v0, v6}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v5

    .line 116
    .end local v6           #nsURI:Ljava/lang/String;
    :cond_2
    if-nez v5, :cond_3

    .line 117
    invoke-virtual {p2, v1, v2}, Lorg/jdom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p2, v1, v2, v5}, Lorg/jdom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    goto :goto_0

    .line 122
    .end local v0           #attPrefix:Ljava/lang/String;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #ns:Lorg/jdom/Namespace;
    :cond_4
    return-void
.end method


# virtual methods
.method public createJDom(Lorg/htmlcleaner/TagNode;)Lorg/jdom/Document;
    .locals 3
    .parameter "rootNode"

    .prologue
    .line 30
    new-instance v2, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v2}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v2, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom/DefaultJDOMFactory;

    .line 31
    invoke-direct {p0, p1}, Lorg/htmlcleaner/JDomSerializer;->createElement(Lorg/htmlcleaner/TagNode;)Lorg/jdom/Element;

    move-result-object v1

    .line 32
    .local v1, rootElement:Lorg/jdom/Element;
    iget-object v2, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom/DefaultJDOMFactory;

    invoke-virtual {v2, v1}, Lorg/jdom/DefaultJDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    .line 34
    .local v0, document:Lorg/jdom/Document;
    invoke-direct {p0, p1, v1}, Lorg/htmlcleaner/JDomSerializer;->setAttributes(Lorg/htmlcleaner/TagNode;Lorg/jdom/Element;)V

    .line 36
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/htmlcleaner/JDomSerializer;->createSubnodes(Lorg/jdom/Element;Ljava/util/List;)V

    .line 38
    return-object v0
.end method
