.class public Lnet/nightwhistler/htmlspanner/handlers/LinkHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "LinkHandler.java"


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
    .locals 3
    .parameter "node"
    .parameter "builder"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 37
    const-string v1, "href"

    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, href:Ljava/lang/String;
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x21

    invoke-virtual {p2, v1, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 40
    return-void
.end method
