.class public Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;
.super Ljava/lang/Object;
.source "ListItemSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# static fields
.field private static final BULLET_RADIUS:I = 0x3

.field private static final NUMBER_RADIUS:I = 0x5

.field public static final STANDARD_GAP_WIDTH:I = 0x2


# instance fields
.field private final mNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;->mNumber:I

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;->mNumber:I

    .line 48
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 4
    .parameter "c"
    .parameter "p"
    .parameter "x"
    .parameter "dir"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "first"
    .parameter "l"

    .prologue
    .line 60
    check-cast p8, Landroid/text/Spanned;

    .end local p8
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, p9, :cond_0

    .line 61
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 63
    .local v0, style:Landroid/graphics/Paint$Style;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget v1, p0, Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;->mNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;->mNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int v2, p3, p4

    int-to-float v2, v2

    int-to-float v3, p6

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    .end local v0           #style:Landroid/graphics/Paint$Style;
    :cond_0
    return-void

    .line 68
    .restart local v0       #style:Landroid/graphics/Paint$Style;
    :cond_1
    const-string v1, "\u2022"

    add-int v2, p3, p4

    int-to-float v2, v2

    int-to-float v3, p6

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .parameter "first"

    .prologue
    .line 51
    iget v0, p0, Lnet/nightwhistler/htmlspanner/spans/ListItemSpan;->mNumber:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    const/16 v0, 0xc

    .line 54
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
