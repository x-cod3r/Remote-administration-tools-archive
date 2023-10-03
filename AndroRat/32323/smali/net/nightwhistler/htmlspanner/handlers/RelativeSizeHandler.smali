.class public Lnet/nightwhistler/htmlspanner/handlers/RelativeSizeHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "RelativeSizeHandler.java"


# instance fields
.field private size:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 36
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;-><init>()V

    .line 37
    iput p1, p0, Lnet/nightwhistler/htmlspanner/handlers/RelativeSizeHandler;->size:F

    .line 38
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
    .line 41
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    iget v1, p0, Lnet/nightwhistler/htmlspanner/handlers/RelativeSizeHandler;->size:F

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v1, 0x21

    invoke-virtual {p2, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 42
    return-void
.end method
