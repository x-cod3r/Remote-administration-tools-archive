.class Landroid/support/v4/widget/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/drawable/Drawable$Callback;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:[I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:Landroid/graphics/Path;

.field private q:F

.field private r:D

.field private s:I

.field private t:I

.field private u:I

.field private final v:Landroid/graphics/Paint;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->c:Landroid/graphics/Paint;

    iput v1, p0, Landroid/support/v4/widget/ab;->e:F

    iput v1, p0, Landroid/support/v4/widget/ab;->f:F

    iput v1, p0, Landroid/support/v4/widget/ab;->g:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Landroid/support/v4/widget/ab;->h:F

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Landroid/support/v4/widget/ab;->i:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->v:Landroid/graphics/Paint;

    iput-object p1, p0, Landroid/support/v4/widget/ab;->d:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v0, p0, Landroid/support/v4/widget/ab;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/support/v4/widget/ab;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/ab;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/ab;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/ab;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ab;->p:Landroid/graphics/Path;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->p:Landroid/graphics/Path;

    iget-object v0, p0, Landroid/support/v4/widget/ab;->p:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_0
    iget v0, p0, Landroid/support/v4/widget/ab;->i:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/ab;->q:F

    mul-float/2addr v0, v1

    iget-wide v2, p0, Landroid/support/v4/widget/ab;->r:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget-wide v2, p0, Landroid/support/v4/widget/ab;->r:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/widget/ab;->p:Landroid/graphics/Path;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/ab;->p:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/ab;->s:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/ab;->q:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/ab;->p:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/ab;->s:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/ab;->q:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/ab;->t:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/widget/ab;->q:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/ab;->p:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ab;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/support/v4/widget/ab;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v4/widget/ab;->j:[I

    iget v2, p0, Landroid/support/v4/widget/ab;->k:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v0, p2, p3

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroid/support/v4/widget/ab;->p:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/v4/widget/ab;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/ab;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ab;->d:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/ab;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/ab;->j:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ab;->k:I

    return-void
.end method

.method public a(D)V
    .locals 1

    iput-wide p1, p0, Landroid/support/v4/widget/ab;->r:D

    return-void
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Landroid/support/v4/widget/ab;->h:F

    iget-object v0, p0, Landroid/support/v4/widget/ab;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Landroid/support/v4/widget/ab;->l()V

    return-void
.end method

.method public a(FF)V
    .locals 1

    float-to-int v0, p1

    iput v0, p0, Landroid/support/v4/widget/ab;->s:I

    float-to-int v0, p2

    iput v0, p0, Landroid/support/v4/widget/ab;->t:I

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ab;->w:I

    return-void
.end method

.method public a(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-wide v2, p0, Landroid/support/v4/widget/ab;->r:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/ab;->h:F

    div-float/2addr v0, v6

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    iput v0, p0, Landroid/support/v4/widget/ab;->i:F

    return-void

    :cond_1
    div-float/2addr v0, v6

    float-to-double v0, v0

    iget-wide v2, p0, Landroid/support/v4/widget/ab;->r:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    const/high16 v4, 0x43b40000    # 360.0f

    iget-object v1, p0, Landroid/support/v4/widget/ab;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Landroid/support/v4/widget/ab;->i:F

    iget v2, p0, Landroid/support/v4/widget/ab;->i:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p0, Landroid/support/v4/widget/ab;->e:F

    iget v2, p0, Landroid/support/v4/widget/ab;->g:F

    add-float/2addr v0, v2

    mul-float v2, v0, v4

    iget v0, p0, Landroid/support/v4/widget/ab;->f:F

    iget v3, p0, Landroid/support/v4/widget/ab;->g:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v4

    sub-float v3, v0, v2

    iget-object v0, p0, Landroid/support/v4/widget/ab;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/support/v4/widget/ab;->j:[I

    iget v5, p0, Landroid/support/v4/widget/ab;->k:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v4/widget/ab;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-direct {p0, p1, v2, v3, p2}, Landroid/support/v4/widget/ab;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    iget v0, p0, Landroid/support/v4/widget/ab;->u:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ab;->v:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/ab;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v4/widget/ab;->v:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/ab;->u:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/widget/ab;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/ab;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Landroid/support/v4/widget/ab;->l()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->o:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/widget/ab;->o:Z

    invoke-direct {p0}, Landroid/support/v4/widget/ab;->l()V

    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/widget/ab;->j:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ab;->b(I)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ab;->u:I

    return v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ab;->e:F

    invoke-direct {p0}, Landroid/support/v4/widget/ab;->l()V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ab;->k:I

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ab;->h:F

    return v0
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ab;->f:F

    invoke-direct {p0}, Landroid/support/v4/widget/ab;->l()V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ab;->u:I

    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ab;->e:F

    return v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ab;->g:F

    invoke-direct {p0}, Landroid/support/v4/widget/ab;->l()V

    return-void
.end method

.method public e()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ab;->l:F

    return v0
.end method

.method public e(F)V
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ab;->q:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/v4/widget/ab;->q:F

    invoke-direct {p0}, Landroid/support/v4/widget/ab;->l()V

    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ab;->m:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ab;->f:F

    return v0
.end method

.method public h()D
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/widget/ab;->r:D

    return-wide v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ab;->n:F

    return v0
.end method

.method public j()V
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ab;->e:F

    iput v0, p0, Landroid/support/v4/widget/ab;->l:F

    iget v0, p0, Landroid/support/v4/widget/ab;->f:F

    iput v0, p0, Landroid/support/v4/widget/ab;->m:F

    iget v0, p0, Landroid/support/v4/widget/ab;->g:F

    iput v0, p0, Landroid/support/v4/widget/ab;->n:F

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/ab;->l:F

    iput v0, p0, Landroid/support/v4/widget/ab;->m:F

    iput v0, p0, Landroid/support/v4/widget/ab;->n:F

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ab;->b(F)V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ab;->c(F)V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ab;->d(F)V

    return-void
.end method
