.class public Lnet/nightwhistler/htmlspanner/handlers/ItalicHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "ItalicHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .parameter "node"
    .parameter "builder"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 36
    new-instance v0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;

    invoke-virtual {p0}, Lnet/nightwhistler/htmlspanner/handlers/ItalicHandler;->getSpanner()Lnet/nightwhistler/htmlspanner/HtmlSpanner;

    move-result-object v1

    invoke-virtual {v1}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->getFontFamily()Lnet/nightwhistler/htmlspanner/FontFamily;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;-><init>(Lnet/nightwhistler/htmlspanner/FontFamily;)V

    .line 37
    .local v0, boldSpan:Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->setItalic(Z)V

    .line 39
    const/16 v1, 0x21

    invoke-virtual {p2, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 40
    return-void
.end method
