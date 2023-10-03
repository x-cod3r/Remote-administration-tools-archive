.class public abstract Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.super Ljava/lang/Object;
.source "TagNodeHandler.java"


# instance fields
.field private spanner:Lnet/nightwhistler/htmlspanner/HtmlSpanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected appendNewLine(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/16 v2, 0xa

    .line 109
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 111
    .local v0, len:I
    iget-object v1, p0, Lnet/nightwhistler/htmlspanner/TagNodeHandler;->spanner:Lnet/nightwhistler/htmlspanner/HtmlSpanner;

    invoke-virtual {v1}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->isStripExtraWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public beforeChildren(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .parameter "node"
    .parameter "builder"

    .prologue
    .line 73
    return-void
.end method

.method protected getSpanner()Lnet/nightwhistler/htmlspanner/HtmlSpanner;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/TagNodeHandler;->spanner:Lnet/nightwhistler/htmlspanner/HtmlSpanner;

    return-object v0
.end method

.method public abstract handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;II)V
.end method

.method public rendersContent()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setSpanner(Lnet/nightwhistler/htmlspanner/HtmlSpanner;)V
    .locals 0
    .parameter "spanner"

    .prologue
    .line 50
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/TagNodeHandler;->spanner:Lnet/nightwhistler/htmlspanner/HtmlSpanner;

    .line 51
    return-void
.end method
