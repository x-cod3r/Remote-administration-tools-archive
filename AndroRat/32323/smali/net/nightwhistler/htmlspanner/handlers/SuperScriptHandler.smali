.class public Lnet/nightwhistler/htmlspanner/handlers/SuperScriptHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "SuperScriptHandler.java"


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
    new-instance v0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {p2, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 37
    return-void
.end method
