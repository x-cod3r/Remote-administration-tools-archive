.class public Lnet/nightwhistler/htmlspanner/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# instance fields
.field private boldItalicTypeface:Landroid/graphics/Typeface;

.field private boldTypeface:Landroid/graphics/Typeface;

.field private defaultTypeface:Landroid/graphics/Typeface;

.field private italicTypeface:Landroid/graphics/Typeface;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "name"
    .parameter "defaultTypeFace"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->defaultTypeface:Landroid/graphics/Typeface;

    .line 36
    return-void
.end method


# virtual methods
.method public getBoldItalicTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->boldItalicTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getBoldTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->boldTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getDefaultTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->defaultTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getItalicTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->italicTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isFakeBold()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->boldTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFakeItalic()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->italicTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBoldItalicTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "boldItalicTypeface"

    .prologue
    .line 43
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->boldItalicTypeface:Landroid/graphics/Typeface;

    .line 44
    return-void
.end method

.method public setBoldTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "boldTypeface"

    .prologue
    .line 47
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->boldTypeface:Landroid/graphics/Typeface;

    .line 48
    return-void
.end method

.method public setDefaultTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "defaultTypeface"

    .prologue
    .line 51
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->defaultTypeface:Landroid/graphics/Typeface;

    .line 52
    return-void
.end method

.method public setItalicTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "italicTypeface"

    .prologue
    .line 55
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/FontFamily;->italicTypeface:Landroid/graphics/Typeface;

    .line 56
    return-void
.end method
