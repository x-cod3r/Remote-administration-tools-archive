.class public Lnet/nightwhistler/htmlspanner/handlers/PreHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "PreHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method

.method private getPlainText(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 5
    .parameter "buffer"
    .parameter "node"

    .prologue
    .line 37
    instance-of v4, p2, Lorg/htmlcleaner/ContentNode;

    if-eqz v4, :cond_1

    move-object v1, p2

    .line 38
    check-cast v1, Lorg/htmlcleaner/ContentNode;

    .line 39
    .local v1, contentNode:Lorg/htmlcleaner/ContentNode;
    invoke-virtual {v1}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 46
    .end local v1           #contentNode:Lorg/htmlcleaner/ContentNode;
    :cond_0
    return-void

    .line 40
    :cond_1
    instance-of v4, p2, Lorg/htmlcleaner/TagNode;

    if-eqz v4, :cond_0

    move-object v3, p2

    .line 41
    check-cast v3, Lorg/htmlcleaner/TagNode;

    .line 42
    .local v3, tagNode:Lorg/htmlcleaner/TagNode;
    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, child:Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lnet/nightwhistler/htmlspanner/handlers/PreHandler;->getPlainText(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

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
    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-direct {p0, v0, p1}, Lnet/nightwhistler/htmlspanner/handlers/PreHandler;->getPlainText(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 55
    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v2, "monospace"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p2, v1, p3, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 57
    invoke-virtual {p0, p2}, Lnet/nightwhistler/htmlspanner/handlers/PreHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)V

    .line 58
    invoke-virtual {p0, p2}, Lnet/nightwhistler/htmlspanner/handlers/PreHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)V

    .line 59
    return-void
.end method

.method public rendersContent()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
