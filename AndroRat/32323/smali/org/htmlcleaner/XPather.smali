.class public Lorg/htmlcleaner/XPather;
.super Ljava/lang/Object;
.source "XPather.java"


# instance fields
.field private tokenArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "expression"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "/()[]\"\'=<>"

    const/4 v5, 0x1

    invoke-direct {v3, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 72
    .local v2, tokenCount:I
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    .line 78
    .local v0, index:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;
    .locals 26
    .parameter "object"
    .parameter "from"
    .parameter "to"
    .parameter "isRecursive"
    .parameter "position"
    .parameter "last"
    .parameter "isFilterContext"
    .parameter "filterSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    .prologue
    .line 117
    if-ltz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, p3

    if-ge v0, v3, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-gt v0, v1, :cond_0

    .line 118
    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    add-int/lit8 v5, p2, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 183
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 120
    .restart local p1
    :cond_1
    const-string v3, "("

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v21

    .line 122
    .local v21, closingBracket:I
    if-lez v21, :cond_2

    .line 123
    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, v21, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    .line 124
    .local v4, value:Ljava/util/Collection;
    add-int/lit8 v5, v21, 0x1

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    .line 126
    .end local v4           #value:Ljava/util/Collection;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    .line 186
    .end local v21           #closingBracket:I
    :goto_1
    new-instance v3, Lorg/htmlcleaner/XPatherException;

    invoke-direct {v3}, Lorg/htmlcleaner/XPatherException;-><init>()V

    throw v3

    .line 128
    :cond_3
    const-string v3, "["

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v21

    .line 130
    .restart local v21       #closingBracket:I
    if-lez v21, :cond_4

    move-object/from16 v0, p1

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_4

    .line 131
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v5, v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lorg/htmlcleaner/XPather;->filterByCondition(Ljava/util/Collection;II)Ljava/util/Collection;

    move-result-object v4

    .line 132
    .restart local v4       #value:Ljava/util/Collection;
    add-int/lit8 v5, v21, 0x1

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto/16 :goto_0

    .line 134
    .end local v4           #value:Ljava/util/Collection;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    goto :goto_1

    .line 136
    .end local v21           #closingBracket:I
    :cond_5
    const-string v3, "\""

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "\'"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 137
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v23

    .line 138
    .local v23, closingQuote:I
    move/from16 v0, v23

    move/from16 v1, p2

    if-le v0, v1, :cond_7

    .line 139
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v5, v23, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lorg/htmlcleaner/XPather;->flatten(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 140
    .restart local v4       #value:Ljava/util/Collection;
    add-int/lit8 v5, v23, 0x1

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto/16 :goto_0

    .line 142
    .end local v4           #value:Ljava/util/Collection;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    goto/16 :goto_1

    .line 144
    .end local v23           #closingQuote:I
    :cond_8
    const-string v3, "="

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "<"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, ">"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    if-eqz p7, :cond_c

    .line 146
    const-string v3, "="

    add-int/lit8 v5, p2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "<"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ">"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 147
    :cond_a
    add-int/lit8 v7, p2, 0x2

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p8

    move/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v25

    .line 148
    .local v25, secondObject:Ljava/util/Collection;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    add-int/lit8 v6, p2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/htmlcleaner/XPather;->evaluateLogic(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v24

    .line 153
    .local v24, logicValue:Z
    :goto_2
    new-instance v3, Ljava/lang/Boolean;

    move/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto/16 :goto_0

    .line 150
    .end local v24           #logicValue:Z
    .end local v25           #secondObject:Ljava/util/Collection;
    :cond_b
    add-int/lit8 v7, p2, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p8

    move/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v25

    .line 151
    .restart local v25       #secondObject:Ljava/util/Collection;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v3, v3, p2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/htmlcleaner/XPather;->evaluateLogic(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v24

    .restart local v24       #logicValue:Z
    goto :goto_2

    .line 154
    .end local v24           #logicValue:Z
    .end local v25           #secondObject:Ljava/util/Collection;
    :cond_c
    const-string v3, "/"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 155
    const-string v3, "/"

    add-int/lit8 v5, p2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v9

    .line 156
    .local v9, goRecursive:Z
    if-eqz v9, :cond_d

    .line 157
    add-int/lit8 p2, p2, 0x1

    .line 159
    :cond_d
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_f

    .line 160
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v3

    add-int/lit8 v8, v3, -0x1

    .line 161
    .local v8, toIndex:I
    move/from16 v0, p2

    if-gt v8, v0, :cond_e

    .line 162
    move/from16 v8, p3

    .line 164
    :cond_e
    add-int/lit8 v7, p2, 0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    .line 165
    .restart local v4       #value:Ljava/util/Collection;
    add-int/lit8 v12, v8, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object v11, v4

    move/from16 v13, p3

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v18, p8

    invoke-direct/range {v10 .. v18}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto/16 :goto_0

    .line 167
    .end local v4           #value:Ljava/util/Collection;
    .end local v8           #toIndex:I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    goto/16 :goto_1

    .line 169
    .end local v9           #goRecursive:Z
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/XPather;->isFunctionCall(II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 170
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v22

    .local v22, closingBracketIndex:I
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    .line 171
    invoke-direct/range {v10 .. v16}, Lorg/htmlcleaner/XPather;->evaluateFunction(Ljava/util/Collection;IIIIZ)Ljava/util/Collection;

    move-result-object v11

    .line 172
    .local v11, funcValue:Ljava/util/Collection;
    add-int/lit8 v12, v22, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move/from16 v13, p3

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v18, p8

    invoke-direct/range {v10 .. v18}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto/16 :goto_0

    .line 173
    .end local v11           #funcValue:Ljava/util/Collection;
    .end local v22           #closingBracketIndex:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v3, v3, p2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/htmlcleaner/XPather;->isValidInteger(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 174
    new-instance v3, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 175
    .restart local v4       #value:Ljava/util/Collection;
    add-int/lit8 v14, p2, 0x1

    const/16 v16, 0x0

    move-object/from16 v12, p0

    move-object v13, v4

    move/from16 v15, p3

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move-object/from16 v20, p8

    invoke-direct/range {v12 .. v20}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto/16 :goto_0

    .line 176
    .end local v4           #value:Ljava/util/Collection;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v3, v3, p2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/htmlcleaner/XPather;->isValidDouble(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 177
    new-instance v3, Ljava/lang/Double;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-direct {v3, v5}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 178
    .restart local v4       #value:Ljava/util/Collection;
    add-int/lit8 v14, p2, 0x1

    const/16 v16, 0x0

    move-object/from16 v12, p0

    move-object v13, v4

    move/from16 v15, p3

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move-object/from16 v20, p8

    invoke-direct/range {v12 .. v20}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto/16 :goto_0

    .end local v4           #value:Ljava/util/Collection;
    :cond_13
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p7

    .line 180
    invoke-direct/range {v12 .. v17}, Lorg/htmlcleaner/XPather;->getElementsByName(Ljava/util/Collection;IIZZ)Ljava/util/Collection;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private evaluateFunction(Ljava/util/Collection;IIIIZ)Ljava/util/Collection;
    .locals 19
    .parameter "source"
    .parameter "from"
    .parameter "to"
    .parameter "position"
    .parameter "last"
    .parameter "isFilterContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 276
    .local v16, name:Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v17, result:Ljava/util/ArrayList;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v18

    .line 279
    .local v18, size:I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 280
    .local v15, iterator:Ljava/util/Iterator;
    const/4 v13, 0x0

    .line 281
    .local v13, index:I
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 282
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 283
    .local v11, curr:Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    .line 284
    const-string v1, "last"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    new-instance v2, Ljava/lang/Integer;

    if-eqz p6, :cond_1

    move/from16 v1, p5

    :goto_1
    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move/from16 v1, v18

    goto :goto_1

    .line 286
    :cond_2
    const-string v1, "position"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    new-instance v2, Ljava/lang/Integer;

    if-eqz p6, :cond_3

    move/from16 v1, p4

    :goto_2
    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v1, v13

    goto :goto_2

    .line 288
    :cond_4
    const-string v1, "text"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 289
    instance-of v1, v11, Lorg/htmlcleaner/TagNode;

    if-eqz v1, :cond_5

    .line 290
    check-cast v11, Lorg/htmlcleaner/TagNode;

    .end local v11           #curr:Ljava/lang/Object;
    invoke-virtual {v11}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/StringBuffer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    .restart local v11       #curr:Ljava/lang/Object;
    :cond_5
    instance-of v1, v11, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_6
    const-string v1, "count"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 295
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    .line 297
    .local v10, argumentEvaluated:Ljava/util/Collection;
    new-instance v1, Ljava/lang/Integer;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 298
    .end local v10           #argumentEvaluated:Ljava/util/Collection;
    :cond_7
    const-string v1, "data"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 299
    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    .line 300
    .restart local v10       #argumentEvaluated:Ljava/util/Collection;
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 301
    .local v14, it:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 303
    .local v12, elem:Ljava/lang/Object;
    instance-of v1, v12, Lorg/htmlcleaner/TagNode;

    if-eqz v1, :cond_9

    .line 304
    check-cast v12, Lorg/htmlcleaner/TagNode;

    .end local v12           #elem:Ljava/lang/Object;
    invoke-virtual {v12}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/StringBuffer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 305
    .restart local v12       #elem:Ljava/lang/Object;
    :cond_9
    instance-of v1, v12, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 306
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 310
    .end local v10           #argumentEvaluated:Ljava/util/Collection;
    .end local v12           #elem:Ljava/lang/Object;
    .end local v14           #it:Ljava/util/Iterator;
    :cond_a
    new-instance v1, Lorg/htmlcleaner/XPatherException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/htmlcleaner/XPatherException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    .end local v11           #curr:Ljava/lang/Object;
    :cond_b
    return-object v17
.end method

.method private evaluateLogic(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 12
    .parameter "first"
    .parameter "second"
    .parameter "logicOperator"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 537
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    if-eqz v11, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    move v9, v10

    .line 573
    :cond_1
    :goto_0
    return v9

    .line 540
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 541
    .local v4, elem1:Ljava/lang/Object;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 542
    .local v5, elem2:Ljava/lang/Object;
    instance-of v11, v4, Ljava/lang/Number;

    if-eqz v11, :cond_7

    instance-of v11, v5, Ljava/lang/Number;

    if-eqz v11, :cond_7

    .line 543
    check-cast v4, Ljava/lang/Number;

    .end local v4           #elem1:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 544
    .local v0, d1:D
    check-cast v5, Ljava/lang/Number;

    .end local v5           #elem2:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 545
    .local v2, d2:D
    const-string v11, "="

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 546
    cmpl-double v11, v0, v2

    if-eqz v11, :cond_1

    move v9, v10

    goto :goto_0

    .line 547
    :cond_3
    const-string v11, "<"

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 548
    cmpg-double v11, v0, v2

    if-ltz v11, :cond_1

    move v9, v10

    goto :goto_0

    .line 549
    :cond_4
    const-string v11, ">"

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 550
    cmpl-double v11, v0, v2

    if-gtz v11, :cond_1

    move v9, v10

    goto :goto_0

    .line 551
    :cond_5
    const-string v11, "<="

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 552
    cmpg-double v11, v0, v2

    if-lez v11, :cond_1

    move v9, v10

    goto :goto_0

    .line 553
    :cond_6
    const-string v11, ">="

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 554
    cmpl-double v11, v0, v2

    if-gez v11, :cond_1

    move v9, v10

    goto :goto_0

    .line 557
    .end local v0           #d1:D
    .end local v2           #d2:D
    .restart local v4       #elem1:Ljava/lang/Object;
    .restart local v5       #elem2:Ljava/lang/Object;
    :cond_7
    invoke-direct {p0, v4}, Lorg/htmlcleaner/XPather;->toText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, s1:Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/htmlcleaner/XPather;->toText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, s2:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 560
    .local v6, result:I
    const-string v11, "="

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 561
    if-eqz v6, :cond_1

    move v9, v10

    goto/16 :goto_0

    .line 562
    :cond_8
    const-string v11, "<"

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 563
    if-ltz v6, :cond_1

    move v9, v10

    goto/16 :goto_0

    .line 564
    :cond_9
    const-string v11, ">"

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 565
    if-gtz v6, :cond_1

    move v9, v10

    goto/16 :goto_0

    .line 566
    :cond_a
    const-string v11, "<="

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 567
    if-lez v6, :cond_1

    move v9, v10

    goto/16 :goto_0

    .line 568
    :cond_b
    const-string v11, ">="

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 569
    if-gez v6, :cond_1

    move v9, v10

    goto/16 :goto_0

    .end local v4           #elem1:Ljava/lang/Object;
    .end local v5           #elem2:Ljava/lang/Object;
    .end local v6           #result:I
    .end local v7           #s1:Ljava/lang/String;
    .end local v8           #s2:Ljava/lang/String;
    :cond_c
    move v9, v10

    .line 573
    goto/16 :goto_0
.end method

.method private filterByCondition(Ljava/util/Collection;II)Ljava/util/Collection;
    .locals 14
    .parameter "source"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v13, result:Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 326
    .local v11, iterator:Ljava/util/Iterator;
    const/4 v5, 0x0

    .line 327
    .local v5, index:I
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    .line 328
    .local v6, size:I
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 330
    .local v9, curr:Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    .line 332
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {p0, v9}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v9}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v8

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 333
    .local v12, logicValueList:Ljava/util/ArrayList;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 334
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 335
    .local v10, first:Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 336
    check-cast v10, Ljava/lang/Boolean;

    .end local v10           #first:Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .restart local v10       #first:Ljava/lang/Object;
    :cond_1
    instance-of v0, v10, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 340
    check-cast v10, Ljava/lang/Integer;

    .end local v10           #first:Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 341
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    .restart local v10       #first:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    .end local v9           #curr:Ljava/lang/Object;
    .end local v10           #first:Ljava/lang/Object;
    .end local v12           #logicValueList:Ljava/util/ArrayList;
    :cond_3
    return-object v13
.end method

.method private findClosingIndex(II)I
    .locals 11
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 363
    if-ge p1, p2, :cond_12

    .line 364
    iget-object v9, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v2, v9, p1

    .line 366
    .local v2, currToken:Ljava/lang/String;
    const-string v9, "\""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 367
    add-int/lit8 v3, p1, 0x1

    .local v3, i:I
    :goto_0
    if-gt v3, p2, :cond_12

    .line 368
    const-string v7, "\""

    iget-object v8, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 409
    .end local v2           #currToken:Ljava/lang/String;
    .end local v3           #i:I
    :cond_0
    :goto_1
    return v3

    .line 367
    .restart local v2       #currToken:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    .end local v3           #i:I
    :cond_2
    const-string v9, "\'"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 373
    add-int/lit8 v3, p1, 0x1

    .restart local v3       #i:I
    :goto_2
    if-gt v3, p2, :cond_12

    .line 374
    const-string v7, "\'"

    iget-object v8, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 373
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 378
    .end local v3           #i:I
    :cond_3
    const-string v9, "("

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "["

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 379
    :cond_4
    const/4 v5, 0x1

    .line 380
    .local v5, isQuoteClosed:Z
    const/4 v4, 0x1

    .line 381
    .local v4, isAposClosed:Z
    const-string v9, "("

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v1, v7

    .line 382
    .local v1, brackets:I
    :goto_3
    const-string v9, "["

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v0, v7

    .line 383
    .local v0, angleBrackets:I
    :goto_4
    const-string v9, "/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v6, v7

    .line 384
    .local v6, slashes:I
    :goto_5
    add-int/lit8 v3, p1, 0x1

    .restart local v3       #i:I
    :goto_6
    if-gt v3, p2, :cond_12

    .line 385
    const-string v9, "\""

    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 386
    if-nez v5, :cond_a

    move v5, v7

    .line 401
    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    if-eqz v6, :cond_0

    .line 384
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .end local v0           #angleBrackets:I
    .end local v1           #brackets:I
    .end local v3           #i:I
    .end local v6           #slashes:I
    :cond_7
    move v1, v8

    .line 381
    goto :goto_3

    .restart local v1       #brackets:I
    :cond_8
    move v0, v8

    .line 382
    goto :goto_4

    .restart local v0       #angleBrackets:I
    :cond_9
    move v6, v8

    .line 383
    goto :goto_5

    .restart local v3       #i:I
    .restart local v6       #slashes:I
    :cond_a
    move v5, v8

    .line 386
    goto :goto_7

    .line 387
    :cond_b
    const-string v9, "\'"

    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 388
    if-nez v4, :cond_c

    move v4, v7

    :goto_8
    goto :goto_7

    :cond_c
    move v4, v8

    goto :goto_8

    .line 389
    :cond_d
    const-string v9, "("

    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v5, :cond_e

    if-eqz v4, :cond_e

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 391
    :cond_e
    const-string v9, ")"

    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v5, :cond_f

    if-eqz v4, :cond_f

    .line 392
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 393
    :cond_f
    const-string v9, "["

    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    if-eqz v5, :cond_10

    if-eqz v4, :cond_10

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 395
    :cond_10
    const-string v9, "]"

    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v5, :cond_11

    if-eqz v4, :cond_11

    .line 396
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 397
    :cond_11
    const-string v9, "/"

    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 398
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_7

    .line 409
    .end local v0           #angleBrackets:I
    .end local v1           #brackets:I
    .end local v2           #currToken:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #isAposClosed:Z
    .end local v5           #isQuoteClosed:Z
    .end local v6           #slashes:I
    :cond_12
    const/4 v3, -0x1

    goto/16 :goto_1
.end method

.method private flatten(II)Ljava/lang/String;
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 190
    if-gt p1, p2, :cond_1

    .line 191
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
    .local v1, result:Ljava/lang/StringBuffer;
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 193
    iget-object v2, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .end local v0           #i:I
    .end local v1           #result:Ljava/lang/StringBuffer;
    :goto_1
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private getElementsByName(Ljava/util/Collection;IIZZ)Ljava/util/Collection;
    .locals 32
    .parameter "source"
    .parameter "from"
    .parameter "to"
    .parameter "isRecursive"
    .parameter "isFilterContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    .prologue
    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 442
    .local v23, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/htmlcleaner/XPather;->isAtt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 443
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 444
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v29, result:Ljava/util/Collection;
    if-eqz p4, :cond_1

    .line 447
    new-instance v26, Ljava/util/LinkedHashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/LinkedHashSet;-><init>()V

    .line 448
    .local v26, nodes:Ljava/util/Collection;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 449
    .local v22, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 451
    .local v24, next:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v2, v0, Lorg/htmlcleaner/TagNode;

    if-eqz v2, :cond_0

    move-object/from16 v25, v24

    .line 452
    check-cast v25, Lorg/htmlcleaner/TagNode;

    .line 453
    .local v25, node:Lorg/htmlcleaner/TagNode;
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/htmlcleaner/TagNode;->getAllElementsList(Z)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 457
    .end local v22           #iterator:Ljava/util/Iterator;
    .end local v24           #next:Ljava/lang/Object;
    .end local v25           #node:Lorg/htmlcleaner/TagNode;
    .end local v26           #nodes:Ljava/util/Collection;
    :cond_1
    move-object/from16 v26, p1

    .line 460
    .restart local v26       #nodes:Ljava/util/Collection;
    :cond_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 461
    .restart local v22       #iterator:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 462
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 463
    .restart local v24       #next:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v2, v0, Lorg/htmlcleaner/TagNode;

    if-eqz v2, :cond_5

    move-object/from16 v25, v24

    .line 464
    check-cast v25, Lorg/htmlcleaner/TagNode;

    .line 465
    .restart local v25       #node:Lorg/htmlcleaner/TagNode;
    const-string v2, "*"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 466
    invoke-virtual/range {v25 .. v25}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 468
    :cond_4
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 469
    .local v14, attValue:Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 470
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 474
    .end local v14           #attValue:Ljava/lang/String;
    .end local v25           #node:Lorg/htmlcleaner/TagNode;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    goto :goto_1

    .end local v24           #next:Ljava/lang/Object;
    :cond_6
    move-object/from16 v30, v29

    .line 525
    .end local v26           #nodes:Ljava/util/Collection;
    .end local v29           #result:Ljava/util/Collection;
    .local v30, result:Ljava/lang/Object;
    :goto_2
    return-object v30

    .line 479
    .end local v22           #iterator:Ljava/util/Iterator;
    .end local v30           #result:Ljava/lang/Object;
    :cond_7
    new-instance v29, Ljava/util/LinkedHashSet;

    invoke-direct/range {v29 .. v29}, Ljava/util/LinkedHashSet;-><init>()V

    .line 480
    .restart local v29       #result:Ljava/util/Collection;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 481
    .restart local v22       #iterator:Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 482
    .local v7, index:I
    :cond_8
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 483
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 484
    .restart local v24       #next:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v2, v0, Lorg/htmlcleaner/TagNode;

    if-eqz v2, :cond_11

    move-object/from16 v25, v24

    .line 485
    check-cast v25, Lorg/htmlcleaner/TagNode;

    .line 486
    .restart local v25       #node:Lorg/htmlcleaner/TagNode;
    add-int/lit8 v7, v7, 0x1

    .line 487
    const-string v2, "."

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 488
    .local v21, isSelf:Z
    const-string v2, ".."

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 489
    .local v20, isParent:Z
    const-string v2, "*"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 492
    .local v19, isAll:Z
    if-eqz v21, :cond_c

    .line 493
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v31

    .line 501
    .local v31, subnodes:Ljava/util/Collection;
    :goto_4
    new-instance v3, Ljava/util/LinkedHashSet;

    move-object/from16 v0, v31

    invoke-direct {v3, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 502
    .local v3, nodeSet:Ljava/util/LinkedHashSet;
    add-int/lit8 v4, p2, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v8

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v28

    .line 504
    .local v28, refinedSubnodes:Ljava/util/Collection;
    if-eqz p4, :cond_10

    .line 505
    invoke-virtual/range {v25 .. v25}, Lorg/htmlcleaner/TagNode;->getChildTagList()Ljava/util/List;

    move-result-object v17

    .line 506
    .local v17, childTags:Ljava/util/List;
    if-nez v21, :cond_9

    if-nez v20, :cond_9

    if-eqz v19, :cond_a

    .line 507
    :cond_9
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 509
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 510
    .local v15, childIterator:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 511
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/htmlcleaner/TagNode;

    .line 512
    .local v16, childTag:Lorg/htmlcleaner/TagNode;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v9

    move-object/from16 v8, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lorg/htmlcleaner/XPather;->getElementsByName(Ljava/util/Collection;IIZZ)Ljava/util/Collection;

    move-result-object v18

    .line 513
    .local v18, childrenByName:Ljava/util/Collection;
    if-nez v21, :cond_b

    if-nez v20, :cond_b

    if-nez v19, :cond_b

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 514
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_b
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 494
    .end local v3           #nodeSet:Ljava/util/LinkedHashSet;
    .end local v15           #childIterator:Ljava/util/Iterator;
    .end local v16           #childTag:Lorg/htmlcleaner/TagNode;
    .end local v17           #childTags:Ljava/util/List;
    .end local v18           #childrenByName:Ljava/util/Collection;
    .end local v28           #refinedSubnodes:Ljava/util/Collection;
    .end local v31           #subnodes:Ljava/util/Collection;
    :cond_c
    if-eqz v20, :cond_e

    .line 495
    invoke-virtual/range {v25 .. v25}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v27

    .line 496
    .local v27, parent:Lorg/htmlcleaner/TagNode;
    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v31

    .line 497
    .restart local v31       #subnodes:Ljava/util/Collection;
    :goto_6
    goto/16 :goto_4

    .line 496
    .end local v31           #subnodes:Ljava/util/Collection;
    :cond_d
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6

    .line 498
    .end local v27           #parent:Lorg/htmlcleaner/TagNode;
    :cond_e
    if-eqz v19, :cond_f

    invoke-virtual/range {v25 .. v25}, Lorg/htmlcleaner/TagNode;->getChildTagList()Ljava/util/List;

    move-result-object v31

    .restart local v31       #subnodes:Ljava/util/Collection;
    :goto_7
    goto/16 :goto_4

    .end local v31           #subnodes:Ljava/util/Collection;
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lorg/htmlcleaner/TagNode;->getElementListByName(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v31

    goto :goto_7

    .line 519
    .restart local v3       #nodeSet:Ljava/util/LinkedHashSet;
    .restart local v28       #refinedSubnodes:Ljava/util/Collection;
    .restart local v31       #subnodes:Ljava/util/Collection;
    :cond_10
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 522
    .end local v3           #nodeSet:Ljava/util/LinkedHashSet;
    .end local v19           #isAll:Z
    .end local v20           #isParent:Z
    .end local v21           #isSelf:Z
    .end local v25           #node:Lorg/htmlcleaner/TagNode;
    .end local v28           #refinedSubnodes:Ljava/util/Collection;
    .end local v31           #subnodes:Ljava/util/Collection;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    goto/16 :goto_3

    .end local v24           #next:Ljava/lang/Object;
    :cond_12
    move-object/from16 v30, v29

    .line 525
    .restart local v30       #result:Ljava/lang/Object;
    goto/16 :goto_2
.end method

.method private isAtt(Ljava/lang/String;)Z
    .locals 2
    .parameter "token"

    .prologue
    const/4 v0, 0x1

    .line 417
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFunctionCall(II)Z
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v0, 0x0

    .line 252
    iget-object v1, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lorg/htmlcleaner/XPather;->isIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "("

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v1, v2}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, p2}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isIdentifier(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 225
    if-nez p1, :cond_1

    .line 242
    :cond_0
    return v3

    .line 229
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 231
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 236
    .local v0, ch:C
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isToken(Ljava/lang/String;I)Z
    .locals 3
    .parameter "token"
    .parameter "index"

    .prologue
    .line 352
    iget-object v1, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    array-length v0, v1

    .line 353
    .local v0, len:I
    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    iget-object v1, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidDouble(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 213
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    const/4 v1, 0x1

    .line 216
    :goto_0
    return v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidInteger(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 204
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/4 v1, 0x1

    .line 207
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private singleton(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "element"

    .prologue
    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v0, result:Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    return-object v0
.end method

.method private throwStandardException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lorg/htmlcleaner/XPatherException;

    invoke-direct {v0}, Lorg/htmlcleaner/XPatherException;-><init>()V

    throw v0
.end method

.method private toText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "o"

    .prologue
    .line 577
    if-nez p1, :cond_0

    .line 578
    const-string v0, ""

    .line 582
    .end local p1
    :goto_0
    return-object v0

    .line 579
    .restart local p1
    :cond_0
    instance-of v0, p1, Lorg/htmlcleaner/TagNode;

    if-eqz v0, :cond_1

    .line 580
    check-cast p1, Lorg/htmlcleaner/TagNode;

    .end local p1
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 582
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public evaluateAgainstNode(Lorg/htmlcleaner/TagNode;)[Ljava/lang/Object;
    .locals 14
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Lorg/htmlcleaner/XPatherException;

    const-string v1, "Cannot evaluate XPath expression against null value!"

    invoke-direct {v0, v1}, Lorg/htmlcleaner/XPatherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iget-object v0, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v3, v0, -0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v4, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    .line 94
    .local v10, collectionResult:Ljava/util/Collection;
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/Object;

    .line 96
    .local v9, array:[Ljava/lang/Object;
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 97
    .local v13, iterator:Ljava/util/Iterator;
    const/4 v11, 0x0

    .line 98
    .local v11, index:I
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v9, v11

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_0

    .line 102
    :cond_1
    return-object v9
.end method
