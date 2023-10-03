.class public Lorg/htmlcleaner/HtmlCleanerForAnt;
.super Lorg/apache/tools/ant/Task;
.source "HtmlCleanerForAnt.java"


# instance fields
.field private advancedxmlescape:Z

.field private allowhtmlinsideattributes:Z

.field private allowmultiwordattributes:Z

.field private booleanatts:Ljava/lang/String;

.field private dest:Ljava/lang/String;

.field private hyphenreplacement:Ljava/lang/String;

.field private ignoreqe:Z

.field private incharset:Ljava/lang/String;

.field private namespacesaware:Z

.field private nodebyxpath:Ljava/lang/String;

.field private omitcomments:Z

.field private omitdeprtags:Z

.field private omitdoctypedecl:Z

.field private omitenvelope:Z

.field private omithtmlenvelope:Z

.field private omitunknowntags:Z

.field private omitxmldecl:Z

.field private outcharset:Ljava/lang/String;

.field private outputtype:Ljava/lang/String;

.field private prunetags:Ljava/lang/String;

.field private specialentities:Z

.field private src:Ljava/lang/String;

.field private taginfofile:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private transform:Ljava/lang/String;

.field private transrescharstoncr:Z

.field private transspecialentitiestoncr:Z

.field private treatdeprtagsascontent:Z

.field private treatunknowntagsascontent:Z

.field private unicodechars:Z

.field private usecdata:Z

