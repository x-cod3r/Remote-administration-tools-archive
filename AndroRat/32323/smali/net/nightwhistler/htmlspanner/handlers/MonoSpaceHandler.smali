.class public Lnet/nightwhistler/htmlspanner/handlers/MonoSpaceHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "MonoSpaceHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
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
    .line 35
    new-instance v0, Landroid/text/style/TypefaceSpan;

    const-string v1, "monospace"

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-virtual {p2, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 37
    return-void
.end method
