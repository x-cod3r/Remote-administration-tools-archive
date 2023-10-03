.class public Lnet/nightwhistler/htmlspanner/HtmlSpanner;
.super Ljava/lang/Object;
.source "HtmlSpanner.java"


# static fields
.field private static REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SPECIAL_CHAR:Ljava/util/regex/Pattern;


# instance fields
.field private fontFamily:Lnet/nightwhistler/htmlspanner/FontFamily;

.field private handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/nightwhistler/htmlspanner/TagNodeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

.field private stripExtraWhiteSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const-string v0, "(&[a-z]*;|&#[0-9]*;|\n)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->SPECIAL_CHAR:Ljava/util/regex/Pattern;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->REPLACEMENTS:Ljava/util/Map;

    .line 75
    sget-object v0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "\n"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&nbsp;"

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&cent;"

    const-string v2, "\u00a2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&sect;"

    const-string v2, "\u00a7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->createHtmlCleaner()Lorg/htmlcleaner/HtmlCleaner;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;-><init>(Lorg/htmlcleaner/HtmlCleaner;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/HtmlCleaner;)V
    .locals 3
    .parameter "cleaner"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->stripExtraWhiteSpace:Z

    .line 100
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->handlers:Ljava/util/Map;

    .line 102
    new-instance v0, Lnet/nightwhistler/htmlspanner/FontFamily;

    const-string v1, "default"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2}, Lnet/nightwhistler/htmlspanner/FontFamily;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->fontFamily:Lnet/nightwhistler/htmlspanner/FontFamily;

    .line 103
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerBuiltInHandlers()V

    .line 104
    return-void
.end method

.method private applySpan(Landroid/text/SpannableStringBuilder;Lorg/htmlcleaner/TagNode;)V
    .locals 7
    .parameter "builder"
    .parameter "node"

    .prologue
    .line 269
    iget-object v5, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->handlers:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/nightwhistler/htmlspanner/TagNodeHandler;

    .line 271
    .local v1, handler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 273
    .local v4, lengthBefore:I
    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v1, p2, p1}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;->beforeChildren(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;)V

    .line 277
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;->rendersContent()Z

    move-result v5

    if-nez v5, :cond_2

    .line 279
    :cond_1
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 280
    .local v0, childNode:Ljava/lang/Object;
    invoke-direct {p0, p1, v0, p2}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->handleContent(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Lorg/htmlcleaner/TagNode;)V

    goto :goto_0

    .line 284
    .end local v0           #childNode:Ljava/lang/Object;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 286
    .local v3, lengthAfter:I
    if-eqz v1, :cond_3

    .line 287
    invoke-virtual {v1, p2, p1, v4, v3}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;II)V

    .line 289
    :cond_3
    return-void
.end method

.method private static createHtmlCleaner()Lorg/htmlcleaner/HtmlCleaner;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 204
    new-instance v1, Lorg/htmlcleaner/HtmlCleaner;

    invoke-direct {v1}, Lorg/htmlcleaner/HtmlCleaner;-><init>()V

    .line 205
    .local v1, result:Lorg/htmlcleaner/HtmlCleaner;
    invoke-virtual {v1}, Lorg/htmlcleaner/HtmlCleaner;->getProperties()Lorg/htmlcleaner/CleanerProperties;

    move-result-object v0

    .line 207
    .local v0, cleanerProperties:Lorg/htmlcleaner/CleanerProperties;
    invoke-virtual {v0, v2}, Lorg/htmlcleaner/CleanerProperties;->setAdvancedXmlEscape(Z)V

    .line 209
    invoke-virtual {v0, v2}, Lorg/htmlcleaner/CleanerProperties;->setOmitXmlDeclaration(Z)V

    .line 210
    invoke-virtual {v0, v3}, Lorg/htmlcleaner/CleanerProperties;->setOmitDoctypeDeclaration(Z)V

    .line 212
    invoke-virtual {v0, v2}, Lorg/htmlcleaner/CleanerProperties;->setTranslateSpecialEntities(Z)V

    .line 213
    invoke-virtual {v0, v2}, Lorg/htmlcleaner/CleanerProperties;->setRecognizeUnicodeChars(Z)V

    .line 215
    invoke-virtual {v0, v2}, Lorg/htmlcleaner/CleanerProperties;->setIgnoreQuestAndExclam(Z)V

    .line 216
    invoke-virtual {v0, v3}, Lorg/htmlcleaner/CleanerProperties;->setUseEmptyElementTags(Z)V

    .line 218
    const-string v2, "script,style,title"

    invoke-virtual {v0, v2}, Lorg/htmlcleaner/CleanerProperties;->setPruneTags(Ljava/lang/String;)V

    .line 220
    return-object v1
