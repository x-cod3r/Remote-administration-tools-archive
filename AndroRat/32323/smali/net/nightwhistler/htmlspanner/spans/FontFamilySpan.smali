.class public Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;
.super Landroid/text/style/TypefaceSpan;
.source "FontFamilySpan.java"


# instance fields
.field private bold:Z

.field private final family:Lnet/nightwhistler/htmlspanner/FontFamily;

.field private italic:Z


# direct methods
.method public constructor <init>(Lnet/nightwhistler/htmlspanner/FontFamily;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 32
    invoke-virtual {p1}, Lnet/nightwhistler/htmlspanner/FontFamily;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->family:Lnet/nightwhistler/htmlspanner/FontFamily;

    .line 34
    return-void
.end method

.method private applyCustomTypeFace(Landroid/graphics/Paint;Lnet/nightwhistler/htmlspanner/FontFamily;)V
    .locals 2
    .parameter "paint"
    .parameter "tf"

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-boolean v0, p0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->bold:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p2}, Lnet/nightwhistler/htmlspanner/FontFamily;->isFakeBold()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 66
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->italic:Z

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p2}, Lnet/nightwhistler/htmlspanner/FontFamily;->isFakeItalic()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    const/high16 v0, -0x4180

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 74
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->bold:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->italic:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lnet/nightwhistler/htmlspanner/FontFamily;->getBoldItalicTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p2}, Lnet/nightwhistler/htmlspanner/FontFamily;->getBoldItalicTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 77
    :cond_2
    return-void

    .line 62
    :cond_3
    invoke-virtual {p2}, Lnet/nightwhistler/htmlspanner/FontFamily;->getBoldTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p2}, Lnet/nightwhistler/htmlspanner/FontFamily;->getItalicTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1
.end method


# virtual methods
.method public setBold(Z)V
    .locals 0
    .parameter "bold"

    .prologue
    .line 37
    iput-boolean p1, p0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->bold:Z

    .line 38
    return-void
.end method

.method public setItalic(Z)V
    .locals 0
    .parameter "italic"

    .prologue
    .line 41
    iput-boolean p1, p0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->italic:Z

    .line 42
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 46
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->family:Lnet/nightwhistler/htmlspanner/FontFamily;

    invoke-direct {p0, p1, v0}, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->applyCustomTypeFace(Landroid/graphics/Paint;Lnet/nightwhistler/htmlspanner/FontFamily;)V

    .line 47
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 51
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->family:Lnet/nightwhistler/htmlspanner/FontFamily;

    invoke-direct {p0, p1, v0}, Lnet/nightwhistler/htmlspanner/spans/FontFamilySpan;->applyCustomTypeFace(Landroid/graphics/Paint;Lnet/nightwhistler/htmlspanner/FontFamily;)V

    .line 52
    return-void
.end method
