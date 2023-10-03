.class public Lorg/htmlcleaner/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "args"
    .parameter "name"

    .prologue
    .line 55
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 56
    aget-object v2, p0, v4

    .line 57
    .local v2, curr:Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 58
    .local v3, eqIndex:I
    if-ltz v3, :cond_0

    .line 59
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, argName:Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, argValue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    .end local v0           #argName:Ljava/lang/String;
    .end local v1           #argValue:Ljava/lang/String;
    .end local v2           #curr:Ljava/lang/String;
    .end local v3           #eqIndex:I
    :goto_1
    return-object v1

    .line 55
    .restart local v2       #curr:Ljava/lang/String;
    .restart local v3       #eqIndex:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    .end local v2           #curr:Ljava/lang/String;
    .end local v3           #eqIndex:I
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 57
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v53, "src"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 77
    .local v35, source:Ljava/lang/String;
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_0

    .line 78
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "Usage: java -jar htmlcleanerXX.jar src = <url | file> [incharset = <charset>] [dest = <file>] [outcharset = <charset>] [taginfofile=<file>] [options...]"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, ""

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "where options include:"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    outputtype=simple* | compact | browser-compact | pretty | htmlsimple | htmlcompact | htmlpretty"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    advancedxmlescape=true* | false"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    transrescharstoncr=true | false*"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    usecdata=true* | false"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    specialentities=true* | false"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    transspecialentitiestoncr=true | false*"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    unicodechars=true* | false"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    omitunknowntags=true | false*"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    treatunknowntagsascontent=true | false*"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    omitdeprtags=true | false*"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    treatdeprtagsascontent=true | false*"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    omitcomments=true | false*"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    omitxmldecl=true | false*"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    omitdoctypedecl=true* | false"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    useemptyelementtags=true* | false"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    allowmultiwordattributes=true* | false"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    allowhtmlinsideattributes=true | false*"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    ignoreqe=true* | false"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    namespacesaware=true* | false"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    hyphenreplacement=<string value> [=]"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    prunetags=<string value> []"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    booleanatts=self* | empty | true"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    nodebyxpath=<xpath expression>"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    omitenvelope=true | false*"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    t:<sourcetagX>[=<desttag>[,<preserveatts>]]"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    sget-object v53, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v54, "    t:<sourcetagX>.<destattrY>[=<template>]"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    const/16 v53, 0x1

    invoke-static/range {v53 .. v53}, Ljava/lang/System;->exit(I)V

    .line 111
    :cond_0
    const-string v53, "incharset"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 112
    .local v16, inCharset:Ljava/lang/String;
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_1

    .line 113
    sget-object v16, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    .line 116
    :cond_1
    const-string v53, "outcharset"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 117
    .local v31, outCharset:Ljava/lang/String;
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2

    .line 118
    sget-object v31, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    .line 121
    :cond_2
    const-string v53, "dest"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 122
    .local v12, destination:Ljava/lang/String;
    const-string v53, "outputtype"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 123
    .local v32, outputType:Ljava/lang/String;
    const-string v53, "advancedxmlescape"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, advancedXmlEscape:Ljava/lang/String;
    const-string v53, "transrescharstoncr"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 125
    .local v42, transResCharsToNCR:Ljava/lang/String;
    const-string v53, "usecdata"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 126
    .local v49, useCData:Ljava/lang/String;
    const-string v53, "specialentities"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 127
    .local v45, translateSpecialEntities:Ljava/lang/String;
    const-string v53, "transspecialentitiestoncr"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 128
    .local v43, transSpecialEntitiesToNCR:Ljava/lang/String;
    const-string v53, "unicodechars"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 129
    .local v48, unicodeChars:Ljava/lang/String;
    const-string v53, "omitunknowntags"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 130
    .local v28, omitUnknownTags:Ljava/lang/String;
    const-string v53, "treatunknowntagsascontent"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 131
    .local v47, treatUnknownTagsAsContent:Ljava/lang/String;
    const-string v53, "omitdeprtags"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 132
    .local v24, omitDeprecatedTags:Ljava/lang/String;
    const-string v53, "treatdeprtagsascontent"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 133
    .local v46, treatDeprecatedTagsAsContent:Ljava/lang/String;
    const-string v53, "omitcomments"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 134
    .local v23, omitComments:Ljava/lang/String;
    const-string v53, "omitxmldecl"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 135
    .local v29, omitXmlDeclaration:Ljava/lang/String;
    const-string v53, "omitdoctypedecl"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 136
    .local v25, omitDoctypeDeclaration:Ljava/lang/String;
    const-string v53, "omithtmlenvelope"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 137
    .local v27, omitHtmlEnvelope:Ljava/lang/String;
    const-string v53, "useemptyelementtags"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 138
    .local v50, useEmptyElementTags:Ljava/lang/String;
    const-string v53, "allowmultiwordattributes"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, allowMultiWordAttributes:Ljava/lang/String;
    const-string v53, "allowhtmlinsideattributes"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, allowHtmlInsideAttributes:Ljava/lang/String;
    const-string v53, "ignoreqe"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 141
    .local v15, ignoreQuestAndExclam:Ljava/lang/String;
    const-string v53, "namespacesaware"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 142
    .local v20, namespacesAware:Ljava/lang/String;
    const-string v53, "hyphenreplacement"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, commentHyphen:Ljava/lang/String;
    const-string v53, "prunetags"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 144
    .local v34, pruneTags:Ljava/lang/String;
    const-string v53, "booleanatts"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, booleanAtts:Ljava/lang/String;
    const-string v53, "nodebyxpath"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 147
    .local v22, nodeByXPath:Ljava/lang/String;
    const-string v53, "omitenvelope"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v26

    .line 151
    .local v26, omitEnvelope:Z
    const-string v53, "taginfofile"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 152
    .local v40, tagInfoFile:Ljava/lang/String;
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_1a

    .line 153
    new-instance v10, Lorg/htmlcleaner/HtmlCleaner;

    new-instance v53, Lorg/htmlcleaner/ConfigFileTagProvider;

    new-instance v54, Ljava/io/File;

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v53 .. v54}, Lorg/htmlcleaner/ConfigFileTagProvider;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v53

    invoke-direct {v10, v0}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;)V

    .line 158
    .local v10, cleaner:Lorg/htmlcleaner/HtmlCleaner;
    :goto_0
    invoke-virtual {v10}, Lorg/htmlcleaner/HtmlCleaner;->getProperties()Lorg/htmlcleaner/CleanerProperties;

    move-result-object v33

    .line 160
    .local v33, props:Lorg/htmlcleaner/CleanerProperties;
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_3

    .line 161
    invoke-static/range {v28 .. v28}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setOmitUnknownTags(Z)V

    .line 164
    :cond_3
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_4

    .line 165
    invoke-static/range {v47 .. v47}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setTreatUnknownTagsAsContent(Z)V

    .line 168
    :cond_4
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_5

    .line 169
    invoke-static/range {v24 .. v24}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setOmitDeprecatedTags(Z)V

    .line 172
    :cond_5
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_6

    .line 173
    invoke-static/range {v46 .. v46}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setTreatDeprecatedTagsAsContent(Z)V

    .line 176
    :cond_6
    const-string v53, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_7

    .line 177
    invoke-static {v5}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setAdvancedXmlEscape(Z)V

    .line 180
    :cond_7
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_8

    .line 181
    invoke-static/range {v42 .. v42}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setTransResCharsToNCR(Z)V

    .line 184
    :cond_8
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_9

    .line 185
    invoke-static/range {v49 .. v49}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setUseCdataForScriptAndStyle(Z)V

    .line 188
    :cond_9
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_a

    .line 189
    invoke-static/range {v45 .. v45}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setTranslateSpecialEntities(Z)V

    .line 192
    :cond_a
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_b

    .line 193
    invoke-static/range {v43 .. v43}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setTransSpecialEntitiesToNCR(Z)V

    .line 196
    :cond_b
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_c

    .line 197
    invoke-static/range {v48 .. v48}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setRecognizeUnicodeChars(Z)V

    .line 200
    :cond_c
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_d

    .line 201
    invoke-static/range {v23 .. v23}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setOmitComments(Z)V

    .line 204
    :cond_d
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_e

    .line 205
    invoke-static/range {v29 .. v29}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setOmitXmlDeclaration(Z)V

    .line 208
    :cond_e
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_f

    .line 209
    invoke-static/range {v25 .. v25}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setOmitDoctypeDeclaration(Z)V

    .line 212
    :cond_f
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_10

    .line 213
    invoke-static/range {v27 .. v27}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setOmitHtmlEnvelope(Z)V

    .line 216
    :cond_10
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_11

    .line 217
    invoke-static/range {v50 .. v50}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setUseEmptyElementTags(Z)V

    .line 220
    :cond_11
    const-string v53, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_12

    .line 221
    invoke-static {v7}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setAllowMultiWordAttributes(Z)V

    .line 224
    :cond_12
    const-string v53, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 225
    invoke-static {v6}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setAllowHtmlInsideAttributes(Z)V

    .line 228
    :cond_13
    const-string v53, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_14

    .line 229
    invoke-static {v15}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setIgnoreQuestAndExclam(Z)V

    .line 232
    :cond_14
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_15

    .line 233
    invoke-static/range {v20 .. v20}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->setNamespacesAware(Z)V

    .line 236
    :cond_15
    const-string v53, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_16

    .line 237
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Lorg/htmlcleaner/CleanerProperties;->setHyphenReplacementInComment(Ljava/lang/String;)V

    .line 240
    :cond_16
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_17

    .line 241
    invoke-virtual/range {v33 .. v34}, Lorg/htmlcleaner/CleanerProperties;->setPruneTags(Ljava/lang/String;)V

    .line 244
    :cond_17
    const-string v53, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_18

    .line 245
    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Lorg/htmlcleaner/CleanerProperties;->setBooleanAttributeValues(Ljava/lang/String;)V

    .line 249
    :cond_18
    new-instance v41, Ljava/util/TreeMap;

    invoke-direct/range {v41 .. v41}, Ljava/util/TreeMap;-><init>()V

    .line 250
    .local v41, transInfos:Ljava/util/Map;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v53, v0

    move/from16 v0, v53

    if-ge v14, v0, :cond_1d

    .line 251
    aget-object v8, p0, v14

    .line 252
    .local v8, arg:Ljava/lang/String;
    const-string v53, "t:"

    move-object/from16 v0, v53

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_19

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v53

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-le v0, v1, :cond_19

    .line 253
    const/16 v53, 0x2

    move/from16 v0, v53

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 254
    const/16 v53, 0x3d

    move/from16 v0, v53

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 255
    .local v17, index:I
    if-gtz v17, :cond_1b

    move-object/from16 v19, v8

    .line 256
    .local v19, key:Ljava/lang/String;
    :goto_2
    if-gtz v17, :cond_1c

    const/16 v51, 0x0

    .line 257
    .local v51, value:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v41

    move-object/from16 v1, v19

    move-object/from16 v2, v51

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v17           #index:I
    .end local v19           #key:Ljava/lang/String;
    .end local v51           #value:Ljava/lang/String;
    :cond_19
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 155
    .end local v8           #arg:Ljava/lang/String;
    .end local v10           #cleaner:Lorg/htmlcleaner/HtmlCleaner;
    .end local v14           #i:I
    .end local v33           #props:Lorg/htmlcleaner/CleanerProperties;
    .end local v41           #transInfos:Ljava/util/Map;
    :cond_1a
    new-instance v10, Lorg/htmlcleaner/HtmlCleaner;

    invoke-direct {v10}, Lorg/htmlcleaner/HtmlCleaner;-><init>()V

    .restart local v10       #cleaner:Lorg/htmlcleaner/HtmlCleaner;
    goto/16 :goto_0

    .line 255
    .restart local v8       #arg:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v17       #index:I
    .restart local v33       #props:Lorg/htmlcleaner/CleanerProperties;
    .restart local v41       #transInfos:Ljava/util/Map;
    :cond_1b
    const/16 v53, 0x0

    move/from16 v0, v53

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 256
    .restart local v19       #key:Ljava/lang/String;
    :cond_1c
    add-int/lit8 v53, v17, 0x1

    move/from16 v0, v53

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v51

    goto :goto_3

    .line 260
    .end local v8           #arg:Ljava/lang/String;
    .end local v17           #index:I
    .end local v19           #key:Ljava/lang/String;
    :cond_1d
    if-eqz v41, :cond_1f

    .line 261
    new-instance v44, Lorg/htmlcleaner/CleanerTransformations;

    invoke-direct/range {v44 .. v44}, Lorg/htmlcleaner/CleanerTransformations;-><init>()V

    .line 262
    .local v44, transformations:Lorg/htmlcleaner/CleanerTransformations;
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 263
    .local v18, iterator:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_1e

    .line 264
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 265
    .local v13, entry:Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 266
    .local v39, tag:Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    .line 267
    .restart local v51       #value:Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/Utils;->updateTagTransformations(Lorg/htmlcleaner/CleanerTransformations;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 269
    .end local v13           #entry:Ljava/util/Map$Entry;
    .end local v39           #tag:Ljava/lang/String;
    .end local v51           #value:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, v44

    invoke-virtual {v10, v0}, Lorg/htmlcleaner/HtmlCleaner;->setTransformations(Lorg/htmlcleaner/CleanerTransformations;)V

    .line 272
    .end local v18           #iterator:Ljava/util/Iterator;
    .end local v44           #transformations:Lorg/htmlcleaner/CleanerTransformations;
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    .line 276
    .local v37, start:J
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v36

    .line 277
    .local v36, srcLowerCase:Ljava/lang/String;
    const-string v53, "http://"

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_20

    const-string v53, "https://"

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_24

    .line 278
    :cond_20
    new-instance v53, Ljava/net/URL;

    move-object/from16 v0, v53

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/net/URL;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v21

    .line 285
    .local v21, node:Lorg/htmlcleaner/TagNode;
    :goto_5
    const-string v53, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_22

    .line 286
    invoke-virtual/range {v21 .. v22}, Lorg/htmlcleaner/TagNode;->evaluateXPath(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v52

    .line 288
    .local v52, xpathResult:[Ljava/lang/Object;
    const/4 v14, 0x0

    :goto_6
    move-object/from16 v0, v52

    array-length v0, v0

    move/from16 v53, v0

    move/from16 v0, v53

    if-ge v14, v0, :cond_21

    .line 289
    aget-object v53, v52, v14

    move-object/from16 v0, v53

    instance-of v0, v0, Lorg/htmlcleaner/TagNode;

    move/from16 v53, v0

    if-eqz v53, :cond_25

    .line 290
    aget-object v21, v52, v14

    .end local v21           #node:Lorg/htmlcleaner/TagNode;
    check-cast v21, Lorg/htmlcleaner/TagNode;

    .line 291
    .restart local v21       #node:Lorg/htmlcleaner/TagNode;
    sget-object v53, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v54, "Node successfully found by XPath."

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    :cond_21
    move-object/from16 v0, v52

    array-length v0, v0

    move/from16 v53, v0

    move/from16 v0, v53

    if-ne v14, v0, :cond_22

    .line 296
    sget-object v53, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v54, "Node not found by XPath expression - whole html tree is going to be serialized!"

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    .end local v52           #xpathResult:[Ljava/lang/Object;
    :cond_22
    if-eqz v12, :cond_23

    const-string v53, ""

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_26

    .line 302
    :cond_23
    sget-object v30, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 307
    .local v30, out:Ljava/io/OutputStream;
    :goto_7
    const-string v53, "compact"

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_27

    .line 308
    new-instance v53, Lorg/htmlcleaner/CompactXmlSerializer;

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/htmlcleaner/CompactXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/htmlcleaner/CompactXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 323
    :goto_8
    sget-object v53, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Finished successfully in "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    sub-long v55, v55, v37

    invoke-virtual/range {v54 .. v56}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, "ms."

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    return-void

    .line 280
    .end local v21           #node:Lorg/htmlcleaner/TagNode;
    .end local v30           #out:Ljava/io/OutputStream;
    :cond_24
    new-instance v53, Ljava/io/File;

    move-object/from16 v0, v53

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/File;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v21

    .restart local v21       #node:Lorg/htmlcleaner/TagNode;
    goto/16 :goto_5

    .line 288
    .restart local v52       #xpathResult:[Ljava/lang/Object;
    :cond_25
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 304
    .end local v52           #xpathResult:[Ljava/lang/Object;
    :cond_26
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .restart local v30       #out:Ljava/io/OutputStream;
    goto :goto_7

    .line 309
    :cond_27
    const-string v53, "browser-compact"

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_28

    .line 310
    new-instance v53, Lorg/htmlcleaner/BrowserCompactXmlSerializer;

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto :goto_8

    .line 311
    :cond_28
    const-string v53, "pretty"

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_29

    .line 312
    new-instance v53, Lorg/htmlcleaner/PrettyXmlSerializer;

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/htmlcleaner/PrettyXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/htmlcleaner/PrettyXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 313
    :cond_29
    const-string v53, "htmlsimple"

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2a

    .line 314
    new-instance v53, Lorg/htmlcleaner/SimpleHtmlSerializer;

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/htmlcleaner/SimpleHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/htmlcleaner/SimpleHtmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 315
    :cond_2a
    const-string v53, "htmlcompact"

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2b

    .line 316
    new-instance v53, Lorg/htmlcleaner/CompactHtmlSerializer;

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/htmlcleaner/CompactHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/htmlcleaner/CompactHtmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 317
    :cond_2b
    const-string v53, "htmlpretty"

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2c

    .line 318
    new-instance v53, Lorg/htmlcleaner/PrettyHtmlSerializer;

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/htmlcleaner/PrettyHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/htmlcleaner/PrettyHtmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 320
    :cond_2c
    new-instance v53, Lorg/htmlcleaner/SimpleXmlSerializer;

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/htmlcleaner/SimpleXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/htmlcleaner/SimpleXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto/16 :goto_8
.end method

.method private static toBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 72
    if-eqz p0, :cond_1

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
