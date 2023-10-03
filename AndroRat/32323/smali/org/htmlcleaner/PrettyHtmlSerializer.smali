.class public Lorg/htmlcleaner/PrettyHtmlSerializer;
.super Lorg/htmlcleaner/HtmlSerializer;
.source "PrettyHtmlSerializer.java"


# static fields
.field private static final DEFAULT_INDENTATION_STRING:Ljava/lang/String; = "\t"


# instance fields
.field private indentString:Ljava/lang/String;

.field private indents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 1
    .parameter "props"

    .prologue
    .line 54
    const-string v0, "\t"

    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/PrettyHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;Ljava/lang/String;)V
    .locals 1
    .parameter "props"
    .parameter "indentString"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    .line 50
    const-string v0, "\t"

    iput-object v0, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indentString:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indents:Ljava/util/List;

    .line 59
    iput-object p2, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indentString:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private declared-synchronized getIndent(I)Ljava/lang/String;
    .locals 6
    .parameter "level"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 72
    .local v3, size:I
    if-gt v3, p1, :cond_2

    .line 73
    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 74
    .local v2, prevIndent:Ljava/lang/String;
    :goto_0
    move v1, v3

    .local v1, i:I
    :goto_1
    if-gt v1, p1, :cond_2

    .line 75
    if-nez v2, :cond_1

    const-string v0, ""

    .line 76
    .local v0, currIndent:Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    move-object v2, v0

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v0           #currIndent:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #prevIndent:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indents:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    goto :goto_0

    .line 75
    .restart local v1       #i:I
    .restart local v2       #prevIndent:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indentString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 81
    .end local v1           #i:I
    .end local v2           #prevIndent:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 71
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getIndentedText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "content"
    .parameter "level"

    .prologue
    .line 85
    invoke-direct {p0, p2}, Lorg/htmlcleaner/PrettyHtmlSerializer;->getIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, indent:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    .local v2, result:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "\n\r"

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, line:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    .end local v1           #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getSingleLineOfChildren(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter "children"

    .prologue
    const/4 v5, 0x0

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v4, result:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 102
    .local v1, childrenIt:Ljava/util/Iterator;
    const/4 v3, 0x1

    .line 104
    .local v3, isFirst:Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, child:Ljava/lang/Object;
    instance-of v6, v0, Lorg/htmlcleaner/ContentNode;

    if-nez v6, :cond_1

    .line 131
    .end local v0           #child:Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v5

    .line 110
    .restart local v0       #child:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, content:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 114
    invoke-static {v2}, Lorg/htmlcleaner/Utils;->ltrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 119
    invoke-static {v2}, Lorg/htmlcleaner/Utils;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_3
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    const-string v6, "\r"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    .line 125
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const/4 v3, 0x0

    .line 129
    goto :goto_0

    .line 131
    .end local v0           #child:Ljava/lang/Object;
    .end local v2           #content:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
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
    const/4 v3, 0x0

    .line 63
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/htmlcleaner/PrettyHtmlSerializer;->serializePrettyHtml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;IZZ)V

    .line 64
    return-void
.end method

