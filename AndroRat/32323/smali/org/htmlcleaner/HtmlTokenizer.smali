.class public abstract Lorg/htmlcleaner/HtmlTokenizer;
.super Ljava/lang/Object;
.source "HtmlTokenizer.java"


# static fields
.field private static final WORKING_BUFFER_SIZE:I = 0x400


# instance fields
.field private _asExpected:Z

.field private transient _currentTagToken:Lorg/htmlcleaner/TagToken;

.field private transient _docType:Lorg/htmlcleaner/DoctypeToken;

.field private _isScriptContext:Z

.field private transient _len:I

.field private transient _pos:I

.field private _reader:Ljava/io/BufferedReader;

.field private transient _saved:[C

.field private transient _savedLen:I

.field private transient _tokenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;"
        }
    .end annotation
.end field

.field private _working:[C

.field private commonStr:Ljava/lang/StringBuilder;

.field private isAllowHtmlInsideAttributes:Z

.field private isAllowMultiWordAttributes:Z

.field private isNamespacesAware:Z

.field private isOmitComments:Z

.field private isOmitDeprecatedTags:Z

.field private isOmitUnknownTags:Z

.field private isTreatDeprecatedTagsAsContent:Z

.field private isTreatUnknownTagsAsContent:Z

.field private props:Lorg/htmlcleaner/CleanerProperties;

.field private tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

.field private transformations:Lorg/htmlcleaner/CleanerTransformations;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Lorg/htmlcleaner/CleanerProperties;Lorg/htmlcleaner/CleanerTransformations;Lorg/htmlcleaner/ITagInfoProvider;)V
    .locals 3
    .parameter "reader"
    .parameter "props"
    .parameter "transformations"
    .parameter "tagInfoProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    .line 57
    iput v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    .line 60
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:[C

    .line 61
    iput v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    .line 63
    iput-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_docType:Lorg/htmlcleaner/DoctypeToken;

    .line 64
    iput-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    .line 69
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isScriptContext:Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    .line 98
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    .line 99
    iput-object p2, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 100
    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->isOmitUnknownTags()Z

    move-result v0

    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->isOmitUnknownTags:Z

    .line 101
    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->isTreatUnknownTagsAsContent()Z

    move-result v0

    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->isTreatUnknownTagsAsContent:Z

    .line 102
    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->isOmitDeprecatedTags()Z

    move-result v0

    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->isOmitDeprecatedTags:Z

    .line 103
    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->isTreatDeprecatedTagsAsContent()Z

    move-result v0

    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->isTreatDeprecatedTagsAsContent:Z

    .line 104
    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v0

    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->isNamespacesAware:Z

    .line 105
    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->isOmitComments()Z

    move-result v0

    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->isOmitComments:Z

    .line 106
    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->isAllowMultiWordAttributes()Z

    move-result v0

    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->isAllowMultiWordAttributes:Z

    .line 107
    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->isAllowHtmlInsideAttributes()Z

    move-result v0

    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->isAllowHtmlInsideAttributes:Z

    .line 108
    iput-object p3, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    .line 109
    iput-object p4, p0, Lorg/htmlcleaner/HtmlTokenizer;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    .line 110
    return-void
.end method

.method private addSavedAsContent()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 375
    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    if-lez v1, :cond_0

    .line 376
    new-instance v1, Lorg/htmlcleaner/ContentNode;

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:[C

    iget v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    invoke-direct {v1, v2, v3}, Lorg/htmlcleaner/ContentNode;-><init>([CI)V

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    .line 377
    iput v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    .line 378
    const/4 v0, 0x1

    .line 381
    :cond_0
    return v0
.end method

.method private addToken(Lorg/htmlcleaner/BaseToken;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 113
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->makeTree(Ljava/util/List;)V

    .line 115
    return-void
.end method

.method private attributeValue()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3e

    const/16 v7, 0x3c

    const/16 v6, 0x27

    const/16 v5, 0x22

    .line 691
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 693
    invoke-direct {p0, v7}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v8}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/>"

    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 694
    :cond_0
    const-string v2, ""

    .line 733
    :goto_0
    return-object v2

    .line 697
    :cond_1
    const/4 v1, 0x0

    .line 698
    .local v1, isQuoteMode:Z
    const/4 v0, 0x0

    .line 700
    .local v0, isAposMode:Z
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 702
    invoke-direct {p0, v6}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 703
    const/4 v0, 0x1

    .line 704
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrentSafe()V

    .line 705
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 712
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v0, :cond_3

    invoke-direct {p0, v6}, Lorg/htmlcleaner/HtmlTokenizer;->isCharEquals(C)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->isCharEquals(C)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->isAllowHtmlInsideAttributes:Z

    if-nez v2, :cond_5

    invoke-direct {p0, v8}, Lorg/htmlcleaner/HtmlTokenizer;->isCharEquals(C)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, v7}, Lorg/htmlcleaner/HtmlTokenizer;->isCharEquals(C)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->isAllowMultiWordAttributes:Z

    if-nez v2, :cond_7

    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespaceSafe()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-nez v0, :cond_a

    if-nez v1, :cond_a

    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespaceSafe()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0, v8}, Lorg/htmlcleaner/HtmlTokenizer;->isCharEquals(C)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0, v7}, Lorg/htmlcleaner/HtmlTokenizer;->isCharEquals(C)Z

    move-result v2

    if-nez v2, :cond_a

    .line 717
    :cond_7
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isValidXmlCharSafe()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 718
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrentSafe()V

    .line 721
    :cond_8
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_1

    .line 706
    :cond_9
    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 707
    const/4 v1, 0x1

    .line 708
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrentSafe()V

    .line 709
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_1

    .line 724
    :cond_a
    invoke-direct {p0, v6}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v0, :cond_c

    .line 725
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrentSafe()V

    .line 726
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 733
    :cond_b
    :goto_2
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 727
    :cond_c
    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    .line 728
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrentSafe()V

    .line 729
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_2
.end method

