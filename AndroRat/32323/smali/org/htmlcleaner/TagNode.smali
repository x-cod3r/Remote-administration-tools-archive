.class public Lorg/htmlcleaner/TagNode;
.super Lorg/htmlcleaner/TagToken;
.source "TagNode.java"

# interfaces
.implements Lorg/htmlcleaner/HtmlNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;,
        Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;,
        Lorg/htmlcleaner/TagNode$TagNodeNameCondition;,
        Lorg/htmlcleaner/TagNode$TagAllCondition;,
        Lorg/htmlcleaner/TagNode$ITagNodeCondition;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
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

.field private children:Ljava/util/List;

.field private docType:Lorg/htmlcleaner/DoctypeToken;

.field private transient isFormed:Z

.field private itemsToMove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;"
        }
    .end annotation
.end field

.field private nsDeclarations:Ljava/util/Map;
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

.field private parent:Lorg/htmlcleaner/TagNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 135
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lorg/htmlcleaner/TagToken;-><init>(Ljava/lang/String;)V

    .line 124
    iput-object v1, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    .line 125
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    .line 127
    iput-object v1, p0, Lorg/htmlcleaner/TagNode;->docType:Lorg/htmlcleaner/DoctypeToken;

    .line 128
    iput-object v1, p0, Lorg/htmlcleaner/TagNode;->nsDeclarations:Ljava/util/Map;

    .line 129
    iput-object v1, p0, Lorg/htmlcleaner/TagNode;->itemsToMove:Ljava/util/List;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/htmlcleaner/TagNode;->isFormed:Z

    .line 136
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/htmlcleaner/TagNode;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method private findElement(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Lorg/htmlcleaner/TagNode;
    .locals 6
    .parameter "condition"
    .parameter "isRecursive"

    .prologue
    const/4 v4, 0x0

    .line 346
    if-nez p1, :cond_1

    move-object v0, v4

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 351
    iget-object v5, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 352
    .local v3, item:Ljava/lang/Object;
    instance-of v5, v3, Lorg/htmlcleaner/TagNode;

    if-eqz v5, :cond_2

    move-object v0, v3

    .line 353
    check-cast v0, Lorg/htmlcleaner/TagNode;

    .line 354
    .local v0, currNode:Lorg/htmlcleaner/TagNode;
    invoke-interface {p1, v0}, Lorg/htmlcleaner/TagNode$ITagNodeCondition;->satisfy(Lorg/htmlcleaner/TagNode;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 356
    if-eqz p2, :cond_2

    .line 357
    invoke-direct {v0, p1, p2}, Lorg/htmlcleaner/TagNode;->findElement(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Lorg/htmlcleaner/TagNode;

    move-result-object v2

    .line 358
    .local v2, inner:Lorg/htmlcleaner/TagNode;
    if-eqz v2, :cond_2

    move-object v0, v2

    .line 359
    goto :goto_0

    .line 350
    .end local v0           #currNode:Lorg/htmlcleaner/TagNode;
    .end local v2           #inner:Lorg/htmlcleaner/TagNode;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #item:Ljava/lang/Object;
    :cond_3
    move-object v0, v4

    .line 365
    goto :goto_0
.end method

.method private getElementList(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Ljava/util/List;
    .locals 6
    .parameter "condition"
    .parameter "isRecursive"

    .prologue
    .line 375
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 376
    .local v4, result:Ljava/util/List;
    if-nez p1, :cond_1

    .line 396
    :cond_0
    return-object v4

    .line 380
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 381
    iget-object v5, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 382
    .local v3, item:Ljava/lang/Object;
    instance-of v5, v3, Lorg/htmlcleaner/TagNode;

    if-eqz v5, :cond_3

    move-object v0, v3

    .line 383
    check-cast v0, Lorg/htmlcleaner/TagNode;

    .line 384
    .local v0, currNode:Lorg/htmlcleaner/TagNode;
    invoke-interface {p1, v0}, Lorg/htmlcleaner/TagNode$ITagNodeCondition;->satisfy(Lorg/htmlcleaner/TagNode;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 385
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_2
    if-eqz p2, :cond_3

    .line 388
    invoke-direct {v0, p1, p2}, Lorg/htmlcleaner/TagNode;->getElementList(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Ljava/util/List;

    move-result-object v2

    .line 389
    .local v2, innerList:Ljava/util/List;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 390
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    .end local v0           #currNode:Lorg/htmlcleaner/TagNode;
    .end local v2           #innerList:Ljava/util/List;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getElements(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)[Lorg/htmlcleaner/TagNode;
    .locals 4
    .parameter "condition"
    .parameter "isRecursive"

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/TagNode;->getElementList(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Ljava/util/List;

    move-result-object v2

    .line 406
    .local v2, list:Ljava/util/List;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    new-array v0, v3, [Lorg/htmlcleaner/TagNode;

    .line 407
    .local v0, array:[Lorg/htmlcleaner/TagNode;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 408
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/htmlcleaner/TagNode;

    aput-object v3, v0, v1

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    .end local v0           #array:[Lorg/htmlcleaner/TagNode;
    .end local v1           #i:I
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 411
    .restart local v0       #array:[Lorg/htmlcleaner/TagNode;
    .restart local v1       #i:I
    :cond_1
    return-object v0
.end method

.method private traverseInternally(Lorg/htmlcleaner/TagNodeVisitor;)Z
    .locals 9
    .parameter "visitor"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 646
    if-eqz p1, :cond_7

    .line 647
    iget-object v8, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    if-eqz v8, :cond_1

    move v2, v6

    .line 648
    .local v2, hasParent:Z
    :goto_0
    iget-object v8, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    invoke-interface {p1, v8, p0}, Lorg/htmlcleaner/TagNodeVisitor;->visit(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/HtmlNode;)Z

    move-result v5

    .line 650
    .local v5, toContinue:Z
    if-nez v5, :cond_2

    .line 668
    .end local v2           #hasParent:Z
    .end local v5           #toContinue:Z
    :cond_0
    :goto_1
    return v7

    :cond_1
    move v2, v7

    .line 647
    goto :goto_0

    .line 652
    .restart local v2       #hasParent:Z
    .restart local v5       #toContinue:Z
    :cond_2
    if-eqz v2, :cond_3

    iget-object v8, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    if-nez v8, :cond_3

    move v7, v6

    .line 653
    goto :goto_1

    .line 655
    :cond_3
    iget-object v8, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_7

    aget-object v1, v0, v3

    .line 656
    .local v1, child:Ljava/lang/Object;
    instance-of v8, v1, Lorg/htmlcleaner/TagNode;

    if-eqz v8, :cond_5

    .line 657
    check-cast v1, Lorg/htmlcleaner/TagNode;

    .end local v1           #child:Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/htmlcleaner/TagNode;->traverseInternally(Lorg/htmlcleaner/TagNodeVisitor;)Z

    move-result v5

    .line 663
    :cond_4
    :goto_3
    if-eqz v5, :cond_0

    .line 655
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 658
    .restart local v1       #child:Ljava/lang/Object;
    :cond_5
    instance-of v8, v1, Lorg/htmlcleaner/ContentNode;

    if-eqz v8, :cond_6

    .line 659
    check-cast v1, Lorg/htmlcleaner/ContentNode;

    .end local v1           #child:Ljava/lang/Object;
    invoke-interface {p1, p0, v1}, Lorg/htmlcleaner/TagNodeVisitor;->visit(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/HtmlNode;)Z

    move-result v5

    goto :goto_3

    .line 660
    .restart local v1       #child:Ljava/lang/Object;
    :cond_6
    instance-of v8, v1, Lorg/htmlcleaner/CommentNode;

    if-eqz v8, :cond_4

    .line 661
    check-cast v1, Lorg/htmlcleaner/CommentNode;

    .end local v1           #child:Ljava/lang/Object;
    invoke-interface {p1, p0, v1}, Lorg/htmlcleaner/TagNodeVisitor;->visit(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/HtmlNode;)Z

    move-result v5

    goto :goto_3

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #hasParent:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #toContinue:Z
    :cond_7
    move v7, v6

    .line 668
    goto :goto_1
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "attName"
    .parameter "attValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lorg/htmlcleaner/TagNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public addChild(Ljava/lang/Object;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 311
    if-nez p1, :cond_1

    .line 323
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local p1
    :cond_1
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 315
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/TagNode;->addChildren(Ljava/util/List;)V

    goto :goto_0

    .line 317
    .restart local p1
    :cond_2
    iget-object v1, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    instance-of v1, p1, Lorg/htmlcleaner/TagNode;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 319
    check-cast v0, Lorg/htmlcleaner/TagNode;

    .line 320
    .local v0, childTagNode:Lorg/htmlcleaner/TagNode;
    iput-object p0, v0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    goto :goto_0
.end method

.method public addChildren(Ljava/util/List;)V
    .locals 3
    .parameter "newChildren"

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 332
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 334
    .local v0, child:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    .end local v0           #child:Ljava/lang/Object;
    .end local v1           #it:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method addItemForMoving(Lorg/htmlcleaner/BaseToken;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 584
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->itemsToMove:Ljava/util/List;

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagNode;->itemsToMove:Ljava/util/List;

    .line 588
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->itemsToMove:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "nsPrefix"
    .parameter "nsURI"

    .prologue
    .line 210
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->nsDeclarations:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagNode;->nsDeclarations:Ljava/util/Map;

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->nsDeclarations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method collectNamespacePrefixesOnPath(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, prefixes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object v1

    .line 678
    .local v1, nsDeclarations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 679
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 680
    .local v2, prefix:Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 683
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #prefix:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    if-eqz v3, :cond_1

    .line 684
    iget-object v3, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v3, p1}, Lorg/htmlcleaner/TagNode;->collectNamespacePrefixesOnPath(Ljava/util/Set;)V

    .line 686
    :cond_1
    return-void
.end method

.method public evaluateXPath(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .parameter "xPathExpression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Lorg/htmlcleaner/XPather;

    invoke-direct {v0, p1}, Lorg/htmlcleaner/XPather;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/htmlcleaner/XPather;->evaluateAgainstNode(Lorg/htmlcleaner/TagNode;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findElementByAttValue(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "attName"
    .parameter "attValue"
    .parameter "isRecursive"
    .parameter "isCaseSensitive"

    .prologue
    .line 448
    new-instance v0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;

    invoke-direct {v0, p0, p1, p2, p4}, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;-><init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0, p3}, Lorg/htmlcleaner/TagNode;->findElement(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public findElementByName(Ljava/lang/String;Z)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "findName"
    .parameter "isRecursive"

    .prologue
    .line 424
    new-instance v0, Lorg/htmlcleaner/TagNode$TagNodeNameCondition;

    invoke-direct {v0, p0, p1}, Lorg/htmlcleaner/TagNode$TagNodeNameCondition;-><init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/htmlcleaner/TagNode;->findElement(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public findElementHavingAttribute(Ljava/lang/String;Z)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "attName"
    .parameter "isRecursive"

    .prologue
    .line 436
    new-instance v0, Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;

    invoke-direct {v0, p0, p1}, Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;-><init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/htmlcleaner/TagNode;->findElement(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public getAllElements(Z)[Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "isRecursive"

    .prologue
    .line 420
    new-instance v0, Lorg/htmlcleaner/TagNode$TagAllCondition;

    invoke-direct {v0, p0}, Lorg/htmlcleaner/TagNode$TagAllCondition;-><init>(Lorg/htmlcleaner/TagNode;)V

    invoke-direct {p0, v0, p1}, Lorg/htmlcleaner/TagNode;->getElements(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)[Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public getAllElementsList(Z)Ljava/util/List;
    .locals 1
    .parameter "isRecursive"

    .prologue
    .line 416
    new-instance v0, Lorg/htmlcleaner/TagNode$TagAllCondition;

    invoke-direct {v0, p0}, Lorg/htmlcleaner/TagNode$TagAllCondition;-><init>(Lorg/htmlcleaner/TagNode;)V

    invoke-direct {p0, v0, p1}, Lorg/htmlcleaner/TagNode;->getElementList(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "attName"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getChildIndex(Lorg/htmlcleaner/HtmlNode;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 540
    const/4 v2, 0x0

    .line 541
    .local v2, index:I
    iget-object v3, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 542
    .local v0, curr:Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 547
    .end local v0           #curr:Ljava/lang/Object;
    .end local v2           #index:I
    :goto_1
    return v2

    .line 545
    .restart local v0       #curr:Ljava/lang/Object;
    .restart local v2       #index:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 547
    .end local v0           #curr:Ljava/lang/Object;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getChildTagList()Ljava/util/List;
    .locals 4

    .prologue
    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, childTagList:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 255
    iget-object v3, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 256
    .local v2, item:Ljava/lang/Object;
    instance-of v3, v2, Lorg/htmlcleaner/TagNode;

    if-eqz v3, :cond_0

    .line 257
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v2           #item:Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public getChildTags()[Lorg/htmlcleaner/TagNode;
    .locals 4

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/htmlcleaner/TagNode;->getChildTagList()Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, childTagList:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Lorg/htmlcleaner/TagNode;

    .line 270
    .local v1, childrenArray:[Lorg/htmlcleaner/TagNode;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 271
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/htmlcleaner/TagNode;

    aput-object v3, v1, v2

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return-object v1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public getDocType()Lorg/htmlcleaner/DoctypeToken;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->docType:Lorg/htmlcleaner/DoctypeToken;

    return-object v0
.end method

.method public getElementListByAttValue(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 1
    .parameter "attName"
    .parameter "attValue"
    .parameter "isRecursive"
    .parameter "isCaseSensitive"

    .prologue
    .line 452
    new-instance v0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;

    invoke-direct {v0, p0, p1, p2, p4}, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;-><init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0, p3}, Lorg/htmlcleaner/TagNode;->getElementList(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElementListByName(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .parameter "findName"
    .parameter "isRecursive"

    .prologue
    .line 428
    new-instance v0, Lorg/htmlcleaner/TagNode$TagNodeNameCondition;

    invoke-direct {v0, p0, p1}, Lorg/htmlcleaner/TagNode$TagNodeNameCondition;-><init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/htmlcleaner/TagNode;->getElementList(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElementListHavingAttribute(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .parameter "attName"
    .parameter "isRecursive"

    .prologue
    .line 440
    new-instance v0, Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;

    invoke-direct {v0, p0, p1}, Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;-><init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/htmlcleaner/TagNode;->getElementList(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByAttValue(Ljava/lang/String;Ljava/lang/String;ZZ)[Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "attName"
    .parameter "attValue"
    .parameter "isRecursive"
    .parameter "isCaseSensitive"

    .prologue
    .line 456
    new-instance v0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;

    invoke-direct {v0, p0, p1, p2, p4}, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;-><init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0, p3}, Lorg/htmlcleaner/TagNode;->getElements(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)[Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByName(Ljava/lang/String;Z)[Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "findName"
    .parameter "isRecursive"

    .prologue
    .line 432
    new-instance v0, Lorg/htmlcleaner/TagNode$TagNodeNameCondition;

    invoke-direct {v0, p0, p1}, Lorg/htmlcleaner/TagNode$TagNodeNameCondition;-><init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/htmlcleaner/TagNode;->getElements(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)[Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method public getElementsHavingAttribute(Ljava/lang/String;Z)[Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "attName"
    .parameter "isRecursive"

    .prologue
    .line 444
    new-instance v0, Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;

    invoke-direct {v0, p0, p1}, Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;-><init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/htmlcleaner/TagNode;->getElements(Lorg/htmlcleaner/TagNode$ITagNodeCondition;Z)[Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method getItemsToMove()Ljava/util/List;
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
    .line 592
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->itemsToMove:Ljava/util/List;

    return-object v0
.end method

.method public getNamespaceDeclarations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->nsDeclarations:Ljava/util/Map;

    return-object v0
.end method

.method getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "nsPrefix"

    .prologue
    .line 689
    iget-object v3, p0, Lorg/htmlcleaner/TagNode;->nsDeclarations:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 690
    iget-object v3, p0, Lorg/htmlcleaner/TagNode;->nsDeclarations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 691
    .local v2, nsEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 692
    .local v0, currName:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    .line 693
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 701
    .end local v0           #currName:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nsEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 697
    :cond_2
    iget-object v3, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    if-eqz v3, :cond_3

    .line 698
    iget-object v3, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v3, p1}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 701
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/htmlcleaner/TagNode;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    return-object v0
.end method

.method public getText()Ljava/lang/StringBuffer;
    .locals 5

    .prologue
    .line 281
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v3, text:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 283
    iget-object v4, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 284
    .local v1, item:Ljava/lang/Object;
    instance-of v4, v1, Lorg/htmlcleaner/ContentNode;

    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    .end local v1           #item:Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .restart local v1       #item:Ljava/lang/Object;
    :cond_1
    instance-of v4, v1, Lorg/htmlcleaner/TagNode;

    if-eqz v4, :cond_0

    .line 287
    check-cast v1, Lorg/htmlcleaner/TagNode;

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/StringBuffer;

    move-result-object v2

    .line 288
    .local v2, subtext:Ljava/lang/StringBuffer;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 292
    .end local v2           #subtext:Ljava/lang/StringBuffer;
    :cond_2
    return-object v3
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 2
    .parameter "attName"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertChild(ILorg/htmlcleaner/HtmlNode;)V
    .locals 1
    .parameter "index"
    .parameter "childToAdd"

    .prologue
    .line 556
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 557
    return-void
.end method

.method public insertChildAfter(Lorg/htmlcleaner/HtmlNode;Lorg/htmlcleaner/HtmlNode;)V
    .locals 2
    .parameter "node"
    .parameter "nodeToInsert"

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/TagNode;->getChildIndex(Lorg/htmlcleaner/HtmlNode;)I

    move-result v0

    .line 578
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 579
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, p2}, Lorg/htmlcleaner/TagNode;->insertChild(ILorg/htmlcleaner/HtmlNode;)V

    .line 581
    :cond_0
    return-void
.end method

.method public insertChildBefore(Lorg/htmlcleaner/HtmlNode;Lorg/htmlcleaner/HtmlNode;)V
    .locals 1
    .parameter "node"
    .parameter "nodeToInsert"

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/TagNode;->getChildIndex(Lorg/htmlcleaner/HtmlNode;)I

    move-result v0

    .line 566
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 567
    invoke-virtual {p0, v0, p2}, Lorg/htmlcleaner/TagNode;->insertChild(ILorg/htmlcleaner/HtmlNode;)V

    .line 569
    :cond_0
    return-void
.end method

.method isFormed()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lorg/htmlcleaner/TagNode;->isFormed:Z

    return v0
.end method

.method makeCopy()Lorg/htmlcleaner/TagNode;
    .locals 3

    .prologue
    .line 709
    new-instance v0, Lorg/htmlcleaner/TagNode;

    iget-object v1, p0, Lorg/htmlcleaner/TagNode;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/htmlcleaner/TagNode;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, copy:Lorg/htmlcleaner/TagNode;
    iget-object v1, v0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    iget-object v2, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 711
    return-object v0
.end method

.method public removeAllChildren()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 514
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2
    .parameter "attName"

    .prologue
    .line 228
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    return-void
.end method

.method public removeChild(Ljava/lang/Object;)Z
    .locals 1
    .parameter "child"

    .prologue
    .line 506
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFromTree()Z
    .locals 2

    .prologue
    .line 492
    iget-object v1, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v1, p0}, Lorg/htmlcleaner/TagNode;->removeChild(Ljava/lang/Object;)Z

    move-result v0

    .line 494
    .local v0, existed:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/htmlcleaner/TagNode;->parent:Lorg/htmlcleaner/TagNode;

    .line 497
    .end local v0           #existed:Z
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceChild(Lorg/htmlcleaner/HtmlNode;Lorg/htmlcleaner/HtmlNode;)V
    .locals 3
    .parameter "childToReplace"
    .parameter "replacement"

    .prologue
    .line 522
    if-nez p2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v2, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 526
    .local v1, it:Ljava/util/ListIterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 528
    .local v0, curr:Ljava/lang/Object;
    if-ne v0, p1, :cond_2

    .line 529
    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V
    .locals 0
    .parameter "serializer"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-virtual {p1, p0, p2}, Lorg/htmlcleaner/Serializer;->serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V

    .line 706
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "attName"
    .parameter "attValue"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 194
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, ""

    invoke-virtual {p0, v0, p2}, Lorg/htmlcleaner/TagNode;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local p2
    :cond_1
    const-string v0, "xmlns:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/htmlcleaner/TagNode;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    if-nez p2, :cond_3

    const-string p2, ""

    .end local p2
    :cond_3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method setChildren(Ljava/util/List;)V
    .locals 0
    .parameter "children"

    .prologue
    .line 249
    iput-object p1, p0, Lorg/htmlcleaner/TagNode;->children:Ljava/util/List;

    .line 250
    return-void
.end method

.method public setDocType(Lorg/htmlcleaner/DoctypeToken;)V
    .locals 0
    .parameter "docType"

    .prologue
    .line 307
    iput-object p1, p0, Lorg/htmlcleaner/TagNode;->docType:Lorg/htmlcleaner/DoctypeToken;

    .line 308
    return-void
.end method

.method setFormed()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/htmlcleaner/TagNode;->setFormed(Z)V

    .line 609
    return-void
.end method

.method setFormed(Z)V
    .locals 0
    .parameter "isFormed"

    .prologue
    .line 604
    iput-boolean p1, p0, Lorg/htmlcleaner/TagNode;->isFormed:Z

    .line 605
    return-void
.end method

.method setItemsToMove(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, itemsToMove:Ljava/util/List;,"Ljava/util/List<Lorg/htmlcleaner/BaseToken;>;"
    iput-object p1, p0, Lorg/htmlcleaner/TagNode;->itemsToMove:Ljava/util/List;

    .line 597
    return-void
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 144
    invoke-static {p1}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iput-object p1, p0, Lorg/htmlcleaner/TagNode;->name:Ljava/lang/String;

    .line 146
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method transformAttributes(Lorg/htmlcleaner/TagTransformation;)V
    .locals 10
    .parameter "tagTrans"

    .prologue
    .line 612
    invoke-virtual {p1}, Lorg/htmlcleaner/TagTransformation;->isPreserveSourceAttributes()Z

    move-result v4

    .line 613
    .local v4, isPreserveSourceAtts:Z
    invoke-virtual {p1}, Lorg/htmlcleaner/TagTransformation;->hasAttributeTransformations()Z

    move-result v3

    .line 614
    .local v3, hasAttTransforms:Z
    if-nez v3, :cond_0

    if-nez v4, :cond_4

    .line 615
    :cond_0
    if-eqz v4, :cond_1

    new-instance v7, Ljava/util/LinkedHashMap;

    iget-object v9, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    invoke-direct {v7, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 616
    .local v7, newAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz v3, :cond_3

    .line 617
    invoke-virtual {p1}, Lorg/htmlcleaner/TagTransformation;->getAttributeTransformations()Ljava/util/Map;

    move-result-object v6

    .line 618
    .local v6, map:Ljava/util/Map;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 619
    .local v5, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 620
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 621
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 622
    .local v0, attName:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 623
    .local v8, template:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 624
    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 615
    .end local v0           #attName:Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v5           #iterator:Ljava/util/Iterator;
    .end local v6           #map:Ljava/util/Map;
    .end local v7           #newAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #template:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 626
    .restart local v0       #attName:Ljava/lang/String;
    .restart local v2       #entry:Ljava/util/Map$Entry;
    .restart local v5       #iterator:Ljava/util/Iterator;
    .restart local v6       #map:Ljava/util/Map;
    .restart local v7       #newAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #template:Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    invoke-static {v8, v9}, Lorg/htmlcleaner/Utils;->evaluateTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, attValue:Ljava/lang/String;
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 631
    .end local v0           #attName:Ljava/lang/String;
    .end local v1           #attValue:Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v5           #iterator:Ljava/util/Iterator;
    .end local v6           #map:Ljava/util/Map;
    .end local v8           #template:Ljava/lang/String;
    :cond_3
    iput-object v7, p0, Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;

    .line 633
    .end local v7           #newAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public traverse(Lorg/htmlcleaner/TagNodeVisitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lorg/htmlcleaner/TagNode;->traverseInternally(Lorg/htmlcleaner/TagNodeVisitor;)Z

    .line 642
    return-void
.end method