.method protected serializePrettyHtml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;IZZ)V
    .locals 19
    .parameter "tagNode"
    .parameter "writer"
    .parameter "level"
    .parameter "isPreserveWhitespaces"
    .parameter "isLastNewLine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v17

    .line 136
    .local v17, tagChildren:Ljava/util/List;
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v18

    .line 137
    .local v18, tagName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v15

    .line 138
    .local v15, isHeadlessNode:Z
    if-eqz v15, :cond_7

    const-string v14, ""

    .line 140
    .local v14, indent:Ljava/lang/String;
    :goto_0
    if-nez p4, :cond_1

    .line 141
    if-nez p5, :cond_0

    .line 142
    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 144
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/htmlcleaner/PrettyHtmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 148
    if-nez p4, :cond_2

    const-string v3, "pre"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    const/4 v7, 0x1

    .line 150
    .local v7, preserveWhitespaces:Z
    :goto_1
    const/4 v8, 0x0

    .line 152
    .local v8, lastWasNewLine:Z
    invoke-virtual/range {p0 .. p1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->getSingleLineOfChildren(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    .line 154
    .local v16, singleLine:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v13

    .line 155
    .local v13, dontEscape:Z
    if-nez v7, :cond_a

    if-eqz v16, :cond_a

    .line 156
    invoke-virtual/range {p0 .. p1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 201
    :cond_3
    if-nez v16, :cond_5

    if-nez v7, :cond_5

    .line 202
    if-nez v8, :cond_4

    .line 203
    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 205
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 208
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/htmlcleaner/PrettyHtmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 210
    .end local v13           #dontEscape:Z
    .end local v16           #singleLine:Ljava/lang/String;
    :cond_6
    return-void

    .line 138
    .end local v7           #preserveWhitespaces:Z
    .end local v8           #lastWasNewLine:Z
    .end local v14           #indent:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->getIndent(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 148
    .restart local v14       #indent:Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7       #preserveWhitespaces:Z
    .restart local v8       #lastWasNewLine:Z
    .restart local v13       #dontEscape:Z
    .restart local v16       #singleLine:Ljava/lang/String;
    :cond_9
    move-object/from16 v3, v16

    .line 156
    goto :goto_2

    .line 158
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 159
    .local v10, childIterator:Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 161
    .local v9, child:Ljava/lang/Object;
    instance-of v3, v9, Lorg/htmlcleaner/TagNode;

    if-eqz v3, :cond_d

    move-object v4, v9

    .line 162
    check-cast v4, Lorg/htmlcleaner/TagNode;

    if-eqz v15, :cond_c

    move/from16 v6, p3

    :goto_4
    move-object/from16 v3, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v8}, Lorg/htmlcleaner/PrettyHtmlSerializer;->serializePrettyHtml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;IZZ)V

    .line 163
    const/4 v8, 0x0

    goto :goto_3

    .line 162
    :cond_c
    add-int/lit8 v6, p3, 0x1

    goto :goto_4

    .line 164
    :cond_d
    instance-of v3, v9, Lorg/htmlcleaner/ContentNode;

    if-eqz v3, :cond_16

    .line 165
    if-eqz v13, :cond_f

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, content:Ljava/lang/String;
    :goto_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 167
    if-nez v13, :cond_e

    if-eqz v7, :cond_10

    .line 168
    :cond_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 165
    .end local v12           #content:Ljava/lang/String;
    :cond_f
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/htmlcleaner/PrettyHtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 169
    .restart local v12       #content:Ljava/lang/String;
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 170
    if-nez v8, :cond_11

    .line 171
    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 172
    const/4 v8, 0x0

    .line 174
    :cond_11
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 175
    invoke-static {v12}, Lorg/htmlcleaner/Utils;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v15, :cond_12

    move/from16 v3, p3

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lorg/htmlcleaner/PrettyHtmlSerializer;->getIndentedText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    add-int/lit8 v3, p3, 0x1

    goto :goto_6

    .line 177
    :cond_13
    const/4 v8, 0x1

    goto :goto_3

    .line 180
    :cond_14
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_15

    .line 181
    invoke-static {v12}, Lorg/htmlcleaner/Utils;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 183
    :cond_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 184
    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 185
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 189
    .end local v12           #content:Ljava/lang/String;
    :cond_16
    instance-of v3, v9, Lorg/htmlcleaner/CommentNode;

    if-eqz v3, :cond_b

    .line 190
    if-nez v8, :cond_17

    if-nez v7, :cond_17

    .line 191
    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 192
    const/4 v8, 0x0

    :cond_17
    move-object v11, v9

    .line 194
    check-cast v11, Lorg/htmlcleaner/CommentNode;

    .line 195
    .local v11, commentNode:Lorg/htmlcleaner/CommentNode;
    invoke-virtual {v11}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v12

    .line 196
    .restart local v12       #content:Ljava/lang/String;
    if-eqz v13, :cond_18

    .end local v12           #content:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_3

    .restart local v12       #content:Ljava/lang/String;
    :cond_18
    if-eqz v15, :cond_19

    move/from16 v3, p3

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lorg/htmlcleaner/PrettyHtmlSerializer;->getIndentedText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_19
    add-int/lit8 v3, p3, 0x1

    goto :goto_8
.end method
