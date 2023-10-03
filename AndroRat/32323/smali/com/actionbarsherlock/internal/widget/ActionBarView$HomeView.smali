.class public Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeView"
.end annotation


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mUpView:Landroid/view/View;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1294
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1298
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1299
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1329
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1311
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1312
    const/4 v0, 0x1

    return v0
.end method

.method public getLeftOffset()I
    .locals 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1334
    sget v0, Lcom/actionbarsherlock/R$id;->abs__up:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    .line 1335
    sget v0, Lcom/actionbarsherlock/R$id;->abs__home:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1336
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1387
    sub-int v12, p5, p3

    div-int/lit8 v11, v12, 0x2

    .line 1389
    .local v11, vCenter:I
    const/4 v8, 0x0

    .line 1390
    .local v8, upOffset:I
    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 1391
    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1392
    .local v7, upLp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1393
    .local v6, upHeight:I
    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1394
    .local v10, upWidth:I
    div-int/lit8 v12, v6, 0x2

    sub-int v9, v11, v12

    .line 1395
    .local v9, upTop:I
    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    const/4 v13, 0x0

    add-int v14, v9, v6

    invoke-virtual {v12, v13, v9, v10, v14}, Landroid/view/View;->layout(IIII)V

    .line 1396
    iget v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v10

    iget v13, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v12, v13

    .line 1398
    add-int p2, p2, v8

    .line 1400
    .end local v6           #upHeight:I
    .end local v7           #upLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v9           #upTop:I
    .end local v10           #upWidth:I
    :cond_0
    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1401
    .local v3, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 1402
    .local v1, iconHeight:I
    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    .line 1403
    .local v5, iconWidth:I
    sub-int v12, p4, p2

    div-int/lit8 v0, v12, 0x2

    .line 1404
    .local v0, hCenter:I
    iget v12, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v13, v5, 0x2

    sub-int v13, v0, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v2, v8, v12

    .line 1405
    .local v2, iconLeft:I
    iget v12, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v13, v1, 0x2

    sub-int v13, v11, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1406
    .local v4, iconTop:I
    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    add-int v13, v2, v5

    add-int v14, v4, v1

    invoke-virtual {v12, v2, v4, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1407
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1345
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1346
    .local v10, upLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 1347
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    .line 1348
    .local v3, width:I
    :goto_0
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 1349
    .local v6, height:I
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1350
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1351
    .local v9, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 1353
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1352
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1355
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1356
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1357
    .local v7, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1358
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1360
    .local v8, heightSize:I
    sparse-switch v11, :sswitch_data_0

    .line 1371
    :goto_1
    sparse-switch v7, :sswitch_data_1

    .line 1382
    :goto_2
    invoke-virtual {p0, v3, v6}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1383
    return-void

    .line 1347
    .end local v3           #width:I
    .end local v6           #height:I
    .end local v7           #heightMode:I
    .end local v8           #heightSize:I
    .end local v9           #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #widthMode:I
    .end local v12           #widthSize:I
    :cond_0
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    goto :goto_0

    .line 1362
    .restart local v3       #width:I
    .restart local v6       #height:I
    .restart local v7       #heightMode:I
    .restart local v8       #heightSize:I
    .restart local v9       #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11       #widthMode:I
    .restart local v12       #widthSize:I
    :sswitch_0
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1363
    goto :goto_1

    .line 1365
    :sswitch_1
    move v3, v12

    .line 1366
    goto :goto_1

    .line 1373
    :sswitch_2
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1374
    goto :goto_2

    .line 1376
    :sswitch_3
    move v6, v8

    .line 1377
    goto :goto_2

    .line 1360
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 1371
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1317
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1318
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1320
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1321
    .local v0, cdesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1322
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1307
    return-void
.end method

.method public setUp(Z)V
    .locals 2
    .parameter "isUp"

    .prologue
    .line 1302
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    return-void

    .line 1302
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
