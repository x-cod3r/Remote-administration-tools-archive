.class public Lnet/nightwhistler/htmlspanner/handlers/ListItemHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "ListItemHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method

.method private getMyIndex(Lorg/htmlcleaner/TagNode;)I
    .locals 7
    .parameter "node"

    .prologue
    const/4 v4, -0x1

    .line 36
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v5

    if-nez v5, :cond_1

    move v2, v4

    .line 55
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    const/4 v2, 0x1

    .line 42
    .local v2, i:I
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, child:Ljava/lang/Object;
    if-eq v0, p1, :cond_0

    .line 47
    instance-of v5, v0, Lorg/htmlcleaner/TagNode;

    if-eqz v5, :cond_2

    move-object v1, v0

    .line 48
    check-cast v1, Lorg/htmlcleaner/TagNode;

    .line 49
    .local v1, childNode:Lorg/htmlcleaner/TagNode;
    const-string v5, "li"

    invoke-virtual {v1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Ljava/lang/Object;
    .end local v1           #childNode:Lorg/htmlcleaner/TagNode;
    :cond_3
    move v2, v4

    .line 55
    goto :goto_0
.end method

.method private getParentName(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;
    .locals 1
    .parameter "node"

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;II)V
    .locals 4
    .parameter "node"
    .parameter "builder"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v3, 0x21

    .line 69
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 70
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 73
    :cond_0
    const-string v1, "ol"

    invoke-direct {p0, p1}, Lnet/nightwhistler/htmlspanner/handlers/ListItemHandler;->getParentName(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    new-instance v0, Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;

    invoke-direct {p0, p1}, Lnet/nightwhistler/htmlspanner/handlers/ListItemHandler;->getMyIndex(Lorg/htmlcleaner/TagNode;)I

    move-result v1

    invoke-direct {v0, v1}, Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;-><init>(I)V

    .line 75
    .local v0, bSpan:Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;
    invoke-virtual {p2, v0, p3, p4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 82
    .end local v0           #bSpan:Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    const-string v1, "ul"

    invoke-direct {p0, p1}, Lnet/nightwhistler/htmlspanner/handlers/ListItemHandler;->getParentName(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v0, Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;

    invoke-direct {v0}, Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;-><init>()V

    .line 79
    .restart local v0       #bSpan:Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;
    invoke-virtual {p2, v0, p3, p4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method
