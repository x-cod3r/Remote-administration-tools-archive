.class public abstract Lorg/htmlcleaner/HtmlSerializer;
.super Lorg/htmlcleaner/Serializer;
.source "HtmlSerializer.java"


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
    .line 59
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/HtmlSerializer;->isScriptOrStyle(Lorg/htmlcleaner/TagNode;)Z

    move-result v0

    return v0
.end method

.method protected escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .parameter "s"

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v15

    .line 64
    .local v15, recognizeUnicodeChars:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/htmlcleaner/CleanerProperties;->isTranslateSpecialEntities()Z

    move-result v20

    .line 66
    .local v20, translateSpecialEntities:Z
    if-eqz p1, :cond_18

    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .line 68
    .local v13, len:I
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    .local v16, result:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v13, :cond_17

    .line 71
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 73
    .local v3, ch:C
    const/16 v23, 0x26

    move/from16 v0, v23

    if-ne v3, v0, :cond_14

    .line 74
    add-int/lit8 v23, v13, -0x2

    move/from16 v0, v23

    if-ge v9, v0, :cond_c

    add-int/lit8 v23, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x23

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 75
    add-int/lit8 v23, v9, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v23

    const/16 v24, 0x78

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/4 v11, 0x1

    .line 76
    .local v11, isHex:Z
    :goto_1
    if-eqz v11, :cond_3

    const/16 v23, 0x3

    :goto_2
    add-int v4, v9, v23

    .line 77
    .local v4, charIndex:I
    if-eqz v11, :cond_4

    const/16 v14, 0x10

    .line 78
    .local v14, radix:I
    :goto_3
    const-string v21, ""

    .line 79
    .local v21, unicode:Ljava/lang/String;
    :goto_4
    if-ge v4, v13, :cond_0

    .line 80
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 81
    .local v5, currCh:C
    const/16 v23, 0x3b

    move/from16 v0, v23

    if-ne v5, v0, :cond_5

    .line 92
    .end local v5           #currCh:C
    :cond_0
    :goto_5
    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lorg/htmlcleaner/Utils;->isValidInt(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 93
    move-object/from16 v0, v21

    invoke-static {v0, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v22, v0

    .line 94
    .local v22, unicodeChar:C
    invoke-static/range {v22 .. v22}, Lorg/htmlcleaner/Utils;->isValidXmlChar(C)Z

    move-result v23

    if-nez v23, :cond_7

    .line 95
    move v9, v4

    .line 70
    .end local v4           #charIndex:I
    .end local v11           #isHex:Z
    .end local v14           #radix:I
    .end local v21           #unicode:Ljava/lang/String;
    .end local v22           #unicodeChar:C
    :cond_1
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 75
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 76
    .restart local v11       #isHex:Z
    :cond_3
    const/16 v23, 0x2

    goto :goto_2

    .line 77
    .restart local v4       #charIndex:I
    :cond_4
    const/16 v14, 0xa

    goto :goto_3

    .line 83
    .restart local v5       #currCh:C
    .restart local v14       #radix:I
    .restart local v21       #unicode:Ljava/lang/String;
    :cond_5
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lorg/htmlcleaner/Utils;->isValidInt(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 84
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 87
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 88
    goto :goto_5

    .line 96
    .end local v5           #currCh:C
    .restart local v22       #unicodeChar:C
    :cond_7
    invoke-static/range {v22 .. v22}, Lorg/htmlcleaner/Utils;->isReservedXmlChar(C)Z

    move-result v23

    if-nez v23, :cond_9

    .line 97
    if-eqz v15, :cond_8

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    :goto_7
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move v9, v4

    goto :goto_6

    .line 97
    :cond_8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&#"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_7

    .line 100
    :cond_9
    move v9, v4

    .line 101
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&#"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 104
    .end local v22           #unicodeChar:C
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    const-string v23, "&#38;"

    :goto_8
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_b
    const-string v23, "&"

    goto :goto_8

    .line 108
    .end local v4           #charIndex:I
    .end local v11           #isHex:Z
    .end local v14           #radix:I
    .end local v21           #unicode:Ljava/lang/String;
    :cond_c
    invoke-static {}, Lorg/htmlcleaner/SpecialEntity;->getMaxEntityLength()I

    move-result v23

    add-int/lit8 v23, v23, 0x2

    sub-int v24, v13, v9

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    add-int v23, v23, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 109
    .local v18, seq:Ljava/lang/String;
    const/16 v23, 0x3b

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 110
    .local v17, semiIndex:I
    if-lez v17, :cond_f

    .line 111
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, entityKey:Ljava/lang/String;
    invoke-static {v7}, Lorg/htmlcleaner/SpecialEntity;->getEntity(Ljava/lang/String;)Lorg/htmlcleaner/SpecialEntity;

    move-result-object v6

    .line 113
    .local v6, entity:Lorg/htmlcleaner/SpecialEntity;
    if-eqz v6, :cond_f

    .line 114
    if-eqz v20, :cond_e

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/htmlcleaner/CleanerProperties;->isTransSpecialEntitiesToNCR()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-virtual {v6}, Lorg/htmlcleaner/SpecialEntity;->getDecimalNCR()Ljava/lang/String;

    move-result-object v23

    :goto_9
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    :goto_a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    add-int v9, v9, v23

    .line 121
    goto/16 :goto_6

    .line 115
    :cond_d
    invoke-virtual {v6}, Lorg/htmlcleaner/SpecialEntity;->getCharacter()C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v23

    goto :goto_9

    .line 117
    :cond_e
    invoke-virtual {v6}, Lorg/htmlcleaner/SpecialEntity;->getEscapedValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 125
    .end local v6           #entity:Lorg/htmlcleaner/SpecialEntity;
    .end local v7           #entityKey:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 126
    .local v19, sub:Ljava/lang/String;
    const/4 v12, 0x0

    .line 127
    .local v12, isReservedSeq:Z
    sget-object v23, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 128
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    .end local v18           #seq:Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 129
    .restart local v18       #seq:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&#"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Character;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Character;->charValue()C

    move-result v23

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_b
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    add-int v9, v9, v23

    .line 132
    const/4 v12, 0x1

    .line 136
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    :cond_11
    if-nez v12, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13

    const-string v23, "&#38;"

    :goto_c
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .restart local v8       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v23, v18

    .line 130
    goto :goto_b

    .line 137
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    :cond_13
    const-string v23, "&"

    goto :goto_c

    .line 140
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #isReservedSeq:Z
    .end local v17           #semiIndex:I
    .end local v18           #seq:Ljava/lang/String;
    .end local v19           #sub:Ljava/lang/String;
    :cond_14
    invoke-static {v3}, Lorg/htmlcleaner/Utils;->isReservedXmlChar(C)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&#"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_d
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_15
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v23

    goto :goto_d

    .line 143
    :cond_16
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 147
    .end local v3           #ch:C
    :cond_17
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 150
    .end local v9           #i:I
    .end local v13           #len:I
    .end local v16           #result:Ljava/lang/StringBuilder;
    :goto_e
    return-object v23

    :cond_18
    const/16 v23, 0x0

    goto :goto_e
.end method

.method protected isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z
    .locals 3
    .parameter "tagNode"

    .prologue
    .line 54
    iget-object v1, p0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object v1

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v0

    .line 55
    .local v0, tagInfo:Lorg/htmlcleaner/TagInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/htmlcleaner/TagInfo;->isEmptyTag()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
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
    .line 200
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, tagName:Ljava/lang/String;
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_2
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

    .line 211
    if-eqz p3, :cond_0

    .line 212
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V
    .locals 10
    .parameter "tagNode"
    .parameter "writer"
    .parameter "newLine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, tagName:Ljava/lang/String;
    invoke-static {v7}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v8, p0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v8}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v4

    .line 162
    .local v4, nsAware:Z
    if-nez v4, :cond_2

    invoke-static {v7}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 163
    invoke-static {v7}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 168
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    .local v1, attName:Ljava/lang/String;
    if-nez v4, :cond_3

    invoke-static {v1}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 170
    invoke-static {v1}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/htmlcleaner/HtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    .end local v1           #attName:Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    if-eqz v4, :cond_6

    .line 176
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object v5

    .line 177
    .local v5, nsDeclarations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_6

    .line 178
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 179
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 180
    .local v6, prefix:Ljava/lang/String;
    const-string v0, "xmlns"

    .line 181
    .local v0, att:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/htmlcleaner/HtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 189
    .end local v0           #att:Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #nsDeclarations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #prefix:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/HtmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 190
    const-string v8, " />"

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 191
    if-eqz p3, :cond_0

    .line 192
    const-string v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_7
    const-string v8, ">"

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
