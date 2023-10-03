.class public Lorg/htmlcleaner/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final RESERVED_XML_CHARS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static VAR_END:Ljava/lang/String;

.field public static VAR_START:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-string v0, "${"

    sput-object v0, Lorg/htmlcleaner/Utils;->VAR_START:Ljava/lang/String;

    .line 55
    const-string v0, "}"

    sput-object v0, Lorg/htmlcleaner/Utils;->VAR_END:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    .line 60
    sget-object v0, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "&amp;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "&lt;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "&gt;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "&quot;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "&apos;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;
    .locals 26
    .parameter "s"
    .parameter "props"
    .parameter "isDomCreation"

    .prologue
    .line 174
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/CleanerProperties;->isAdvancedXmlEscape()Z

    move-result v3

    .line 175
    .local v3, advanced:Z
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v16

    .line 176
    .local v16, recognizeUnicodeChars:Z
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/CleanerProperties;->isTranslateSpecialEntities()Z

    move-result v21

    .line 178
    .local v21, translateSpecialEntities:Z
    if-eqz p0, :cond_1b

    .line 179
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    .line 180
    .local v14, len:I
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v17, result:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v14, :cond_1a

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 185
    .local v4, ch:C
    const/16 v24, 0x26

    move/from16 v0, v24

    if-ne v4, v0, :cond_16

    .line 186
    if-nez v3, :cond_0

    if-eqz v16, :cond_c

    :cond_0
    add-int/lit8 v24, v14, -0x2

    move/from16 v0, v24

    if-ge v10, v0, :cond_c

    add-int/lit8 v24, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x23

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 187
    add-int/lit8 v24, v10, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v24

    const/16 v25, 0x78

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    const/4 v12, 0x1

    .line 188
    .local v12, isHex:Z
    :goto_1
    if-eqz v12, :cond_4

    const/16 v24, 0x3

    :goto_2
    add-int v5, v10, v24

    .line 189
    .local v5, charIndex:I
    if-eqz v12, :cond_5

    const/16 v15, 0x10

    .line 190
    .local v15, radix:I
    :goto_3
    const-string v22, ""

    .line 191
    .local v22, unicode:Ljava/lang/String;
    :goto_4
    if-ge v5, v14, :cond_1

    .line 192
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 193
    .local v6, currCh:C
    const/16 v24, 0x3b

    move/from16 v0, v24

    if-ne v6, v0, :cond_6

    .line 204
    .end local v6           #currCh:C
    :cond_1
    :goto_5
    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lorg/htmlcleaner/Utils;->isValidInt(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 205
    move-object/from16 v0, v22

    invoke-static {v0, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v23, v0

    .line 206
    .local v23, unicodeChar:C
    invoke-static/range {v23 .. v23}, Lorg/htmlcleaner/Utils;->isValidXmlChar(C)Z

    move-result v24

    if-nez v24, :cond_8

    .line 207
    move v10, v5

    .line 182
    .end local v5           #charIndex:I
    .end local v12           #isHex:Z
    .end local v15           #radix:I
    .end local v22           #unicode:Ljava/lang/String;
    .end local v23           #unicodeChar:C
    :cond_2
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 187
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 188
    .restart local v12       #isHex:Z
    :cond_4
    const/16 v24, 0x2

    goto :goto_2

    .line 189
    .restart local v5       #charIndex:I
    :cond_5
    const/16 v15, 0xa

    goto :goto_3

    .line 195
    .restart local v6       #currCh:C
    .restart local v15       #radix:I
    .restart local v22       #unicode:Ljava/lang/String;
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v15}, Lorg/htmlcleaner/Utils;->isValidInt(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 196
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 197
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 199
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 200
    goto :goto_5

    .line 208
    .end local v6           #currCh:C
    .restart local v23       #unicodeChar:C
    :cond_8
    invoke-static/range {v23 .. v23}, Lorg/htmlcleaner/Utils;->isReservedXmlChar(C)Z

    move-result v24

    if-nez v24, :cond_a

    .line 209
    if-eqz v16, :cond_9

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v24

    :goto_7
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    move v10, v5

    goto :goto_6

    .line 209
    :cond_9
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "&#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_7

    .line 212
    :cond_a
    move v10, v5

    .line 213
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "&#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 216
    .end local v23           #unicodeChar:C
    :cond_b
    const-string v24, "&amp;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 219
    .end local v5           #charIndex:I
    .end local v12           #isHex:Z
    .end local v15           #radix:I
    .end local v22           #unicode:Ljava/lang/String;
    :cond_c
    if-eqz v21, :cond_e

    .line 221
    invoke-static {}, Lorg/htmlcleaner/SpecialEntity;->getMaxEntityLength()I

    move-result v24

    add-int/lit8 v24, v24, 0x2

    sub-int v25, v14, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    add-int v24, v24, v10

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 222
    .local v19, seq:Ljava/lang/String;
    const/16 v24, 0x3b

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 223
    .local v18, semiIndex:I
    if-lez v18, :cond_e

    .line 224
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, entityKey:Ljava/lang/String;
    invoke-static {v8}, Lorg/htmlcleaner/SpecialEntity;->getEntity(Ljava/lang/String;)Lorg/htmlcleaner/SpecialEntity;

    move-result-object v7

    .line 226
    .local v7, entity:Lorg/htmlcleaner/SpecialEntity;
    if-eqz v7, :cond_e

    .line 227
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/CleanerProperties;->isTransSpecialEntitiesToNCR()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-virtual {v7}, Lorg/htmlcleaner/SpecialEntity;->getDecimalNCR()Ljava/lang/String;

    move-result-object v24

    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    add-int v10, v10, v24

    .line 229
    goto/16 :goto_6

    .line 227
    :cond_d
    invoke-virtual {v7}, Lorg/htmlcleaner/SpecialEntity;->getCharacter()C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    goto :goto_8

    .line 234
    .end local v7           #entity:Lorg/htmlcleaner/SpecialEntity;
    .end local v8           #entityKey:Ljava/lang/String;
    .end local v18           #semiIndex:I
    .end local v19           #seq:Ljava/lang/String;
    :cond_e
    if-eqz v3, :cond_15

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 236
    .local v20, sub:Ljava/lang/String;
    const/4 v13, 0x0

    .line 237
    .local v13, isReservedSeq:Z
    sget-object v24, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 238
    .local v9, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 239
    .restart local v19       #seq:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 240
    if-eqz p2, :cond_11

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/io/Serializable;

    :goto_9
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    add-int v10, v10, v24

    .line 242
    const/4 v13, 0x1

    .line 246
    .end local v9           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    .end local v19           #seq:Ljava/lang/String;
    :cond_10
    if-nez v13, :cond_2

    .line 247
    if-eqz p2, :cond_13

    const-string v24, "&"

    :goto_a
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 240
    .restart local v9       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    .restart local v19       #seq:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "&#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Character;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Character;->charValue()C

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_9

    :cond_12
    move-object/from16 v24, v19

    goto :goto_9

    .line 247
    .end local v9           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    .end local v19           #seq:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    const-string v24, "&#38;"

    goto :goto_a

    :cond_14
    sget-object v24, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    const/16 v25, 0x26

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    goto :goto_a

    .line 252
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #isReservedSeq:Z
    .end local v20           #sub:Ljava/lang/String;
    :cond_15
    const-string v24, "&amp;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 254
    :cond_16
    invoke-static {v4}, Lorg/htmlcleaner/Utils;->isReservedXmlChar(C)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 255
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    move/from16 v24, v0

    if-eqz v24, :cond_17

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "&#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :goto_b
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_17
    if-eqz p2, :cond_18

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    goto :goto_b

    :cond_18
    sget-object v24, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/io/Serializable;

    goto :goto_b

    .line 257
    :cond_19
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 261
    .end local v4           #ch:C
    :cond_1a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 264
    .end local v10           #i:I
    .end local v14           #len:I
    .end local v17           #result:Ljava/lang/StringBuilder;
    :goto_c
    return-object v24

    :cond_1b
    const/16 v24, 0x0

    goto :goto_c
.end method

.method public static evaluateTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .parameter "template"
    .parameter "variables"

    .prologue
    .line 332
    if-nez p0, :cond_0

    .line 356
    .end local p0
    :goto_0
    return-object p0

    .line 336
    .restart local p0
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v1, result:Ljava/lang/StringBuilder;
    sget-object v5, Lorg/htmlcleaner/Utils;->VAR_START:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 339
    .local v3, startIndex:I
    const/4 v0, -0x1

    .line 341
    .local v0, endIndex:I
    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 342
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    sget-object v5, Lorg/htmlcleaner/Utils;->VAR_END:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 345
    if-le v0, v3, :cond_1

    .line 346
    sget-object v5, Lorg/htmlcleaner/Utils;->VAR_START:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, varName:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 348
    .local v2, resultObj:Ljava/lang/Object;
    :goto_2
    if-nez v2, :cond_3

    const-string v5, ""

    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .end local v2           #resultObj:Ljava/lang/Object;
    .end local v4           #varName:Ljava/lang/String;
    :cond_1
    sget-object v5, Lorg/htmlcleaner/Utils;->VAR_START:Ljava/lang/String;

    sget-object v6, Lorg/htmlcleaner/Utils;->VAR_END:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    add-int/lit8 v7, v3, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 347
    .restart local v4       #varName:Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 348
    .restart local v2       #resultObj:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 354
    .end local v2           #resultObj:Ljava/lang/Object;
    .end local v4           #varName:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static fullUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "pageUrl"
    .parameter "link"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 424
    invoke-static {p1}, Lorg/htmlcleaner/Utils;->isFullUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    .end local p1
    :goto_0
    return-object p1

    .line 426
    .restart local p1
    :cond_0
    if-eqz p1, :cond_3

    const-string v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 427
    const/16 v4, 0x3f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 428
    .local v2, qindex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 429
    .local v1, len:I
    if-gez v2, :cond_1

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 431
    :cond_1
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_2

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 434
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 438
    .end local v1           #len:I
    .end local v2           #qindex:I
    :cond_3
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 440
    .local v0, isLinkAbsolute:Z
    invoke-static {p0}, Lorg/htmlcleaner/Utils;->isFullUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 444
    :cond_4
    if-eqz v0, :cond_5

    const-string v4, "/"

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 445
    .local v3, slashIndex:I
    :goto_1
    if-gt v3, v8, :cond_6

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 451
    :goto_2
    if-eqz v0, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object p1, v4

    goto/16 :goto_0

    .line 444
    .end local v3           #slashIndex:I
    :cond_5
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 448
    .restart local v3       #slashIndex:I
    :cond_6
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 451
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static getCharsetFromContent(Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 122
    .local v6, stream:Ljava/io/InputStream;
    const/16 v7, 0x800

    new-array v2, v7, [B

    .line 123
    .local v2, chunk:[B
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 124
    .local v0, bytesRead:I
    if-lez v0, :cond_0

    .line 125
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 126
    .local v5, startContent:Ljava/lang/String;
    const-string v4, "\\<meta\\s*http-equiv=[\\\"\\\']content-type[\\\"\\\']\\s*content\\s*=\\s*[\"\']text/html\\s*;\\s*charset=([a-z\\d\\-]*)[\\\"\\\'\\>]"

    .line 127
    .local v4, pattern:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-static {v4, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 128
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, charset:Ljava/lang/String;
    invoke-static {v1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    .end local v1           #charset:Ljava/lang/String;
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #pattern:Ljava/lang/String;
    .end local v5           #startContent:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCharsetFromContentTypeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "contentType"

    .prologue
    .line 106
    if-eqz p0, :cond_0

    .line 107
    const-string v2, "charset=([a-z\\d\\-]*)"

    .line 108
    .local v2, pattern:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 109
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, charset:Ljava/lang/String;
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    .end local v2           #pattern:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 459
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 460
    .local v0, colIndex:I
    if-lez v0, :cond_0

    .line 461
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 464
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getXmlName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 472
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 473
    .local v0, colIndex:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 474
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 477
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static isEmptyString(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 319
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFullUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "link"

    .prologue
    const/4 v0, 0x0

    .line 411
    if-nez p0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 415
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHexadecimalDigit(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 140
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x41

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-eq p0, v0, :cond_0

    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x62

    if-eq p0, v0, :cond_0

    const/16 v0, 0x43

    if-eq p0, v0, :cond_0

    const/16 v0, 0x63

    if-eq p0, v0, :cond_0

    const/16 v0, 0x44

    if-eq p0, v0, :cond_0

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0x45

    if-eq p0, v0, :cond_0

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const/16 v0, 0x46

    if-eq p0, v0, :cond_0

    const/16 v0, 0x66

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIdentifierHelperChar(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 287
    const/16 v0, 0x3a

    if-eq v0, p0, :cond_0

    const/16 v0, 0x2e

    if-eq v0, p0, :cond_0

    const/16 v0, 0x2d

    if-eq v0, p0, :cond_0

    const/16 v0, 0x5f

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReservedXmlChar(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    .line 155
    sget-object v0, Lorg/htmlcleaner/Utils;->RESERVED_XML_CHARS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValidInt(Ljava/lang/String;I)Z
    .locals 2
    .parameter "s"
    .parameter "radix"

    .prologue
    .line 160
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v1, 0x1

    .line 163
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidXmlChar(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 146
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_2

    :cond_1
    const/high16 v0, 0x1

    if-lt p0, v0, :cond_3

    const v0, 0x10ffff

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidXmlIdentifier(Ljava/lang/String;)Z
    .locals 5
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 296
    if-eqz p0, :cond_0

    .line 297
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 298
    .local v2, len:I
    if-nez v2, :cond_1

    .line 311
    .end local v2           #len:I
    :cond_0
    :goto_0
    return v3

    .line 301
    .restart local v2       #len:I
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 302
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 303
    .local v0, ch:C
    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x5f

    if-ne v0, v4, :cond_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lorg/htmlcleaner/Utils;->isIdentifierHelperChar(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    .end local v0           #ch:C
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isWhitespaceString(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 273
    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 277
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static ltrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v2, 0x0

    .line 83
    :goto_0
    return-object v2

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 79
    .local v1, len:I
    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_1
    if-lt v0, v1, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static rtrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 102
    :goto_0
    return-object v2

    .line 95
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 96
    .local v1, len:I
    move v0, v1

    .line 98
    .local v0, index:I
    :goto_1
    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 102
    :cond_1
    if-gtz v0, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static tokenize(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "s"
    .parameter "delimiters"

    .prologue
    .line 360
    if-nez p0, :cond_1

    .line 361
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 371
    :cond_0
    return-object v2

    .line 364
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 366
    .local v2, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 367
    .local v0, index:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0
.end method

.method public static updateTagTransformations(Lorg/htmlcleaner/CleanerTransformations;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "transformations"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 375
    const/16 v10, 0x2e

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 378
    .local v1, index:I
    if-gtz v1, :cond_5

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, destTag:Ljava/lang/String;
    const/4 v4, 0x1

    .line 381
    .local v4, preserveSourceAtts:Z
    if-eqz p2, :cond_2

    .line 382
    const-string v10, ",;"

    invoke-static {p2, v10}, Lorg/htmlcleaner/Utils;->tokenize(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, tokens:[Ljava/lang/String;
    array-length v10, v6

    if-lez v10, :cond_0

    .line 384
    aget-object v0, v6, v8

    .line 386
    :cond_0
    array-length v10, v6

    if-le v10, v9, :cond_2

    .line 387
    const-string v10, "true"

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "yes"

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "1"

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_1
    move v4, v9

    .line 392
    .end local v6           #tokens:[Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v2, Lorg/htmlcleaner/TagTransformation;

    invoke-direct {v2, p1, v0, v4}, Lorg/htmlcleaner/TagTransformation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 393
    .local v2, newTagTrans:Lorg/htmlcleaner/TagTransformation;
    invoke-virtual {p0, v2}, Lorg/htmlcleaner/CleanerTransformations;->addTransformation(Lorg/htmlcleaner/TagTransformation;)V

    .line 402
    .end local v0           #destTag:Ljava/lang/String;
    .end local v2           #newTagTrans:Lorg/htmlcleaner/TagTransformation;
    .end local v4           #preserveSourceAtts:Z
    :cond_3
    :goto_1
    return-void

    .restart local v0       #destTag:Ljava/lang/String;
    .restart local v4       #preserveSourceAtts:Z
    .restart local v6       #tokens:[Ljava/lang/String;
    :cond_4
    move v4, v8

    .line 387
    goto :goto_0

    .line 395
    .end local v0           #destTag:Ljava/lang/String;
    .end local v4           #preserveSourceAtts:Z
    .end local v6           #tokens:[Ljava/lang/String;
    :cond_5
    const-string v10, "."

    invoke-static {p1, v10}, Lorg/htmlcleaner/Utils;->tokenize(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, parts:[Ljava/lang/String;
    aget-object v5, v3, v8

    .line 397
    .local v5, tagName:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/htmlcleaner/CleanerTransformations;->getTransformation(Ljava/lang/String;)Lorg/htmlcleaner/TagTransformation;

    move-result-object v7

    .line 398
    .local v7, trans:Lorg/htmlcleaner/TagTransformation;
    if-eqz v7, :cond_3

    .line 399
    aget-object v8, v3, v9

    invoke-virtual {v7, v8, p2}, Lorg/htmlcleaner/TagTransformation;->addAttributeTransformation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
