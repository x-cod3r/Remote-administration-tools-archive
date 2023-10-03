.class public Lnet/nightwhistler/htmlspanner/handlers/TableHandler;
.super Lnet/nightwhistler/htmlspanner/TagNodeHandler;
.source "TableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;,
        Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;
    }
.end annotation


# static fields
.field private static final PADDING:I = 0x5


# instance fields
.field private tableWidth:I

.field private textColor:I

.field private textSize:F

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/TagNodeHandler;-><init>()V

    .line 54
    const/16 v0, 0x190

    iput v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->tableWidth:I

    .line 55
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->typeFace:Landroid/graphics/Typeface;

    .line 56
    const/high16 v0, 0x4180

    iput v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->textSize:F

    .line 57
    const/high16 v0, -0x100

    iput v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->textColor:I

    .line 274
    return-void
.end method

.method static synthetic access$100(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->textColor:I

    return v0
.end method

.method static synthetic access$200(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->tableWidth:I

    return v0
.end method

.method static synthetic access$300(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;Ljava/util/List;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->calculateRowHeight(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)Landroid/text/TextPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method private calculateRowHeight(Ljava/util/List;)I
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/text/Spanned;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, row:Ljava/util/List;,"Ljava/util/List<Landroid/text/Spanned;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 153
    const/4 v10, 0x0

    .line 172
    :cond_0
    return v10

    .line 156
    :cond_1
    invoke-direct {p0}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 158
    .local v2, textPaint:Landroid/text/TextPaint;
    iget v3, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->tableWidth:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    div-int v8, v3, v4

    .line 160
    .local v8, columnWidth:I
    const/4 v10, 0x0

    .line 162
    .local v10, rowHeight:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Spanned;

    .line 164
    .local v1, cell:Landroid/text/Spanned;
    new-instance v0, Landroid/text/StaticLayout;

    add-int/lit8 v3, v8, -0xa

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 167
    .local v0, layout:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    if-le v3, v10, :cond_2

    .line 168
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    goto :goto_0
.end method

.method private getTable(Lorg/htmlcleaner/TagNode;)Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;
    .locals 2
    .parameter "node"

    .prologue
    .line 134
    new-instance v0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;-><init>(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;Lnet/nightwhistler/htmlspanner/handlers/TableHandler$1;)V

    .line 136
    .local v0, result:Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;
    invoke-direct {p0, p1, v0}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->readNode(Ljava/lang/Object;Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;)V

    .line 138
    return-object v0
.end method

.method private getTextPaint()Landroid/text/TextPaint;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 143
    .local v0, textPaint:Landroid/text/TextPaint;
    iget v1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->textColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 145
    iget v1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->textSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 146
    iget-object v1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 148
    return-object v0
.end method

.method private readNode(Ljava/lang/Object;Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;)V
    .locals 6
    .parameter "node"
    .parameter "table"

    .prologue
    .line 110
    instance-of v4, p1, Lorg/htmlcleaner/ContentNode;

    if-eqz v4, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 114
    check-cast v3, Lorg/htmlcleaner/TagNode;

    .line 116
    .local v3, tagNode:Lorg/htmlcleaner/TagNode;
    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "td"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {p0}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->getSpanner()Lnet/nightwhistler/htmlspanner/HtmlSpanner;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnet/nightwhistler/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;)Landroid/text/Spanned;

    move-result-object v2

    .line 118
    .local v2, result:Landroid/text/Spanned;
    invoke-virtual {p2, v2}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->addCell(Landroid/text/Spanned;)V

    goto :goto_0

    .line 122
    .end local v2           #result:Landroid/text/Spanned;
    :cond_2
    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    invoke-virtual {p2}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->addRow()V

    .line 126
    :cond_3
    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, child:Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->readNode(Ljava/lang/Object;Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;)V

    goto :goto_1
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;II)V
    .locals 8
    .parameter "node"
    .parameter "builder"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 177
    invoke-direct {p0, p1}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->getTable(Lorg/htmlcleaner/TagNode;)Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;

    move-result-object v3

    .line 179
    .local v3, table:Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->getRows()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 181
    invoke-virtual {v3}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->getRows()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 182
    .local v2, row:Ljava/util/List;,"Ljava/util/List<Landroid/text/Spanned;>;"
    const-string v4, "\ufffc"

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 184
    new-instance v0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;

    invoke-direct {v0, p0, v2}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;-><init>(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;Ljava/util/List;)V

    .line 185
    .local v0, drawable:Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;
    invoke-virtual {v0}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v6, v6, v4, v5}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;->setBounds(IIII)V

    .line 187
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p2, v4, p3, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 190
    new-instance v4, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$1;

    invoke-direct {v4, p0}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$1;-><init>(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)V

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p2, v4, p3, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 197
    add-int/lit8 p3, p3, 0x1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v0           #drawable:Lnet/nightwhistler/htmlspanner/handlers/TableHandler$TableRowDrawable;
    .end local v2           #row:Ljava/util/List;,"Ljava/util/List<Landroid/text/Spanned;>;"
    :cond_0
    return-void
.end method

.method public rendersContent()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public setTableWidth(I)V
    .locals 0
    .parameter "tableWidth"

    .prologue
    .line 67
    iput p1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->tableWidth:I

    .line 68
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 78
    iput p1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->textColor:I

    .line 79
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 89
    iput p1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->textSize:F

    .line 90
    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "typeFace"

    .prologue
    .line 100
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->typeFace:Landroid/graphics/Typeface;

    .line 101
    return-void
.end method
