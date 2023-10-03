.class public abstract Lorg/htmlcleaner/XmlSerializer;
.super Lorg/htmlcleaner/Serializer;
.source "XmlSerializer.java"


# direct methods
.method protected constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0
    .parameter "props"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/htmlcleaner/Serializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected dontEscape(Lorg/htmlcleaner/TagNode;)Z
    .locals 1
    .parameter "tagNode"

    .prologue
    .line 113
    iget-object v0, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataForScriptAndStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/htmlcleaner/XmlSerializer;->isScriptOrStyle(Lorg/htmlcleaner/TagNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "xmlContent"

    .prologue
    .line 109
    iget-object v0, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlAsString(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;
    .locals 1
    .parameter "tagNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    invoke-super {p0, p1}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tagNode"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z
    .locals 3
    .parameter "tagNode"

    .prologue
    .line 117
    iget-object v1, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object v1

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v0

    .line 118
    .local v0, tagInfo:Lorg/htmlcleaner/TagInfo;
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isUseEmptyElementTags()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/htmlcleaner/TagInfo;->isEmptyTag()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V
    .locals 3
    .parameter "tagNode"
    .parameter "writer"
    .parameter "newLine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, tagName:Ljava/lang/String;
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/XmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    const-string v1, "]]>"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 220
    :cond_2
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v1

    if-nez v1, :cond_3

    .line 221
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 225
    if-eqz p3, :cond_0

    .line 226
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V
    .locals 15
    .parameter "tagNode"
    .parameter "writer"
    .parameter "newLine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, tagName:Ljava/lang/String;
    invoke-static {v11}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v13, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v13}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v8

    .line 131
    .local v8, nsAware:Z
    const/4 v5, 0x0

    .line 132
    .local v5, definedNSPrefixes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 134
    .local v1, additionalNSDeclNeeded:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v11}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, tagPrefix:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 136
    if-eqz v8, :cond_6

    .line 137
    new-instance v5, Ljava/util/HashSet;

    .end local v5           #definedNSPrefixes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 138
    .restart local v5       #definedNSPrefixes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/htmlcleaner/TagNode;->collectNamespacePrefixesOnPath(Ljava/util/Set;)V

    .line 139
    invoke-interface {v5, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 140
    new-instance v1, Ljava/util/TreeSet;

    .end local v1           #additionalNSDeclNeeded:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 141
    .restart local v1       #additionalNSDeclNeeded:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_2
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 152
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    .local v3, attName:Ljava/lang/String;
    invoke-static {v3}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, attPrefix:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 155
    if-eqz v8, :cond_7

    .line 158
    if-nez v5, :cond_3

    .line 159
    new-instance v5, Ljava/util/HashSet;

    .end local v5           #definedNSPrefixes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 160
    .restart local v5       #definedNSPrefixes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/htmlcleaner/TagNode;->collectNamespacePrefixesOnPath(Ljava/util/Set;)V

    .line 162
    :cond_3
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 163
    if-nez v1, :cond_4

    .line 164
    new-instance v1, Ljava/util/TreeSet;

    .end local v1           #additionalNSDeclNeeded:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 166
    .restart local v1       #additionalNSDeclNeeded:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_5
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {p0, v13}, Lorg/htmlcleaner/XmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 144
    .end local v3           #attName:Ljava/lang/String;
    .end local v4           #attPrefix:Ljava/lang/String;
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-static {v11}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 169
    .restart local v3       #attName:Ljava/lang/String;
    .restart local v4       #attPrefix:Ljava/lang/String;
    .restart local v6       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-static {v3}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 176
    .end local v3           #attName:Ljava/lang/String;
    .end local v4           #attPrefix:Ljava/lang/String;
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    if-eqz v8, :cond_a

    .line 177
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object v9

    .line 178
    .local v9, nsDeclarations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_a

    .line 179
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 180
    .restart local v6       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 181
    .local v10, prefix:Ljava/lang/String;
    const-string v2, "xmlns"

    .line 182
    .local v2, att:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_9

    .line 183
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {p0, v13}, Lorg/htmlcleaner/XmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 191
    .end local v2           #att:Ljava/lang/String;
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #nsDeclarations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #prefix:Ljava/lang/String;
    :cond_a
    if-eqz v1, :cond_b

    .line 192
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 193
    .restart local v10       #prefix:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " xmlns:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 197
    .end local v10           #prefix:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lorg/htmlcleaner/XmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 198
    const-string v13, " />"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 199
    if-eqz p3, :cond_0

    .line 200
    const-string v13, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lorg/htmlcleaner/XmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 203
    const-string v13, "><![CDATA["

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_d
    const-string v13, ">"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public writeXml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .parameter "tagNode"
    .parameter "writer"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lorg/htmlcleaner/Serializer;->write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public writeXmlToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V
    .locals 0
    .parameter "tagNode"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lorg/htmlcleaner/Serializer;->writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public writeXmlToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tagNode"
    .parameter "fileName"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lorg/htmlcleaner/Serializer;->writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public writeXmlToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "tagNode"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;)V

    .line 66
    return-void
.end method

.method public writeXmlToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .parameter "tagNode"
    .parameter "out"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 58
    return-void
.end method