.field private useemptyelementtags:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 57
    sget-object v0, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->incharset:Ljava/lang/String;

    .line 58
    sget-object v0, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    .line 59
    iput-object v3, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->taginfofile:Ljava/lang/String;

    .line 60
    const-string v0, "simple"

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->advancedxmlescape:Z

    .line 62
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transrescharstoncr:Z

    .line 63
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->usecdata:Z

    .line 64
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->specialentities:Z

    .line 65
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transspecialentitiestoncr:Z

    .line 66
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->unicodechars:Z

    .line 67
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitunknowntags:Z

    .line 68
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatunknowntagsascontent:Z

    .line 69
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdeprtags:Z

    .line 70
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatdeprtagsascontent:Z

    .line 71
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitcomments:Z

    .line 72
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitxmldecl:Z

    .line 73
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdoctypedecl:Z

    .line 74
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omithtmlenvelope:Z

    .line 75
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->useemptyelementtags:Z

    .line 76
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowmultiwordattributes:Z

    .line 77
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowhtmlinsideattributes:Z

    .line 78
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->ignoreqe:Z

    .line 79
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->namespacesaware:Z

    .line 80
    const-string v0, "="

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->hyphenreplacement:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->prunetags:Ljava/lang/String;

    .line 82
    const-string v0, "self"

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->booleanatts:Ljava/lang/String;

    .line 83
    iput-object v3, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->nodebyxpath:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitenvelope:Z

    .line 86
    iput-object v3, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transform:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 218
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->text:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public execute()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->taginfofile:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 229
    new-instance v3, Lorg/htmlcleaner/HtmlCleaner;

    new-instance v20, Lorg/htmlcleaner/ConfigFileTagProvider;

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->taginfofile:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v20 .. v21}, Lorg/htmlcleaner/ConfigFileTagProvider;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;)V

    .line 234
    .local v3, cleaner:Lorg/htmlcleaner/HtmlCleaner;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 235
    new-instance v20, Lorg/apache/tools/ant/BuildException;

    const-string v21, "Eather attribute \'src\' or text body containing HTML must be specified!"

    invoke-direct/range {v20 .. v21}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 231
    .end local v3           #cleaner:Lorg/htmlcleaner/HtmlCleaner;
    :cond_0
    new-instance v3, Lorg/htmlcleaner/HtmlCleaner;

    invoke-direct {v3}, Lorg/htmlcleaner/HtmlCleaner;-><init>()V

    .restart local v3       #cleaner:Lorg/htmlcleaner/HtmlCleaner;
    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v3}, Lorg/htmlcleaner/HtmlCleaner;->getProperties()Lorg/htmlcleaner/CleanerProperties;

    move-result-object v13

    .line 240
    .local v13, props:Lorg/htmlcleaner/CleanerProperties;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->advancedxmlescape:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setAdvancedXmlEscape(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transrescharstoncr:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setTransResCharsToNCR(Z)V

    .line 242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->usecdata:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setUseCdataForScriptAndStyle(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->specialentities:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setTranslateSpecialEntities(Z)V

    .line 244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transspecialentitiestoncr:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setTransSpecialEntitiesToNCR(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->unicodechars:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setRecognizeUnicodeChars(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitunknowntags:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setOmitUnknownTags(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatunknowntagsascontent:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setTreatUnknownTagsAsContent(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdeprtags:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setOmitDeprecatedTags(Z)V

    .line 249
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatdeprtagsascontent:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setTreatDeprecatedTagsAsContent(Z)V

    .line 250
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitcomments:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setOmitComments(Z)V

    .line 251
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitxmldecl:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setOmitXmlDeclaration(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdoctypedecl:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setOmitDoctypeDeclaration(Z)V

    .line 253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omithtmlenvelope:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setOmitHtmlEnvelope(Z)V

    .line 254
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->useemptyelementtags:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setUseEmptyElementTags(Z)V

    .line 255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowmultiwordattributes:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setAllowMultiWordAttributes(Z)V

    .line 256
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowhtmlinsideattributes:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setAllowHtmlInsideAttributes(Z)V

    .line 257
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->ignoreqe:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setIgnoreQuestAndExclam(Z)V

    .line 258
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->namespacesaware:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setNamespacesAware(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->hyphenreplacement:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setHyphenReplacementInComment(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->prunetags:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setPruneTags(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->booleanatts:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlcleaner/CleanerProperties;->setBooleanAttributeValues(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transform:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transform:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "|"

    invoke-static/range {v20 .. v21}, Lorg/htmlcleaner/Utils;->tokenize(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 268
    .local v16, transItems:[Ljava/lang/String;
    new-instance v15, Ljava/util/TreeMap;

    invoke-direct {v15}, Ljava/util/TreeMap;-><init>()V

    .line 269
    .local v15, transInfos:Ljava/util/Map;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_4

    .line 270
    aget-object v8, v16, v6

    .line 271
    .local v8, item:Ljava/lang/String;
    const/16 v20, 0x3d

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 272
    .local v7, index:I
    if-gtz v7, :cond_2

    move-object v10, v8

    .line 273
    .local v10, key:Ljava/lang/String;
    :goto_2
    if-gtz v7, :cond_3

    const/16 v18, 0x0

    .line 274
    .local v18, value:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v18

    invoke-interface {v15, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 272
    .end local v10           #key:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 273
    .restart local v10       #key:Ljava/lang/String;
    :cond_3
    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 277
    .end local v7           #index:I
    .end local v8           #item:Ljava/lang/String;
    .end local v10           #key:Ljava/lang/String;
    :cond_4
    new-instance v17, Lorg/htmlcleaner/CleanerTransformations;

    invoke-direct/range {v17 .. v17}, Lorg/htmlcleaner/CleanerTransformations;-><init>()V

    .line 278
    .local v17, transformations:Lorg/htmlcleaner/CleanerTransformations;
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 279
    .local v9, iterator:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 280
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 281
    .local v5, entry:Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 282
    .local v14, tag:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 283
    .restart local v18       #value:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v14, v1}, Lorg/htmlcleaner/Utils;->updateTagTransformations(Lorg/htmlcleaner/CleanerTransformations;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 285
    .end local v5           #entry:Ljava/util/Map$Entry;
    .end local v14           #tag:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/htmlcleaner/HtmlCleaner;->setTransformations(Lorg/htmlcleaner/CleanerTransformations;)V

    .line 291
    .end local v6           #i:I
    .end local v9           #iterator:Ljava/util/Iterator;
    .end local v15           #transInfos:Ljava/util/Map;
    .end local v16           #transItems:[Ljava/lang/String;
    .end local v17           #transformations:Lorg/htmlcleaner/CleanerTransformations;
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "http://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "https://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 292
    :cond_7
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->incharset:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/net/URL;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/htmlcleaner/XPatherException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 304
    .local v11, node:Lorg/htmlcleaner/TagNode;
    :goto_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->nodebyxpath:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->nodebyxpath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/htmlcleaner/TagNode;->evaluateXPath(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v19

    .line 306
    .local v19, xpathResult:[Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_8

    .line 307
    aget-object v20, v19, v6

    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/htmlcleaner/TagNode;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 308
    aget-object v11, v19, v6

    .end local v11           #node:Lorg/htmlcleaner/TagNode;
    check-cast v11, Lorg/htmlcleaner/TagNode;

    .line 315
    .end local v6           #i:I
    .end local v19           #xpathResult:[Ljava/lang/Object;
    .restart local v11       #node:Lorg/htmlcleaner/TagNode;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->dest:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    const-string v20, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->dest:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 316
    :cond_9
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 321
    .local v12, out:Ljava/io/OutputStream;
    :goto_7
    const-string v20, "compact"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 322
    new-instance v20, Lorg/htmlcleaner/CompactXmlSerializer;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lorg/htmlcleaner/CompactXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitenvelope:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v11, v12, v1, v2}, Lorg/htmlcleaner/CompactXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/htmlcleaner/XPatherException; {:try_start_1 .. :try_end_1} :catch_2

    .line 341
    :goto_8
    return-void

    .line 293
    .end local v11           #node:Lorg/htmlcleaner/TagNode;
    .end local v12           #out:Ljava/io/OutputStream;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    .line 294
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->incharset:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/File;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v11

    .restart local v11       #node:Lorg/htmlcleaner/TagNode;
    goto/16 :goto_5

    .line 296
    .end local v11           #node:Lorg/htmlcleaner/TagNode;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/htmlcleaner/XPatherException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .restart local v11       #node:Lorg/htmlcleaner/TagNode;
    goto/16 :goto_5

    .line 298
    .end local v11           #node:Lorg/htmlcleaner/TagNode;
    :catch_0
    move-exception v4

    .line 299
    .local v4, e:Ljava/io/IOException;
    :try_start_3
    new-instance v20, Lorg/apache/tools/ant/BuildException;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v20
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/htmlcleaner/XPatherException; {:try_start_3 .. :try_end_3} :catch_2

    .line 336
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 337
    .restart local v4       #e:Ljava/io/IOException;
    new-instance v20, Lorg/apache/tools/ant/BuildException;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 306
    .end local v4           #e:Ljava/io/IOException;
    .restart local v6       #i:I
    .restart local v11       #node:Lorg/htmlcleaner/TagNode;
    .restart local v19       #xpathResult:[Ljava/lang/Object;
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 318
    .end local v6           #i:I
    .end local v19           #xpathResult:[Ljava/lang/Object;
    :cond_d
    :try_start_4
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->dest:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .restart local v12       #out:Ljava/io/OutputStream;
    goto :goto_7

    .line 323
    :cond_e
    const-string v20, "browser-compact"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 324
    new-instance v20, Lorg/htmlcleaner/BrowserCompactXmlSerializer;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitenvelope:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v11, v12, v1, v2}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/htmlcleaner/XPatherException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 338
    .end local v11           #node:Lorg/htmlcleaner/TagNode;
    .end local v12           #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    .line 339
    .local v4, e:Lorg/htmlcleaner/XPatherException;
    new-instance v20, Lorg/apache/tools/ant/BuildException;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 325
    .end local v4           #e:Lorg/htmlcleaner/XPatherException;
    .restart local v11       #node:Lorg/htmlcleaner/TagNode;
    .restart local v12       #out:Ljava/io/OutputStream;
    :cond_f
    :try_start_5
    const-string v20, "pretty"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 326
    new-instance v20, Lorg/htmlcleaner/PrettyXmlSerializer;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lorg/htmlcleaner/PrettyXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitenvelope:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v11, v12, v1, v2}, Lorg/htmlcleaner/PrettyXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 327
    :cond_10
    const-string v20, "htmlsimple"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 328
    new-instance v20, Lorg/htmlcleaner/SimpleHtmlSerializer;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lorg/htmlcleaner/SimpleHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitenvelope:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v11, v12, v1, v2}, Lorg/htmlcleaner/SimpleHtmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 329
    :cond_11
    const-string v20, "htmlcompact"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 330
    new-instance v20, Lorg/htmlcleaner/CompactHtmlSerializer;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lorg/htmlcleaner/CompactHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitenvelope:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v11, v12, v1, v2}, Lorg/htmlcleaner/CompactHtmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 331
    :cond_12
    const-string v20, "htmlpretty"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 332
    new-instance v20, Lorg/htmlcleaner/PrettyHtmlSerializer;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lorg/htmlcleaner/PrettyHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitenvelope:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v11, v12, v1, v2}, Lorg/htmlcleaner/PrettyHtmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 334
    :cond_13
    new-instance v20, Lorg/htmlcleaner/SimpleXmlSerializer;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lorg/htmlcleaner/SimpleXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitenvelope:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v11, v12, v1, v2}, Lorg/htmlcleaner/SimpleXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/htmlcleaner/XPatherException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_8
.end method

.method public setAdvancedxmlescape(Z)V
    .locals 0
    .parameter "advancedxmlescape"

    .prologue
    .line 117
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->advancedxmlescape:Z

    .line 118
    return-void
.end method

.method public setAllowhtmlinsideattributes(Z)V
    .locals 0
    .parameter "allowhtmlinsideattributes"

    .prologue
    .line 182
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowhtmlinsideattributes:Z

    .line 183
    return-void
.end method

.method public setAllowmultiwordattributes(Z)V
    .locals 0
    .parameter "allowmultiwordattributes"

    .prologue
    .line 178
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowmultiwordattributes:Z

    .line 179
    return-void
.end method

.method public setBooleanatts(Ljava/lang/String;)V
    .locals 0
    .parameter "booleanatts"

    .prologue
    .line 202
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->booleanatts:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setDest(Ljava/lang/String;)V
    .locals 0
    .parameter "dest"

    .prologue
    .line 97
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->dest:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setHyphenreplacement(Ljava/lang/String;)V
    .locals 0
    .parameter "hyphenreplacement"

    .prologue
    .line 194
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->hyphenreplacement:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setIgnoreqe(Z)V
    .locals 0
    .parameter "ignoreqe"

    .prologue
    .line 186
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->ignoreqe:Z

    .line 187
    return-void
.end method

.method public setIncharset(Ljava/lang/String;)V
    .locals 0
    .parameter "incharset"

    .prologue
    .line 101
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->incharset:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setNamespacesaware(Z)V
    .locals 0
    .parameter "namespacesaware"

    .prologue
    .line 190
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->namespacesaware:Z

    .line 191
    return-void
.end method

.method public setNodebyxpath(Ljava/lang/String;)V
    .locals 0
    .parameter "nodebyxpath"

    .prologue
    .line 206
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->nodebyxpath:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setOmitcomments(Z)V
    .locals 0
    .parameter "omitcomments"

    .prologue
    .line 158
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitcomments:Z

    .line 159
    return-void
.end method

.method public setOmitdeprtags(Z)V
    .locals 0
    .parameter "omitdeprtags"

    .prologue
    .line 149
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdeprtags:Z

    .line 150
    return-void
.end method

.method public setOmitdoctypedecl(Z)V
    .locals 0
    .parameter "omitdoctypedecl"

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdoctypedecl:Z

    .line 167
    return-void
.end method

.method public setOmitenvelope(Z)V
    .locals 0
    .parameter "omitenvelope"

    .prologue
    .line 210
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitenvelope:Z

    .line 211
    return-void
.end method

.method public setOmithtmlenvelope(Z)V
    .locals 0
    .parameter "omithtmlenvelope"

    .prologue
    .line 170
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omithtmlenvelope:Z

    .line 171
    return-void
.end method

.method public setOmitunknowntags(Z)V
    .locals 0
    .parameter "omitunknowntags"

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitunknowntags:Z

    .line 142
    return-void
.end method

.method public setOmitxmldecl(Z)V
    .locals 0
    .parameter "omitxmldecl"

    .prologue
    .line 162
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitxmldecl:Z

    .line 163
    return-void
.end method

.method public setOutcharset(Ljava/lang/String;)V
    .locals 0
    .parameter "outcharset"

    .prologue
    .line 105
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setOutputtype(Ljava/lang/String;)V
    .locals 0
    .parameter "outputtype"

    .prologue
    .line 113
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPrunetags(Ljava/lang/String;)V
    .locals 0
    .parameter "prunetags"

    .prologue
    .line 198
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->prunetags:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setSpecialentities(Z)V
    .locals 0
    .parameter "specialentities"

    .prologue
    .line 129
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->specialentities:Z

    .line 130
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 93
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTaginfofile(Ljava/lang/String;)V
    .locals 0
    .parameter "taginfofile"

    .prologue
    .line 109
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->taginfofile:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 89
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->text:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTransform(Ljava/lang/String;)V
    .locals 0
    .parameter "transform"

    .prologue
    .line 214
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transform:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setTransrescharstoncr(Z)V
    .locals 0
    .parameter "transrescharstoncr"

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transrescharstoncr:Z

    .line 122
    return-void
.end method

.method public setTransspecialentitiestoncr(Z)V
    .locals 0
    .parameter "transspecialentitiestoncr"

    .prologue
    .line 133
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transspecialentitiestoncr:Z

    .line 134
    return-void
.end method

.method public setTreatdeprtagsascontent(Z)V
    .locals 0
    .parameter "treatdeprtagsascontent"

    .prologue
    .line 154
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatdeprtagsascontent:Z

    .line 155
    return-void
.end method

.method public setTreatunknowntagsascontent(Z)V
    .locals 0
    .parameter "treatunknowntagsascontent"

    .prologue
    .line 145
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatunknowntagsascontent:Z

    .line 146
    return-void
.end method

.method public setUnicodechars(Z)V
    .locals 0
    .parameter "unicodechars"

    .prologue
    .line 137
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->unicodechars:Z

    .line 138
    return-void
.end method

.method public setUsecdata(Z)V
    .locals 0
    .parameter "usecdata"

    .prologue
    .line 125
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->usecdata:Z

    .line 126
    return-void
.end method

.method public setUseemptyelementtags(Z)V
    .locals 0
    .parameter "useemptyelementtags"

    .prologue
    .line 174
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->useemptyelementtags:Z

    .line 175
    return-void
.end method
