.class Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/nightwhistler/htmlspanner/handlers/TableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableRowDrawable"
.end annotation


# instance fields
.field private tableRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;


# direct methods
.method public constructor <init>(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/text/Spanned;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, tableRow:Ljava/util/List;,"Ljava/util/List<Landroid/text/Spanned;>;"
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 211
    iput-object p2, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->tableRow:Ljava/util/List;

    .line 212
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 216
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 217
    .local v7, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;

    #getter for: Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->textColor:I
    invoke-static {v2}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->access$100(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->tableRow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    .line 222
    .local v18, numberOfColumns:I
    if-nez v18, :cond_1

    .line 246
    :cond_0
    return-void

    .line 226
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;

    #getter for: Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->tableWidth:I
    invoke-static {v2}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->access$200(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)I

    move-result v2

    div-int v16, v2, v18

    .line 227
    .local v16, columnWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->tableRow:Ljava/util/List;

    #calls: Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->calculateRowHeight(Ljava/util/List;)I
    invoke-static {v2, v3}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->access$300(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;Ljava/util/List;)I

    move-result v20

    .line 229
    .local v20, rowHeight:I
    const/16 v19, 0x0

    .line 231
    .local v19, offset:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 233
    mul-int v19, v17, v16

    .line 236
    move/from16 v0, v19

    int-to-float v3, v0

    const/4 v4, 0x0

    add-int v2, v19, v16

    int-to-float v5, v2

    move/from16 v0, v20

    int-to-float v6, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 238
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->tableRow:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;

    #calls: Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->getTextPaint()Landroid/text/TextPaint;
    invoke-static {v2}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->access$400(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)Landroid/text/TextPaint;

    move-result-object v10

    add-int/lit8 v11, v16, -0xa

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 241
    .local v8, layout:Landroid/text/StaticLayout;
    add-int/lit8 v2, v19, 0x5

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 242
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 243
    const/high16 v2, -0x3f60

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 231
    add-int/lit8 v17, v17, 0x1

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;

    iget-object v1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->tableRow:Ljava/util/List;

    #calls: Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->calculateRowHeight(Ljava/util/List;)I
    invoke-static {v0, v1}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->access$300(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;

    #getter for: Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->tableWidth:I
    invoke-static {v0}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->access$200(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 266
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 271
    return-void
.end method
