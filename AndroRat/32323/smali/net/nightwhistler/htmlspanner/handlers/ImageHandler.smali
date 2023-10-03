.class public Lnet/nightwhistler/htmlspanner/handlers/ImageHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "ImageHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;II)V
    .locals 6
    .parameter "node"
    .parameter "builder"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    .line 47
    const-string v3, "src"

    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, src:Ljava/lang/String;
    const-string v3, "\ufffc"

    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 51
    invoke-virtual {p0, v2}, Lnet/nightwhistler/htmlspanner/handlers/ImageHandler;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x21

    invoke-virtual {p2, v3, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 58
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, io:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method