.method private comment()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2d

    const/4 v6, 0x0

    .line 761
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 762
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "-->"

    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 763
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isValidXmlCharSafe()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 764
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrentSafe()V

    .line 766
    :cond_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_0

    .line 769
    :cond_1
    const-string v3, "-->"

    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 770
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 773
    :cond_2
    iget v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    if-lez v3, :cond_6

    .line 774
    iget-boolean v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->isOmitComments:Z

    if-nez v3, :cond_5

    .line 775
    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->getHyphenReplacementInComment()Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, hyphenRepl:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:[C

    iget v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    invoke-direct {v3, v4, v6, v5}, Ljava/lang/String;-><init>([CII)V

    const-string v4, "--"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, comment:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_3

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 782
    .local v2, len:I
    if-lez v2, :cond_4

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_4

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    :cond_4
    new-instance v3, Lorg/htmlcleaner/CommentNode;

    invoke-direct {v3, v0}, Lorg/htmlcleaner/CommentNode;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    .line 788
    .end local v0           #comment:Ljava/lang/String;
    .end local v1           #hyphenRepl:Ljava/lang/String;
    .end local v2           #len:I
    :cond_5
    iput v6, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    .line 790
    :cond_6
    return-void
.end method

.method private content()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    :cond_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 738
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isValidXmlCharSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrentSafe()V

    .line 741
    :cond_1
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 743
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    :cond_2
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->addSavedAsContent()Z

    move-result v0

    return v0
.end method

.method private doctype()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    const/16 v4, 0x9

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 795
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 796
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->identifier()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, part1:Ljava/lang/String;
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 798
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->identifier()Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, part2:Ljava/lang/String;
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 800
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->attributeValue()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, part3:Ljava/lang/String;
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 802
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->attributeValue()Ljava/lang/String;

    move-result-object v3

    .line 804
    .local v3, part4:Ljava/lang/String;
    const/16 v4, 0x3c

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->ignoreUntil(C)V

    .line 806
    new-instance v4, Lorg/htmlcleaner/DoctypeToken;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/htmlcleaner/DoctypeToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_docType:Lorg/htmlcleaner/DoctypeToken;

    .line 807
    return-void
.end method

.method private getCurrentChar()C
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    return v0
.end method

.method private go()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 161
    return-void
.end method

.method private go(I)V
    .locals 1
    .parameter "step"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    .line 165
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 166
    return-void
.end method

.method private identifier()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x3a

    const/4 v8, 0x0

    .line 597
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    .line 599
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isIdentifierStartChar()Z

    move-result v5

    if-nez v5, :cond_1

    .line 600
    iput-boolean v8, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    .line 634
    :cond_0
    :goto_0
    return-object v1

    .line 604
    :cond_1
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 606
    :goto_1
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isIdentifierChar()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 607
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrentSafe()V

    .line 608
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_1

    .line 613
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/htmlcleaner/Utils;->isIdentifierHelperChar(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 614
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 617
    :cond_3
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 621
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->commonStr:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 624
    .local v0, columnIndex:I
    if-ltz v0, :cond_0

    .line 625
    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, prefix:Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, suffix:Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 628
    .local v2, nextColumnIndex:I
    if-ltz v2, :cond_4

    .line 629
    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 631
    :cond_4
    iget-boolean v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->isNamespacesAware:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    goto/16 :goto_0

    :cond_5
    move-object v1, v4

    goto :goto_3
.end method

.method private ignoreUntil(C)V
    .locals 1
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    :cond_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 754
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    :cond_1
    return-void
.end method

.method private isAllRead()Z
    .locals 2

    .prologue
    .line 319
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChar(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 253
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    invoke-direct {p0, v0, p1}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(IC)Z

    move-result v0

    return v0
.end method

.method private isChar(IC)Z
    .locals 3
    .parameter "position"
    .parameter "ch"

    .prologue
    const/4 v0, 0x0

    .line 240
    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-lt p1, v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char v2, v2, p1

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCharEquals(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    .line 269
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCharSimple(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    .line 257
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIdentifierChar()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 299
    iget v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v2, :cond_1

    iget v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    iget v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-lt v2, v3, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v1

    .line 303
    :cond_1
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v2, v3

    .line 304
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lorg/htmlcleaner/Utils;->isIdentifierHelperChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isIdentifierStartChar()Z
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isIdentifierStartChar(I)Z

    move-result v0

    return v0
.end method

.method private isIdentifierStartChar(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 278
    iget v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v2, :cond_1

    iget v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-lt p1, v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v1

    .line 282
    :cond_1
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char v0, v2, p1

    .line 283
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x5f

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isReservedTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 468
    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "head"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "body"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isValidXmlChar()Z
    .locals 2

    .prologue
    .line 308
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/htmlcleaner/Utils;->isValidXmlChar(C)Z

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

.method private isValidXmlCharSafe()Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/htmlcleaner/Utils;->isValidXmlChar(C)Z

    move-result v0

    return v0
.end method

.method private isWhitespace()Z
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method private isWhitespace(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 214
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-lt p1, v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    goto :goto_0
.end method

.method private isWhitespaceSafe()Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    return v0
.end method

.method private readIfNeeded(I)V
    .locals 13
    .parameter "neededChars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x400

    const/16 v12, 0x20

    const/4 v11, 0x0

    .line 122
    iget v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_6

    iget v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v7, p1

    if-lt v7, v8, :cond_6

    .line 123
    iget v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    rsub-int v4, v7, 0x400

    .line 124
    .local v4, numToCopy:I
    iget-object v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v9, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    iget-object v10, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    invoke-static {v7, v9, v10, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iput v11, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    .line 127
    rsub-int v2, v4, 0x400

    .line 128
    .local v2, expected:I
    const/4 v6, 0x0

    .line 130
    .local v6, size:I
    move v5, v4

    .line 132
    .local v5, offset:I
    :cond_0
    iget-object v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    iget-object v9, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    invoke-virtual {v7, v9, v5, v2}, Ljava/io/BufferedReader;->read([CII)I

    move-result v1

    .line 133
    .local v1, charsRead:I
    if-ltz v1, :cond_1

    .line 134
    add-int/2addr v6, v1

    .line 135
    add-int/2addr v5, v1

    .line 136
    sub-int/2addr v2, v1

    .line 138
    :cond_1
    if-ltz v1, :cond_2

    if-gtz v2, :cond_0

    .line 140
    :cond_2
    if-lez v2, :cond_3

    .line 141
    add-int v7, v6, v4

    iput v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    .line 145
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v7, :cond_5

    iget v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    :goto_1
    if-ge v3, v7, :cond_6

    .line 146
    iget-object v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char v0, v7, v3

    .line 147
    .local v0, ch:I
    const/4 v7, 0x1

    if-lt v0, v7, :cond_4

    if-gt v0, v12, :cond_4

    const/16 v7, 0xa

    if-eq v0, v7, :cond_4

    const/16 v7, 0xd

    if-eq v0, v7, :cond_4

    .line 148
    iget-object v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aput-char v12, v7, v3

    .line 145
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #ch:I
    :cond_5
    move v7, v8

    goto :goto_1

    .line 152
    .end local v1           #charsRead:I
    .end local v2           #expected:I
    .end local v3           #i:I
    .end local v4           #numToCopy:I
    .end local v5           #offset:I
    .end local v6           #size:I
    :cond_6
    return-void
.end method

.method private save(C)V
    .locals 4
    .parameter "ch"

    .prologue
    const/4 v3, 0x0

    .line 327
    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 328
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:[C

    array-length v1, v1

    add-int/lit16 v1, v1, 0x200

    new-array v0, v1, [C

    .line 329
    .local v0, newSaved:[C
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:[C

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:[C

    .line 332
    .end local v0           #newSaved:[C
    :cond_0
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:[C

    iget v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    aput-char p1, v1, v2

    .line 333
    return-void
.end method

.method private saveCurrent()V
    .locals 2

    .prologue
    .line 339
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->save(C)V

    .line 342
    :cond_0
    return-void
.end method

.method private saveCurrent(I)V
    .locals 2
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 354
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    .line 355
    .local v0, pos:I
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char v1, v1, v0

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->save(C)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    .line 358
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method private saveCurrentSafe()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->save(C)V

    .line 346
    return-void
.end method

.method private skipWhitespaces()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespaceSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrentSafe()V

    .line 370
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method private startsWith(Ljava/lang/String;)Z
    .locals 7
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 176
    .local v3, valueLen:I
    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 177
    iget v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v5, :cond_1

    iget v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v5, v3

    iget v6, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-le v5, v6, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v4

    .line 181
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 182
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 183
    .local v0, ch1:C
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v6, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v6, v2

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 184
    .local v1, ch2:C
    if-ne v0, v1, :cond_0

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    .end local v0           #ch1:C
    .end local v1           #ch2:C
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private startsWithSimple(Ljava/lang/String;)Z
    .locals 6
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 194
    .local v1, valueLen:I
    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 195
    iget v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v3, :cond_1

    iget v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-le v3, v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 199
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private tagAttributes()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e

    const/16 v4, 0x3c

    .line 642
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "/>"

    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 643
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 644
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->identifier()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, attName:Ljava/lang/String;
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    if-nez v2, :cond_3

    .line 647
    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/>"

    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 648
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isValidXmlChar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 651
    :cond_1
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 654
    :cond_2
    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 655
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    goto :goto_0

    .line 663
    :cond_3
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 664
    const/16 v2, 0x3d

    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 665
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrentSafe()V

    .line 666
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 667
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->attributeValue()Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, attValue:Ljava/lang/String;
    :goto_1
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    if-eqz v2, :cond_0

    .line 677
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    invoke-virtual {v2, v0, v1}, Lorg/htmlcleaner/TagToken;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    .end local v1           #attValue:Ljava/lang/String;
    :cond_4
    const-string v2, "empty"

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    iget-object v3, v3, Lorg/htmlcleaner/CleanerProperties;->booleanAttributeValues:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 669
    const-string v1, ""

    .restart local v1       #attValue:Ljava/lang/String;
    goto :goto_1

    .line 670
    .end local v1           #attValue:Ljava/lang/String;
    :cond_5
    const-string v2, "true"

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    iget-object v3, v3, Lorg/htmlcleaner/CleanerProperties;->booleanAttributeValues:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 671
    const-string v1, "true"

    .restart local v1       #attValue:Ljava/lang/String;
    goto :goto_1

    .line 673
    .end local v1           #attValue:Ljava/lang/String;
    :cond_6
    move-object v1, v0

    .restart local v1       #attValue:Ljava/lang/String;
    goto :goto_1

    .line 680
    .end local v0           #attName:Ljava/lang/String;
    .end local v1           #attValue:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private tagEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 544
    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent(I)V

    .line 545
    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 547
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 590
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->identifier()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, tagName:Ljava/lang/String;
    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    invoke-virtual {v3, v1}, Lorg/htmlcleaner/CleanerTransformations;->hasTransformationForTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    invoke-virtual {v3, v1}, Lorg/htmlcleaner/CleanerTransformations;->getTransformation(Ljava/lang/String;)Lorg/htmlcleaner/TagTransformation;

    move-result-object v2

    .line 554
    .local v2, tagTransformation:Lorg/htmlcleaner/TagTransformation;
    if-eqz v2, :cond_1

    .line 555
    invoke-virtual {v2}, Lorg/htmlcleaner/TagTransformation;->getDestTag()Ljava/lang/String;

    move-result-object v1

    .line 559
    .end local v2           #tagTransformation:Lorg/htmlcleaner/TagTransformation;
    :cond_1
    if-eqz v1, :cond_4

    .line 560
    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    invoke-interface {v3, v1}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v0

    .line 561
    .local v0, tagInfo:Lorg/htmlcleaner/TagInfo;
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->isOmitUnknownTags:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->isTreatUnknownTagsAsContent:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->isReservedTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/htmlcleaner/TagInfo;->isDeprecated()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->isOmitDeprecatedTags:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->isTreatDeprecatedTagsAsContent:Z

    if-eqz v3, :cond_4

    .line 563
    :cond_3
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->content()Z

    goto :goto_0

    .line 568
    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    :cond_4
    new-instance v3, Lorg/htmlcleaner/EndTagToken;

    invoke-direct {v3, v1}, Lorg/htmlcleaner/EndTagToken;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    .line 570
    iget-boolean v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    if-eqz v3, :cond_8

    .line 571
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 572
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->tagAttributes()V

    .line 574
    if-eqz v1, :cond_5

    .line 575
    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    .line 578
    :cond_5
    const/16 v3, 0x3e

    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 579
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 582
    :cond_6
    const-string v3, "script"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 583
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isScriptContext:Z

    .line 586
    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    goto :goto_0

    .line 588
    :cond_8
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->addSavedAsContent()Z

    goto :goto_0
.end method

.method private tagStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 479
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 481
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->identifier()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, tagName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 488
    .local v3, tagTransformation:Lorg/htmlcleaner/TagTransformation;
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    invoke-virtual {v4, v1}, Lorg/htmlcleaner/CleanerTransformations;->hasTransformationForTag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    invoke-virtual {v4, v1}, Lorg/htmlcleaner/CleanerTransformations;->getTransformation(Ljava/lang/String;)Lorg/htmlcleaner/TagTransformation;

    move-result-object v3

    .line 490
    if-eqz v3, :cond_1

    .line 491
    invoke-virtual {v3}, Lorg/htmlcleaner/TagTransformation;->getDestTag()Ljava/lang/String;

    move-result-object v1

    .line 495
    :cond_1
    if-eqz v1, :cond_4

    .line 496
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    invoke-interface {v4, v1}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v0

    .line 497
    .local v0, tagInfo:Lorg/htmlcleaner/TagInfo;
    if-nez v0, :cond_2

    iget-boolean v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->isOmitUnknownTags:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->isTreatUnknownTagsAsContent:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->isReservedTag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/htmlcleaner/TagInfo;->isDeprecated()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->isOmitDeprecatedTags:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->isTreatDeprecatedTagsAsContent:Z

    if-eqz v4, :cond_4

    .line 499
    :cond_3
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->content()Z

    goto :goto_0

    .line 504
    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    :cond_4
    invoke-virtual {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->createTagNode(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v2

    .line 505
    .local v2, tagNode:Lorg/htmlcleaner/TagNode;
    iput-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    .line 507
    iget-boolean v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    if-eqz v4, :cond_9

    .line 508
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 509
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->tagAttributes()V

    .line 511
    if-eqz v1, :cond_6

    .line 512
    if-eqz v3, :cond_5

    .line 513
    invoke-virtual {v2, v3}, Lorg/htmlcleaner/TagNode;->transformAttributes(Lorg/htmlcleaner/TagTransformation;)V

    .line 515
    :cond_5
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    .line 518
    :cond_6
    const/16 v4, 0x3e

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 519
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 520
    const-string v4, "script"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 521
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isScriptContext:Z

    .line 530
    :cond_7
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    goto :goto_0

    .line 523
    :cond_8
    const-string v4, "/>"

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 524
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 525
    const-string v4, "script"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 526
    new-instance v4, Lorg/htmlcleaner/EndTagToken;

    invoke-direct {v4, v1}, Lorg/htmlcleaner/EndTagToken;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    goto :goto_1

    .line 532
    :cond_9
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->addSavedAsContent()Z

    goto/16 :goto_0
.end method


# virtual methods
.method abstract createTagNode(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
.end method

.method public getDocType()Lorg/htmlcleaner/DoctypeToken;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_docType:Lorg/htmlcleaner/DoctypeToken;

    return-object v0
.end method

.method getTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    return-object v0
.end method

.method abstract makeTree(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;)V"
        }
    .end annotation
.end method

.method start()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x3e

    const/4 v7, 0x0

    .line 390
    iput-object v10, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    .line 391
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 392
    iput-boolean v9, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    .line 393
    iput-boolean v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isScriptContext:Z

    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, isLateForDoctype:Z
    const/16 v5, 0x400

    iput v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    .line 398
    invoke-direct {p0, v7}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 400
    const/4 v1, 0x1

    .line 402
    .local v1, isScriptEmpty:Z
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v5

    if-nez v5, :cond_d

    .line 404
    iput v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_savedLen:I

    .line 405
    iput-object v10, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    .line 406
    iput-boolean v9, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    .line 409
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 411
    iget-boolean v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isScriptContext:Z

    if-eqz v5, :cond_5

    .line 412
    const-string v5, "</script"

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/lit8 v5, v5, 0x8

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/lit8 v5, v5, 0x8

    invoke-direct {p0, v5, v8}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(IC)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 413
    :cond_1
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->tagEnd()V

    .line 428
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isScriptContext:Z

    if-nez v5, :cond_0

    .line 429
    const/4 v1, 0x1

    goto :goto_0

    .line 414
    :cond_3
    if-eqz v1, :cond_4

    const-string v5, "<!--"

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 415
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->comment()V

    goto :goto_1

    .line 417
    :cond_4
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->content()Z

    move-result v2

    .line 418
    .local v2, isTokenAdded:Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 419
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    iget-object v6, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/htmlcleaner/BaseToken;

    .line 420
    .local v3, lastToken:Lorg/htmlcleaner/BaseToken;
    if-eqz v3, :cond_2

    .line 421
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, lastTokenAsString:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 423
    const/4 v1, 0x0

    goto :goto_1

    .line 432
    .end local v2           #isTokenAdded:Z
    .end local v3           #lastToken:Lorg/htmlcleaner/BaseToken;
    .end local v4           #lastTokenAsString:Ljava/lang/String;
    :cond_5
    const-string v5, "<!doctype"

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 433
    if-nez v0, :cond_6

    .line 434
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->doctype()V

    .line 435
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 437
    :cond_6
    const/16 v5, 0x3c

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->ignoreUntil(C)V

    goto/16 :goto_0

    .line 439
    :cond_7
    const-string v5, "</"

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->isIdentifierStartChar(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 440
    const/4 v0, 0x1

    .line 441
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->tagEnd()V

    goto/16 :goto_0

    .line 442
    :cond_8
    const-string v5, "<!--"

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 443
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->comment()V

    goto/16 :goto_0

    .line 444
    :cond_9
    const-string v5, "<"

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->isIdentifierStartChar(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 445
    const/4 v0, 0x1

    .line 446
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->tagStart()V

    goto/16 :goto_0

    .line 447
    :cond_a
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v5}, Lorg/htmlcleaner/CleanerProperties;->isIgnoreQuestAndExclam()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "<!"

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "<?"

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->startsWithSimple(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 448
    :cond_b
    invoke-direct {p0, v8}, Lorg/htmlcleaner/HtmlTokenizer;->ignoreUntil(C)V

    .line 449
    invoke-direct {p0, v8}, Lorg/htmlcleaner/HtmlTokenizer;->isCharSimple(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto/16 :goto_0

    .line 453
    :cond_c
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->content()Z

    goto/16 :goto_0

    .line 458
    :cond_d
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 459
    return-void
.end method
