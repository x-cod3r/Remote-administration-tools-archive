.class public Lorg/htmlcleaner/HtmlCleaner;
.super Ljava/lang/Object;
.source "HtmlCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;,
        Lorg/htmlcleaner/HtmlCleaner$OpenTags;,
        Lorg/htmlcleaner/HtmlCleaner$TagPos;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String;


# instance fields
.field private properties:Lorg/htmlcleaner/CleanerProperties;

.field private tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

.field private transformations:Lorg/htmlcleaner/CleanerTransformations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0, v0}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;Lorg/htmlcleaner/CleanerProperties;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 1
    .parameter "properties"

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;Lorg/htmlcleaner/CleanerProperties;)V

    .line 261
    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/ITagInfoProvider;)V
    .locals 1
    .parameter "tagInfoProvider"

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;Lorg/htmlcleaner/CleanerProperties;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/ITagInfoProvider;Lorg/htmlcleaner/CleanerProperties;)V
    .locals 2
    .parameter "tagInfoProvider"
    .parameter "properties"

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    .line 269
    if-nez p1, :cond_0

    invoke-static {}, Lorg/htmlcleaner/DefaultTagProvider;->getInstance()Lorg/htmlcleaner/DefaultTagProvider;

    move-result-object p1

    .end local p1
    :cond_0
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    .line 270
    if-nez p2, :cond_1

    new-instance p2, Lorg/htmlcleaner/CleanerProperties;

    .end local p2
    invoke-direct {p2}, Lorg/htmlcleaner/CleanerProperties;-><init>()V

    :cond_1
    iput-object p2, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    .line 271
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    iput-object v1, v0, Lorg/htmlcleaner/CleanerProperties;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    .line 272
    return-void
.end method

