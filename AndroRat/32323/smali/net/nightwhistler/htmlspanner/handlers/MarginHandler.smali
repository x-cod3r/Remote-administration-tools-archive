.class public Lnet/nightwhistler/htmlspanner/handlers/MarginHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "MarginHandler.java"


# static fields
.field private static MARGIN_INDENT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0xa

    sput v0, Lnet/nightwhistler/htmlspanner/handlers/MarginHandler;->MARGIN_INDENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeChildren(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;)V
    .locals 2
    .parameter "node"
    .parameter "builder"

    .prologue
    .line 39
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

    .line 40
    invoke-virtual {p0, p2}, Lnet/nightwhistler/htmlspanner/handlers/MarginHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)V

    .line 42
    :cond_0
    return-void
.end method

.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .parameter "node"
    .parameter "builder"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 46
    new-instance v0, Landroid/text/style/LeadingMarginSpan$Standard;

    sget v1, Lnet/nightwhistler/htmlspanner/handlers/MarginHandler;->MARGIN_INDENT:I

    invoke-direct {v0, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p2, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48
    invoke-virtual {p0, p2}, Lnet/nightwhistler/htmlspanner/handlers/MarginHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)V

    .line 49
    return-void
.end method
