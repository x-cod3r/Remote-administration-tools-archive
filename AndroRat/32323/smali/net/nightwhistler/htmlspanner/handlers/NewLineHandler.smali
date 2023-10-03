.class public Lnet/nightwhistler/htmlspanner/handlers/NewLineHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "NewLineHandler.java"


# instance fields
.field numberOfNewLines:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "howMany"

    .prologue
    .line 41
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;-><init>()V

    .line 42
    iput p1, p0, Lnet/nightwhistler/htmlspanner/handlers/NewLineHandler;->numberOfNewLines:I

    .line 43
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
    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lnet/nightwhistler/htmlspanner/handlers/NewLineHandler;->numberOfNewLines:I

    if-ge v0, v1, :cond_0

    .line 47
    invoke-virtual {p0, p2}, Lnet/nightwhistler/htmlspanner/handlers/NewLineHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method
