.class public Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "HeaderHandler.java"


# instance fields
.field private size:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 51
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;-><init>()V

    .line 52
    iput p1, p0, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;->size:F

    .line 53
    return-void
.end method


# virtual methods
.method public beforeChildren(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;)V
    .locals 2
    .parameter "node"
    .parameter "builder"

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 58
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 60
    :cond_0
    return-void
.end method

.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;II)V
    .locals 4
    .parameter "node"
    .parameter "builder"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v3, 0x21

    .line 64
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    iget v2, p0, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;->size:F

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2, v1, p3, p4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 66
    new-instance v0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;

    invoke-virtual {p0}, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;->getSpanner()Lnet/nightwhistler/htmlspanner/HtmlSpanner;

    move-result-object v1

    invoke-virtual {v1}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->getFontFamily()Lnet/nightwhistler/htmlspanner/FontFamily;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;-><init>(Lnet/nightwhistler/htmlspanner/FontFamily;)V

    .line 67
    .local v0, boldSpan:Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->setBold(Z)V

    .line 69
    invoke-virtual {p2, v0, p3, p4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 71
    invoke-virtual {p0, p2}, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)V

    .line 72
    invoke-virtual {p0, p2}, Lnet/nightwhistler/htmlspanner/handlers/HeaderHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)V

    .line 73
    return-void
.end method