.method static synthetic access$000(Lorg/htmlcleaner/HtmlCleaner;)Lorg/htmlcleaner/ITagInfoProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/htmlcleaner/HtmlCleaner;Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/HtmlCleaner;->createTagNode(Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method private addAttributesToTag(Lorg/htmlcleaner/TagNode;Ljava/util/Map;)V
    .locals 6
    .parameter "tag"
    .parameter "attributes"

    .prologue
    .line 436
    if-eqz p2, :cond_1

    .line 437
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v4

    .line 438
    .local v4, tagAttributes:Ljava/util/Map;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 439
    .local v3, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 441
    .local v2, currEntry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    .local v0, attName:Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 443
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 444
    .local v1, attValue:Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lorg/htmlcleaner/TagNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    .end local v0           #attName:Ljava/lang/String;
    .end local v1           #attValue:Ljava/lang/String;
    .end local v2           #currEntry:Ljava/util/Map$Entry;
    .end local v3           #it:Ljava/util/Iterator;
    .end local v4           #tagAttributes:Ljava/util/Map;
    :cond_1
    return-void
.end method

.method private addPossibleHeadCandidate(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V
    .locals 1
    .parameter "tagInfo"
    .parameter "tagNode"
    .parameter "cleanTimeValues"

    .prologue
    .line 791
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 792
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->isHeadTag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->isHeadAndBodyTag()Z

    move-result v0

    if-eqz v0, :cond_1

    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headOpened:Z
    invoke-static {p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$600(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_bodyOpened:Z
    invoke-static {p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$700(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 793
    :cond_0
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headTags:Ljava/util/Set;
    invoke-static {p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$800(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_1
    return-void
.end method

.method private calculateRootNode(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V
    .locals 4
    .parameter "cleanTimeValues"

    .prologue
    .line 413
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1000(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v3

    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p1, v3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1302(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;

    .line 415
    iget-object v3, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    iget-boolean v3, v3, Lorg/htmlcleaner/CleanerProperties;->omitHtmlEnvelope:Z

    if-eqz v3, :cond_1

    .line 416
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1100(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 417
    .local v0, bodyChildren:Ljava/util/List;
    if-eqz v0, :cond_1

    .line 418
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 420
    .local v1, child:Ljava/lang/Object;
    instance-of v3, v1, Lorg/htmlcleaner/TagNode;

    if-eqz v3, :cond_0

    .line 421
    check-cast v1, Lorg/htmlcleaner/TagNode;

    .end local v1           #child:Ljava/lang/Object;
    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p1, v1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1302(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;

    .line 427
    .end local v0           #bodyChildren:Ljava/util/List;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private closeAll(Ljava/util/List;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V
    .locals 2
    .parameter
    .parameter "cleanTimeValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;",
            "Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, nodeList:Ljava/util/List;,"Ljava/util/List<Lorg/htmlcleaner/BaseToken;>;"
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v1

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->findFirstTagPos()Lorg/htmlcleaner/HtmlCleaner$TagPos;
    invoke-static {v1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2800(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v0

    .line 780
    .local v0, firstTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    if-eqz v0, :cond_0

    .line 781
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/htmlcleaner/HtmlCleaner;->closeSnippet(Ljava/util/List;Lorg/htmlcleaner/HtmlCleaner$TagPos;Ljava/lang/Object;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/List;

    .line 783
    :cond_0
    return-void
.end method

.method private closeSnippet(Ljava/util/List;Lorg/htmlcleaner/HtmlCleaner$TagPos;Ljava/lang/Object;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/List;
    .locals 13
    .parameter "nodeList"
    .parameter "tagPos"
    .parameter "toNode"
    .parameter "cleanTimeValues"

    .prologue
    .line 717
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v1, closed:Ljava/util/List;
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->position:I
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$1900(Lorg/htmlcleaner/HtmlCleaner$TagPos;)I

    move-result v11

    invoke-interface {p1, v11}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 720
    .local v3, it:Ljava/util/ListIterator;
    const/4 v10, 0x0

    .line 721
    .local v10, tagNode:Lorg/htmlcleaner/TagNode;
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 722
    .local v4, item:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 724
    .local v2, isListEnd:Z
    :goto_0
    if-nez p3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p3, :cond_8

    move-object/from16 v0, p3

    if-eq v4, v0, :cond_8

    .line 725
    :cond_1
    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlCleaner;->isStartToken(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v8, v4

    .line 726
    check-cast v8, Lorg/htmlcleaner/TagNode;

    .line 727
    .local v8, startTagToken:Lorg/htmlcleaner/TagNode;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-virtual {v8}, Lorg/htmlcleaner/TagNode;->getItemsToMove()Ljava/util/List;

    move-result-object v5

    .line 729
    .local v5, itemsToMove:Ljava/util/List;,"Ljava/util/List<Lorg/htmlcleaner/BaseToken;>;"
    if-eqz v5, :cond_2

    .line 730
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static/range {p4 .. p4}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v7

    .line 731
    .local v7, prevOpenTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    new-instance v11, Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;-><init>(Lorg/htmlcleaner/HtmlCleaner;Lorg/htmlcleaner/HtmlCleaner$1;)V

    move-object/from16 v0, p4

    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {v0, v11}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$402(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    .line 732
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {p0, v5, v11, v0}, Lorg/htmlcleaner/HtmlCleaner;->makeTree(Ljava/util/List;Ljava/util/ListIterator;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 733
    move-object/from16 v0, p4

    invoke-direct {p0, v5, v0}, Lorg/htmlcleaner/HtmlCleaner;->closeAll(Ljava/util/List;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 734
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lorg/htmlcleaner/TagNode;->setItemsToMove(Ljava/util/List;)V

    .line 735
    move-object/from16 v0, p4

    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {v0, v7}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$402(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    .line 738
    .end local v7           #prevOpenTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    :cond_2
    invoke-direct {p0, v8}, Lorg/htmlcleaner/HtmlCleaner;->createTagNode(Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;

    move-result-object v6

    .line 739
    .local v6, newTagNode:Lorg/htmlcleaner/TagNode;
    iget-object v11, p0, Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    invoke-virtual {v6}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v9

    .line 740
    .local v9, tag:Lorg/htmlcleaner/TagInfo;
    move-object/from16 v0, p4

    invoke-direct {p0, v9, v6, v0}, Lorg/htmlcleaner/HtmlCleaner;->addPossibleHeadCandidate(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 741
    if-eqz v10, :cond_4

    .line 742
    invoke-virtual {v10, v5}, Lorg/htmlcleaner/TagNode;->addChildren(Ljava/util/List;)V

    .line 743
    invoke-virtual {v10, v6}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    .line 744
    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 754
    :goto_1
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static/range {p4 .. p4}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v11

    invoke-virtual {v6}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v12

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->removeTag(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2700(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;)V

    .line 755
    move-object v10, v6

    .line 765
    .end local v5           #itemsToMove:Ljava/util/List;,"Ljava/util/List<Lorg/htmlcleaner/BaseToken;>;"
    .end local v6           #newTagNode:Lorg/htmlcleaner/TagNode;
    .end local v8           #startTagToken:Lorg/htmlcleaner/TagNode;
    .end local v9           #tag:Lorg/htmlcleaner/TagInfo;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 766
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 746
    .restart local v5       #itemsToMove:Ljava/util/List;,"Ljava/util/List<Lorg/htmlcleaner/BaseToken;>;"
    .restart local v6       #newTagNode:Lorg/htmlcleaner/TagNode;
    .restart local v8       #startTagToken:Lorg/htmlcleaner/TagNode;
    .restart local v9       #tag:Lorg/htmlcleaner/TagInfo;
    :cond_4
    if-eqz v5, :cond_5

    .line 747
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-interface {v3, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 750
    :cond_5
    invoke-interface {v3, v6}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 757
    .end local v5           #itemsToMove:Ljava/util/List;,"Ljava/util/List<Lorg/htmlcleaner/BaseToken;>;"
    .end local v6           #newTagNode:Lorg/htmlcleaner/TagNode;
    .end local v8           #startTagToken:Lorg/htmlcleaner/TagNode;
    .end local v9           #tag:Lorg/htmlcleaner/TagInfo;
    :cond_6
    if-eqz v10, :cond_3

    .line 758
    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 759
    if-eqz v4, :cond_3

    .line 760
    invoke-virtual {v10, v4}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    goto :goto_2

    .line 768
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 772
    :cond_8
    return-object v1
.end method

.method private createDocumentNodes(Ljava/util/List;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V
    .locals 11
    .parameter "listNodes"
    .parameter "cleanTimeValues"

    .prologue
    .line 668
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 669
    .local v3, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 670
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 672
    .local v0, child:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 676
    const/4 v7, 0x1

    .line 678
    .local v7, toAdd:Z
    instance-of v9, v0, Lorg/htmlcleaner/TagNode;

    if-eqz v9, :cond_2

    move-object v4, v0

    .line 679
    check-cast v4, Lorg/htmlcleaner/TagNode;

    .line 680
    .local v4, node:Lorg/htmlcleaner/TagNode;
    iget-object v9, p0, Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    invoke-virtual {v4}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v6

    .line 681
    .local v6, tag:Lorg/htmlcleaner/TagInfo;
    invoke-direct {p0, v6, v4, p2}, Lorg/htmlcleaner/HtmlCleaner;->addPossibleHeadCandidate(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 688
    .end local v4           #node:Lorg/htmlcleaner/TagNode;
    .end local v6           #tag:Lorg/htmlcleaner/TagInfo;
    :cond_1
    :goto_1
    if-eqz v7, :cond_0

    .line 689
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1100(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    goto :goto_0

    .line 683
    :cond_2
    instance-of v9, v0, Lorg/htmlcleaner/ContentNode;

    if-eqz v9, :cond_1

    .line 684
    const-string v9, ""

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v7, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 694
    .end local v0           #child:Ljava/lang/Object;
    .end local v7           #toAdd:Z
    :cond_4
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headTags:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$800(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 695
    .local v2, headIterator:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 696
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlcleaner/TagNode;

    .line 699
    .local v1, headCandidateNode:Lorg/htmlcleaner/TagNode;
    invoke-virtual {v1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v5

    .line 700
    .local v5, parent:Lorg/htmlcleaner/TagNode;
    const/4 v8, 0x1

    .line 701
    .local v8, toMove:Z
    :goto_4
    if-eqz v5, :cond_6

    .line 702
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headTags:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$800(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 703
    const/4 v8, 0x0

    .line 709
    :cond_6
    if-eqz v8, :cond_5

    .line 710
    invoke-virtual {v1}, Lorg/htmlcleaner/TagNode;->removeFromTree()Z

    .line 711
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->headNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1200(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    goto :goto_3

    .line 706
    :cond_7
    invoke-virtual {v5}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v5

    goto :goto_4

    .line 714
    .end local v1           #headCandidateNode:Lorg/htmlcleaner/TagNode;
    .end local v5           #parent:Lorg/htmlcleaner/TagNode;
    .end local v8           #toMove:Z
    :cond_8
    return-void
.end method

.method private createTagNode(Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;
    .locals 3
    .parameter "name"
    .parameter "cleanTimeValues"

    .prologue
    .line 391
    new-instance v0, Lorg/htmlcleaner/TagNode;

    invoke-direct {v0, p1}, Lorg/htmlcleaner/TagNode;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, node:Lorg/htmlcleaner/TagNode;
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneTagSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1600(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneTagSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1600(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneNodeSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1500(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_0
    return-object v0
.end method

.method private createTagNode(Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;
    .locals 0
    .parameter "startTagToken"

    .prologue
    .line 499
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->setFormed()V

    .line 500
    return-object p1
.end method

.method private isAllowedInLastOpenTag(Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z
    .locals 2
    .parameter "token"
    .parameter "cleanTimeValues"

    .prologue
    .line 504
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v1

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->getLastTagPos()Lorg/htmlcleaner/HtmlCleaner$TagPos;
    invoke-static {v1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2100(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v0

    .line 505
    .local v0, last:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    if-eqz v0, :cond_0

    .line 506
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->info:Lorg/htmlcleaner/TagInfo;
    invoke-static {v0}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$200(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Lorg/htmlcleaner/TagInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->info:Lorg/htmlcleaner/TagInfo;
    invoke-static {v0}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$200(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Lorg/htmlcleaner/TagInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/htmlcleaner/TagInfo;->allowsItem(Lorg/htmlcleaner/BaseToken;)Z

    move-result v1

    .line 511
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFatalTagSatisfied(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z
    .locals 2
    .parameter "tag"
    .parameter "cleanTimeValues"

    .prologue
    const/4 v1, 0x1

    .line 456
    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getFatalTag()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, fatalTagName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 461
    .end local v0           #fatalTagName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 458
    .restart local v0       #fatalTagName:Ljava/lang/String;
    :cond_1
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v1

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->tagExists(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$1700(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isStartToken(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 528
    instance-of v0, p1, Lorg/htmlcleaner/TagNode;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/htmlcleaner/TagNode;

    .end local p1
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->isFormed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeTagNodeCopy(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;
    .locals 3
    .parameter "tagNode"
    .parameter "cleanTimeValues"

    .prologue
    .line 399
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->makeCopy()Lorg/htmlcleaner/TagNode;

    move-result-object v0

    .line 400
    .local v0, copy:Lorg/htmlcleaner/TagNode;
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneTagSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1600(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneTagSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1600(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneNodeSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1500(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    return-object v0
.end method

.method private mustAddRequiredParent(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z
    .locals 10
    .parameter "tag"
    .parameter "cleanTimeValues"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 470
    if-eqz p1, :cond_4

    .line 471
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getRequiredParent()Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, requiredParent:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 473
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getFatalTag()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, fatalTag:Ljava/lang/String;
    const/4 v2, -0x1

    .line 475
    .local v2, fatalTagPositon:I
    if-eqz v1, :cond_0

    .line 476
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v8

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->findTag(Ljava/lang/String;)Lorg/htmlcleaner/HtmlCleaner$TagPos;
    invoke-static {v8, v1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$1800(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;)Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v5

    .line 477
    .local v5, tagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    if-eqz v5, :cond_0

    .line 478
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->position:I
    invoke-static {v5}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$1900(Lorg/htmlcleaner/HtmlCleaner$TagPos;)I

    move-result v2

    .line 483
    .end local v5           #tagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    :cond_0
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v8

    #getter for: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;
    invoke-static {v8}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2000(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Ljava/util/List;

    move-result-object v8

    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v9

    #getter for: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;
    invoke-static {v9}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2000(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 484
    .local v3, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 485
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/HtmlCleaner$TagPos;

    .line 486
    .local v0, currTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->name:Ljava/lang/String;
    invoke-static {v0}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$100(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/htmlcleaner/TagInfo;->isHigher(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 487
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->position:I
    invoke-static {v0}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$1900(Lorg/htmlcleaner/HtmlCleaner$TagPos;)I

    move-result v8

    if-gt v8, v2, :cond_3

    .line 495
    .end local v0           #currTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .end local v1           #fatalTag:Ljava/lang/String;
    .end local v2           #fatalTagPositon:I
    .end local v3           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    .end local v4           #requiredParent:Ljava/lang/String;
    :cond_2
    :goto_0
    return v6

    .restart local v0       #currTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .restart local v1       #fatalTag:Ljava/lang/String;
    .restart local v2       #fatalTagPositon:I
    .restart local v3       #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    .restart local v4       #requiredParent:Ljava/lang/String;
    :cond_3
    move v6, v7

    .line 487
    goto :goto_0

    .end local v0           #currTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .end local v1           #fatalTag:Ljava/lang/String;
    .end local v2           #fatalTagPositon:I
    .end local v3           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    .end local v4           #requiredParent:Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 495
    goto :goto_0
.end method

.method private saveToLastOpenTag(Ljava/util/List;Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V
    .locals 4
    .parameter "nodeList"
    .parameter "tokenToAdd"
    .parameter "cleanTimeValues"

    .prologue
    .line 515
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v3

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->getLastTagPos()Lorg/htmlcleaner/HtmlCleaner$TagPos;
    invoke-static {v3}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2100(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v0

    .line 516
    .local v0, last:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    if-eqz v0, :cond_1

    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->info:Lorg/htmlcleaner/TagInfo;
    invoke-static {v0}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$200(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Lorg/htmlcleaner/TagInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->info:Lorg/htmlcleaner/TagInfo;
    invoke-static {v0}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$200(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Lorg/htmlcleaner/TagInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlcleaner/TagInfo;->isIgnorePermitted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v3

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->findTagToPlaceRubbish()Lorg/htmlcleaner/HtmlCleaner$TagPos;
    invoke-static {v3}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2200(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v1

    .line 521
    .local v1, rubbishPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    if-eqz v1, :cond_0

    .line 522
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->position:I
    invoke-static {v1}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$1900(Lorg/htmlcleaner/HtmlCleaner$TagPos;)I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlcleaner/TagNode;

    .line 523
    .local v2, startTagToken:Lorg/htmlcleaner/TagNode;
    invoke-virtual {v2, p2}, Lorg/htmlcleaner/TagNode;->addItemForMoving(Lorg/htmlcleaner/BaseToken;)V

    goto :goto_0
.end method

.method private setPruneTags(Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V
    .locals 3
    .parameter "pruneTags"
    .parameter "cleanTimeValues"

    .prologue
    .line 803
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneTagSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1600(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 804
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneNodeSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1500(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 805
    if-eqz p1, :cond_0

    .line 806
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .local v0, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneTagSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1600(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 811
    .end local v0           #tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    return-void
.end method


# virtual methods
.method public clean(Ljava/io/File;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/File;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public clean(Ljava/io/File;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    .locals 3
    .parameter "file"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 285
    .local v0, in:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 286
    .local v1, reader:Ljava/io/Reader;
    invoke-virtual {p0, v1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;)Lorg/htmlcleaner/TagNode;

    move-result-object v2

    return-object v2
.end method

.method public clean(Ljava/io/InputStream;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    sget-object v0, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/InputStream;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public clean(Ljava/io/InputStream;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "in"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public clean(Ljava/io/Reader;)Lorg/htmlcleaner/TagNode;
    .locals 2
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;-><init>(Lorg/htmlcleaner/HtmlCleaner;Lorg/htmlcleaner/HtmlCleaner$1;)V

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public clean(Ljava/io/Reader;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;
    .locals 11
    .parameter "reader"
    .parameter "cleanTimeValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 339
    new-instance v1, Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    invoke-direct {v1, p0, v3}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;-><init>(Lorg/htmlcleaner/HtmlCleaner;Lorg/htmlcleaner/HtmlCleaner$1;)V

    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static {p2, v1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$402(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    .line 340
    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headOpened:Z
    invoke-static {p2, v2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$602(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Z)Z

    .line 341
    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_bodyOpened:Z
    invoke-static {p2, v2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$702(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Z)Z

    .line 342
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headTags:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$800(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 343
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->allTags:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$900(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 344
    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    iget-object v1, v1, Lorg/htmlcleaner/CleanerProperties;->pruneTags:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lorg/htmlcleaner/HtmlCleaner;->setPruneTags(Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 346
    const-string v1, "html"

    invoke-direct {p0, v1, p2}, Lorg/htmlcleaner/HtmlCleaner;->createTagNode(Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v1

    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2, v1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1002(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;

    .line 347
    const-string v1, "body"

    invoke-direct {p0, v1, p2}, Lorg/htmlcleaner/HtmlCleaner;->createTagNode(Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v1

    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2, v1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1102(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;

    .line 348
    const-string v1, "head"

    invoke-direct {p0, v1, p2}, Lorg/htmlcleaner/HtmlCleaner;->createTagNode(Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v1

    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->headNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2, v1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1202(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;

    .line 349
    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2, v3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1302(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;

    .line 350
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1000(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v1

    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->headNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1200(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    .line 351
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1000(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v1

    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1100(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    .line 353
    new-instance v0, Lorg/htmlcleaner/HtmlCleaner$1;

    iget-object v3, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    iget-object v4, p0, Lorg/htmlcleaner/HtmlCleaner;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    iget-object v5, p0, Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/HtmlCleaner$1;-><init>(Lorg/htmlcleaner/HtmlCleaner;Ljava/io/Reader;Lorg/htmlcleaner/CleanerProperties;Lorg/htmlcleaner/CleanerTransformations;Lorg/htmlcleaner/ITagInfoProvider;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 365
    .local v0, htmlTokenizer:Lorg/htmlcleaner/HtmlTokenizer;
    invoke-virtual {v0}, Lorg/htmlcleaner/HtmlTokenizer;->start()V

    .line 367
    invoke-virtual {v0}, Lorg/htmlcleaner/HtmlTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v8

    .line 368
    .local v8, nodeList:Ljava/util/List;,"Ljava/util/List<Lorg/htmlcleaner/BaseToken;>;"
    invoke-direct {p0, v8, p2}, Lorg/htmlcleaner/HtmlCleaner;->closeAll(Ljava/util/List;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 369
    invoke-direct {p0, v8, p2}, Lorg/htmlcleaner/HtmlCleaner;->createDocumentNodes(Ljava/util/List;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 371
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->calculateRootNode(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 374
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneNodeSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1500(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneNodeSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1500(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneNodeSet:Ljava/util/Set;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1500(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 376
    .local v7, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/htmlcleaner/TagNode;

    .line 378
    .local v10, tagNode:Lorg/htmlcleaner/TagNode;
    invoke-virtual {v10}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v9

    .line 379
    .local v9, parent:Lorg/htmlcleaner/TagNode;
    if-eqz v9, :cond_0

    .line 380
    invoke-virtual {v9, v10}, Lorg/htmlcleaner/TagNode;->removeChild(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    .end local v7           #iterator:Ljava/util/Iterator;
    .end local v9           #parent:Lorg/htmlcleaner/TagNode;
    .end local v10           #tagNode:Lorg/htmlcleaner/TagNode;
    :cond_1
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1300(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v1

    invoke-virtual {v0}, Lorg/htmlcleaner/HtmlTokenizer;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagNode;->setDocType(Lorg/htmlcleaner/DoctypeToken;)V

    .line 387
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;
    invoke-static {p2}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1300(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v1

    return-object v1
.end method

.method public clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    .locals 2
    .parameter "htmlContent"

    .prologue
    .line 276
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;)Lorg/htmlcleaner/TagNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/htmlcleaner/HtmlCleanerException;

    invoke-direct {v1, v0}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clean(Ljava/net/URL;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/net/URL;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public clean(Ljava/net/URL;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    .locals 2
    .parameter "url"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 295
    .local v0, urlConnection:Ljava/net/URLConnection;
    if-nez p2, :cond_0

    .line 296
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/htmlcleaner/Utils;->getCharsetFromContentTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 298
    :cond_0
    if-nez p2, :cond_1

    .line 299
    invoke-static {p1}, Lorg/htmlcleaner/Utils;->getCharsetFromContent(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p2

    .line 301
    :cond_1
    if-nez p2, :cond_2

    .line 302
    sget-object p2, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    .line 304
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/InputStream;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v1

    return-object v1
.end method

.method public getInnerHtml(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;
    .locals 6
    .parameter "node"

    .prologue
    .line 840
    if-eqz p1, :cond_1

    .line 842
    :try_start_0
    new-instance v4, Lorg/htmlcleaner/SimpleXmlSerializer;

    iget-object v5, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-direct {v4, v5}, Lorg/htmlcleaner/SimpleXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    invoke-virtual {v4, p1}, Lorg/htmlcleaner/SimpleXmlSerializer;->getAsString(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, content:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 844
    .local v2, index1:I
    const/16 v4, 0x3e

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 845
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 846
    .local v3, index2:I
    if-ltz v2, :cond_0

    if-gt v2, v3, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 847
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #index1:I
    .end local v3           #index2:I
    :catch_0
    move-exception v1

    .line 848
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Lorg/htmlcleaner/HtmlCleanerException;

    invoke-direct {v4, v1}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 851
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    new-instance v4, Lorg/htmlcleaner/HtmlCleanerException;

    const-string v5, "Cannot return inner html of the null node!"

    invoke-direct {v4, v5}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getProperties()Lorg/htmlcleaner/CleanerProperties;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    return-object v0
.end method

.method public getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    return-object v0
.end method

.method public getTransformations()Lorg/htmlcleaner/CleanerTransformations;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    return-object v0
.end method

.method makeTree(Ljava/util/List;Ljava/util/ListIterator;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V
    .locals 25
    .parameter
    .parameter
    .parameter "cleanTimeValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;",
            "Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, nodeList:Ljava/util/List;,"Ljava/util/List<Lorg/htmlcleaner/BaseToken;>;"
    .local p2, nodeIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/BaseToken;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 534
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/htmlcleaner/BaseToken;

    .line 536
    .local v22, token:Lorg/htmlcleaner/BaseToken;
    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/htmlcleaner/EndTagToken;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v10, v22

    .line 537
    check-cast v10, Lorg/htmlcleaner/EndTagToken;

    .line 538
    .local v10, endTagToken:Lorg/htmlcleaner/EndTagToken;
    invoke-virtual {v10}, Lorg/htmlcleaner/EndTagToken;->getName()Ljava/lang/String;

    move-result-object v20

    .line 539
    .local v20, tagName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v19

    .line 541
    .local v19, tag:Lorg/htmlcleaner/TagInfo;
    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->omitUnknownTags:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    :cond_1
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Lorg/htmlcleaner/TagInfo;->isDeprecated()Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->omitDeprecatedTags:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 542
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 543
    :cond_3
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Lorg/htmlcleaner/TagInfo;->allowsBody()Z

    move-result v23

    if-nez v23, :cond_4

    .line 544
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 546
    :cond_4
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static/range {p3 .. p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->findTag(Ljava/lang/String;)Lorg/htmlcleaner/HtmlCleaner$TagPos;
    invoke-static {v0, v1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$1800(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;)Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v14

    .line 548
    .local v14, matchingPosition:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    if-eqz v14, :cond_6

    .line 549
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v14, v10, v2}, Lorg/htmlcleaner/HtmlCleaner;->closeSnippet(Ljava/util/List;Lorg/htmlcleaner/HtmlCleaner$TagPos;Ljava/lang/Object;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/List;

    move-result-object v4

    .line 550
    .local v4, closed:Ljava/util/List;
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 551
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v11, v23, -0x1

    .local v11, i:I
    :goto_1
    const/16 v23, 0x1

    move/from16 v0, v23

    if-lt v11, v0, :cond_0

    .line 552
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/htmlcleaner/TagNode;

    .line 553
    .local v7, closedTag:Lorg/htmlcleaner/TagNode;
    if-eqz v19, :cond_5

    invoke-virtual {v7}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->isContinueAfter(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v1}, Lorg/htmlcleaner/HtmlCleaner;->makeTagNodeCopy(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 555
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 551
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 558
    .end local v4           #closed:Ljava/util/List;
    .end local v7           #closedTag:Lorg/htmlcleaner/TagNode;
    .end local v11           #i:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedInLastOpenTag(Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 559
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/htmlcleaner/HtmlCleaner;->saveToLastOpenTag(Ljava/util/List;Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 560
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 563
    .end local v10           #endTagToken:Lorg/htmlcleaner/EndTagToken;
    .end local v14           #matchingPosition:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .end local v19           #tag:Lorg/htmlcleaner/TagInfo;
    .end local v20           #tagName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/htmlcleaner/HtmlCleaner;->isStartToken(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    move-object/from16 v18, v22

    .line 564
    check-cast v18, Lorg/htmlcleaner/TagNode;

    .line 565
    .local v18, startTagToken:Lorg/htmlcleaner/TagNode;
    invoke-virtual/range {v18 .. v18}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v20

    .line 566
    .restart local v20       #tagName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v19

    .line 568
    .restart local v19       #tag:Lorg/htmlcleaner/TagInfo;
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static/range {p3 .. p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v23

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->isEmpty()Z
    invoke-static/range {v23 .. v23}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2300(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Z

    move-result v23

    if-eqz v23, :cond_8

    const/4 v13, 0x0

    .line 569
    .local v13, lastTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    :goto_2
    if-nez v13, :cond_9

    const/4 v12, 0x0

    .line 572
    .local v12, lastTagInfo:Lorg/htmlcleaner/TagInfo;
    :goto_3
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->allTags:Ljava/util/Set;
    invoke-static/range {p3 .. p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$900(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 575
    const-string v23, "html"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 576
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;
    invoke-static/range {p3 .. p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1000(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->addAttributesToTag(Lorg/htmlcleaner/TagNode;Ljava/util/Map;)V

    .line 577
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 568
    .end local v12           #lastTagInfo:Lorg/htmlcleaner/TagInfo;
    .end local v13           #lastTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    :cond_8
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static/range {p3 .. p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v23

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->getLastTagPos()Lorg/htmlcleaner/HtmlCleaner$TagPos;
    invoke-static/range {v23 .. v23}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2100(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v13

    goto :goto_2

    .line 569
    .restart local v13       #lastTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    move-object/from16 v23, v0

    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->name:Ljava/lang/String;
    invoke-static {v13}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$100(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v12

    goto :goto_3

    .line 579
    .restart local v12       #lastTagInfo:Lorg/htmlcleaner/TagInfo;
    :cond_a
    const-string v23, "body"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 580
    const/16 v23, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v23

    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_bodyOpened:Z
    invoke-static {v0, v1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$702(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Z)Z

    .line 581
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;
    invoke-static/range {p3 .. p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1100(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->addAttributesToTag(Lorg/htmlcleaner/TagNode;Ljava/util/Map;)V

    .line 582
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 584
    :cond_b
    const-string v23, "head"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 585
    const/16 v23, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v23

    #setter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headOpened:Z
    invoke-static {v0, v1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$602(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Z)Z

    .line 586
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->headNode:Lorg/htmlcleaner/TagNode;
    invoke-static/range {p3 .. p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$1200(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->addAttributesToTag(Lorg/htmlcleaner/TagNode;Ljava/util/Map;)V

    .line 587
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 589
    :cond_c
    if-nez v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->omitUnknownTags:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    :cond_d
    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Lorg/htmlcleaner/TagInfo;->isDeprecated()Z

    move-result v23

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/htmlcleaner/CleanerProperties;->omitDeprecatedTags:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 590
    :cond_e
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 592
    :cond_f
    if-nez v19, :cond_10

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lorg/htmlcleaner/TagInfo;->allowsAnything()Z

    move-result v23

    if-nez v23, :cond_10

    .line 593
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/htmlcleaner/HtmlCleaner;->saveToLastOpenTag(Ljava/util/List;Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 594
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 595
    :cond_10
    if-eqz v19, :cond_11

    invoke-virtual/range {v19 .. v19}, Lorg/htmlcleaner/TagInfo;->hasPermittedTags()Z

    move-result v23

    if-eqz v23, :cond_11

    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static/range {p3 .. p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Lorg/htmlcleaner/TagInfo;->getPermittedTags()Ljava/util/Set;

    move-result-object v24

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->someAlreadyOpen(Ljava/util/Set;)Z
    invoke-static/range {v23 .. v24}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2400(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/util/Set;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 596
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 598
    :cond_11
    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Lorg/htmlcleaner/TagInfo;->isUnique()Z

    move-result v23

    if-eqz v23, :cond_12

    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static/range {p3 .. p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->tagEncountered(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2500(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 599
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 601
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->isFatalTagSatisfied(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z

    move-result v23

    if-nez v23, :cond_13

    .line 602
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 604
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->mustAddRequiredParent(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 605
    invoke-virtual/range {v19 .. v19}, Lorg/htmlcleaner/TagInfo;->getRequiredParent()Ljava/lang/String;

    move-result-object v16

    .line 606
    .local v16, requiredParent:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->createTagNode(Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v17

    .line 607
    .local v17, requiredParentStartToken:Lorg/htmlcleaner/TagNode;
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 608
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 609
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto/16 :goto_0

    .line 611
    .end local v16           #requiredParent:Ljava/lang/String;
    .end local v17           #requiredParentStartToken:Lorg/htmlcleaner/TagNode;
    :cond_14
    if-eqz v19, :cond_18

    if-eqz v13, :cond_18

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lorg/htmlcleaner/TagInfo;->isMustCloseTag(Lorg/htmlcleaner/TagInfo;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 612
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v13, v2, v3}, Lorg/htmlcleaner/HtmlCleaner;->closeSnippet(Ljava/util/List;Lorg/htmlcleaner/HtmlCleaner$TagPos;Ljava/lang/Object;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/List;

    move-result-object v4

    .line 613
    .restart local v4       #closed:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 616
    .local v5, closedCount:I
    invoke-virtual/range {v19 .. v19}, Lorg/htmlcleaner/TagInfo;->hasCopyTags()Z

    move-result v23

    if-eqz v23, :cond_17

    if-lez v5, :cond_17

    .line 619
    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 620
    .local v6, closedIt:Ljava/util/ListIterator;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v21, toBeCopied:Ljava/util/List;
    :goto_4
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 622
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/htmlcleaner/TagNode;

    .line 623
    .local v9, currStartToken:Lorg/htmlcleaner/TagNode;
    invoke-virtual {v9}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->isCopy(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 624
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 630
    .end local v9           #currStartToken:Lorg/htmlcleaner/TagNode;
    :cond_15
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_17

    .line 631
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 632
    .local v8, copyIt:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_16

    .line 633
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/htmlcleaner/TagNode;

    .line 634
    .restart local v9       #currStartToken:Lorg/htmlcleaner/TagNode;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v9, v1}, Lorg/htmlcleaner/HtmlCleaner;->makeTagNodeCopy(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_5

    .line 638
    .end local v9           #currStartToken:Lorg/htmlcleaner/TagNode;
    :cond_16
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_17

    .line 639
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 638
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 644
    .end local v6           #closedIt:Ljava/util/ListIterator;
    .end local v8           #copyIt:Ljava/util/Iterator;
    .end local v11           #i:I
    .end local v21           #toBeCopied:Ljava/util/List;
    :cond_17
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto/16 :goto_0

    .line 646
    .end local v4           #closed:Ljava/util/List;
    .end local v5           #closedCount:I
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedInLastOpenTag(Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z

    move-result v23

    if-nez v23, :cond_19

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/htmlcleaner/HtmlCleaner;->saveToLastOpenTag(Ljava/util/List;Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 648
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 650
    :cond_19
    if-eqz v19, :cond_1a

    invoke-virtual/range {v19 .. v19}, Lorg/htmlcleaner/TagInfo;->allowsBody()Z

    move-result v23

    if-nez v23, :cond_1a

    .line 651
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/htmlcleaner/HtmlCleaner;->createTagNode(Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;

    move-result-object v15

    .line 652
    .local v15, newTagNode:Lorg/htmlcleaner/TagNode;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v15, v2}, Lorg/htmlcleaner/HtmlCleaner;->addPossibleHeadCandidate(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 653
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 656
    .end local v15           #newTagNode:Lorg/htmlcleaner/TagNode;
    :cond_1a
    #getter for: Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    invoke-static/range {p3 .. p3}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    move-result-object v23

    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previousIndex()I

    move-result v24

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move/from16 v2, v24

    #calls: Lorg/htmlcleaner/HtmlCleaner$OpenTags;->addTag(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->access$2600(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 659
    .end local v12           #lastTagInfo:Lorg/htmlcleaner/TagInfo;
    .end local v13           #lastTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .end local v18           #startTagToken:Lorg/htmlcleaner/TagNode;
    .end local v19           #tag:Lorg/htmlcleaner/TagInfo;
    .end local v20           #tagName:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedInLastOpenTag(Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/htmlcleaner/HtmlCleaner;->saveToLastOpenTag(Ljava/util/List;Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 661
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 665
    .end local v22           #token:Lorg/htmlcleaner/BaseToken;
    :cond_1c
    return-void
.end method

.method public setInnerHtml(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V
    .locals 9
    .parameter "node"
    .parameter "content"

    .prologue
    .line 862
    if-eqz p1, :cond_1

    .line 863
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 864
    .local v2, nodeName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    .local v1, html:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " marker=\'\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v3

    .line 869
    .local v3, parent:Lorg/htmlcleaner/TagNode;
    :goto_0
    if-eqz v3, :cond_0

    .line 870
    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 871
    .local v4, parentName:Ljava/lang/String;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v3

    .line 874
    goto :goto_0

    .line 876
    .end local v4           #parentName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v5

    .line 877
    .local v5, rootNode:Lorg/htmlcleaner/TagNode;
    const-string v6, "marker"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/htmlcleaner/TagNode;->findElementHavingAttribute(Ljava/lang/String;Z)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    .line 878
    .local v0, cleanedNode:Lorg/htmlcleaner/TagNode;
    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {v0}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/htmlcleaner/TagNode;->setChildren(Ljava/util/List;)V

    .line 882
    .end local v0           #cleanedNode:Lorg/htmlcleaner/TagNode;
    .end local v1           #html:Ljava/lang/StringBuilder;
    .end local v2           #nodeName:Ljava/lang/String;
    .end local v3           #parent:Lorg/htmlcleaner/TagNode;
    .end local v5           #rootNode:Lorg/htmlcleaner/TagNode;
    :cond_1
    return-void
.end method

.method public setTransformations(Lorg/htmlcleaner/CleanerTransformations;)V
    .locals 0
    .parameter "transformations"

    .prologue
    .line 832
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    .line 833
    return-void
.end method