.end method

.method private static getEditedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "aText"

    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .local v1, result:Ljava/lang/StringBuffer;
    sget-object v2, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->SPECIAL_CHAR:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 227
    .local v0, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-static {v0}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->getReplacement(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getReplacement(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 6
    .parameter "aMatcher"

    .prologue
    .line 235
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, match:Ljava/lang/String;
    sget-object v4, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    .local v3, result:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 250
    .end local v3           #result:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 240
    .restart local v3       #result:Ljava/lang/String;
    :cond_0
    const-string v4, "&#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 244
    .local v0, code:Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 245
    .end local v0           #code:Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 246
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v3, ""

    goto :goto_0

    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    move-object v3, v1

    .line 250
    goto :goto_0
.end method

.method private handleContent(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Lorg/htmlcleaner/TagNode;)V
    .locals 3
    .parameter "builder"
    .parameter "node"
    .parameter "parent"

    .prologue
    .line 255
    instance-of v2, p2, Lorg/htmlcleaner/ContentNode;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 257
    check-cast v0, Lorg/htmlcleaner/ContentNode;

    .line 259
    .local v0, contentNode:Lorg/htmlcleaner/ContentNode;
    invoke-virtual {v0}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->getEditedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 266
    .end local v0           #contentNode:Lorg/htmlcleaner/ContentNode;
    .end local v1           #text:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 263
    .restart local p2
    :cond_1
    instance-of v2, p2, Lorg/htmlcleaner/TagNode;

    if-eqz v2, :cond_0

    .line 264
    check-cast p2, Lorg/htmlcleaner/TagNode;

    .end local p2
    invoke-direct {p0, p1, p2}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->applySpan(Landroid/text/SpannableStringBuilder;Lorg/htmlcleaner/TagNode;)V

    goto :goto_0
.end method

.method private registerBuiltInHandlers()V
    .locals 15

    .prologue
    .line 292
    new-instance v4, Lnet/nightwhistler/htmlspanner/handlers/ItalicHandler;

    invoke-direct {v4}, Lnet/nightwhistler/htmlspanner/handlers/ItalicHandler;-><init>()V

    .line 294
    .local v4, italicHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "i"

    invoke-virtual {p0, v12, v4}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 295
    const-string v12, "em"

    invoke-virtual {p0, v12, v4}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 296
    const-string v12, "cite"

    invoke-virtual {p0, v12, v4}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 297
    const-string v12, "dfn"

    invoke-virtual {p0, v12, v4}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 299
    new-instance v1, Lnet/nightwhistler/htmlspanner/handlers/BoldHandler;

    invoke-direct {v1}, Lnet/nightwhistler/htmlspanner/handlers/BoldHandler;-><init>()V

    .line 301
    .local v1, boldHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "b"

    invoke-virtual {p0, v12, v1}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 302
    const-string v12, "strong"

    invoke-virtual {p0, v12, v1}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 304
    new-instance v5, Lnet/nightwhistler/htmlspanner/handlers/MarginHandler;

    invoke-direct {v5}, Lnet/nightwhistler/htmlspanner/handlers/MarginHandler;-><init>()V

    .line 306
    .local v5, marginHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "blockquote"

    invoke-virtual {p0, v12, v5}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 307
    const-string v12, "ul"

    invoke-virtual {p0, v12, v5}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 308
    const-string v12, "ol"

    invoke-virtual {p0, v12, v5}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 310
    new-instance v2, Lnet/nightwhistler/htmlspanner/handlers/NewLineHandler;

    const/4 v12, 0x1

    invoke-direct {v2, v12}, Lnet/nightwhistler/htmlspanner/handlers/NewLineHandler;-><init>(I)V

    .line 312
    .local v2, brHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "br"

    invoke-virtual {p0, v12, v2}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 314
    new-instance v7, Lnet/nightwhistler/htmlspanner/handlers/NewLineHandler;

    const/4 v12, 0x2

    invoke-direct {v7, v12}, Lnet/nightwhistler/htmlspanner/handlers/NewLineHandler;-><init>(I)V

    .line 316
    .local v7, pHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "p"

    invoke-virtual {p0, v12, v7}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 317
    const-string v12, "div"

    invoke-virtual {p0, v12, v7}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 319
    const-string v12, "h1"

    new-instance v13, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;

    const/high16 v14, 0x3fc0

    invoke-direct {v13, v14}, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;-><init>(F)V

    invoke-virtual {p0, v12, v13}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 320
    const-string v12, "h2"

    new-instance v13, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;

    const v14, 0x3fb33333

    invoke-direct {v13, v14}, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;-><init>(F)V

    invoke-virtual {p0, v12, v13}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 321
    const-string v12, "h3"

    new-instance v13, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;

    const v14, 0x3fa66666

    invoke-direct {v13, v14}, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;-><init>(F)V

    invoke-virtual {p0, v12, v13}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 322
    const-string v12, "h4"

    new-instance v13, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;

    const v14, 0x3f99999a

    invoke-direct {v13, v14}, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;-><init>(F)V

    invoke-virtual {p0, v12, v13}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 323
    const-string v12, "h5"

    new-instance v13, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;

    const v14, 0x3f8ccccd

    invoke-direct {v13, v14}, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;-><init>(F)V

    invoke-virtual {p0, v12, v13}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 324
    const-string v12, "h6"

    new-instance v13, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;

    const/high16 v14, 0x3f80

    invoke-direct {v13, v14}, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;-><init>(F)V

    invoke-virtual {p0, v12, v13}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 326
    new-instance v6, Lnet/nightwhistler/htmlspanner/handlers/MonoSpaceHandler;

    invoke-direct {v6}, Lnet/nightwhistler/htmlspanner/handlers/MonoSpaceHandler;-><init>()V

    .line 328
    .local v6, monSpaceHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "tt"

    invoke-virtual {p0, v12, v6}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 330
    new-instance v8, Lnet/nightwhistler/htmlspanner/handlers/PreHandler;

    invoke-direct {v8}, Lnet/nightwhistler/htmlspanner/handlers/PreHandler;-><init>()V

    .line 332
    .local v8, preHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "pre"

    invoke-virtual {p0, v12, v8}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 334
    new-instance v0, Lnet/nightwhistler/htmlspanner/handlers/RelativeSizeHandler;

    const/high16 v12, 0x3fa0

    invoke-direct {v0, v12}, Lnet/nightwhistler/htmlspanner/handlers/RelativeSizeHandler;-><init>(F)V

    .line 335
    .local v0, bigHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "big"

    invoke-virtual {p0, v12, v0}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 337
    new-instance v9, Lnet/nightwhistler/htmlspanner/handlers/RelativeSizeHandler;

    const v12, 0x3f4ccccd

    invoke-direct {v9, v12}, Lnet/nightwhistler/htmlspanner/handlers/RelativeSizeHandler;-><init>(F)V

    .line 338
    .local v9, smallHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "small"

    invoke-virtual {p0, v12, v9}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 340
    new-instance v10, Lnet/nightwhistler/htmlspanner/handlers/SubScriptHandler;

    invoke-direct {v10}, Lnet/nightwhistler/htmlspanner/handlers/SubScriptHandler;-><init>()V

    .line 341
    .local v10, subHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "sub"

    invoke-virtual {p0, v12, v10}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 343
    new-instance v11, Lnet/nightwhistler/htmlspanner/handlers/SuperScriptHandler;

    invoke-direct {v11}, Lnet/nightwhistler/htmlspanner/handlers/SuperScriptHandler;-><init>()V

    .line 344
    .local v11, superHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "sup"

    invoke-virtual {p0, v12, v11}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 346
    new-instance v3, Lnet/nightwhistler/htmlspanner/handlers/CenterHandler;

    invoke-direct {v3}, Lnet/nightwhistler/htmlspanner/handlers/CenterHandler;-><init>()V

    .line 347
    .local v3, centerHandler:Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    const-string v12, "center"

    invoke-virtual {p0, v12, v3}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 349
    const-string v12, "li"

    new-instance v13, Lnet/nightwhistler/htmlspanner/handlers/ListItemHandler;

    invoke-direct {v13}, Lnet/nightwhistler/htmlspanner/handlers/ListItemHandler;-><init>()V

    invoke-virtual {p0, v12, v13}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 351
    const-string v12, "a"

    new-instance v13, Lnet/nightwhistler/htmlspanner/handlers/LinkHandler;

    invoke-direct {v13}, Lnet/nightwhistler/htmlspanner/handlers/LinkHandler;-><init>()V

    invoke-virtual {p0, v12, v13}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 352
    const-string v12, "img"

    new-instance v13, Lnet/nightwhistler/htmlspanner/handlers/ImageHandler;

    invoke-direct {v13}, Lnet/nightwhistler/htmlspanner/handlers/ImageHandler;-><init>()V

    invoke-virtual {p0, v12, v13}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V

    .line 353
    return-void
.end method


# virtual methods
.method public fromHtml(Ljava/io/InputStream;)Landroid/text/Spanned;
    .locals 1
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/InputStream;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public fromHtml(Ljava/io/Reader;)Landroid/text/Spanned;
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .parameter "html"

    .prologue
    .line 153
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public fromTagNode(Lorg/htmlcleaner/TagNode;)Landroid/text/Spanned;
    .locals 2
    .parameter "node"

    .prologue
    .line 197
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 198
    .local v0, result:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->handleContent(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Lorg/htmlcleaner/TagNode;)V

    .line 200
    return-object v0
.end method

.method public getFontFamily()Lnet/nightwhistler/htmlspanner/FontFamily;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->fontFamily:Lnet/nightwhistler/htmlspanner/FontFamily;

    return-object v0
.end method

.method public getHandlerFor(Ljava/lang/String;)Lnet/nightwhistler/htmlspanner/TagNodeHandler;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 187
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/nightwhistler/htmlspanner/TagNodeHandler;

    return-object v0
.end method

.method public isStripExtraWhiteSpace()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->stripExtraWhiteSpace:Z

    return v0
.end method

.method public registerHandler(Ljava/lang/String;Lnet/nightwhistler/htmlspanner/TagNodeHandler;)V
    .locals 1
    .parameter "tagName"
    .parameter "handler"

    .prologue
    .line 141
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p2, p0}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;->setSpanner(Lnet/nightwhistler/htmlspanner/HtmlSpanner;)V

    .line 143
    return-void
.end method

.method public setFontFamily(Lnet/nightwhistler/htmlspanner/FontFamily;)V
    .locals 0
    .parameter "fontFamily"

    .prologue
    .line 111
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->fontFamily:Lnet/nightwhistler/htmlspanner/FontFamily;

    .line 112
    return-void
.end method

.method public setStripExtraWhiteSpace(Z)V
    .locals 0
    .parameter "stripExtraWhiteSpace"

    .prologue
    .line 120
    iput-boolean p1, p0, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->stripExtraWhiteSpace:Z

    .line 121
    return-void
.end method
