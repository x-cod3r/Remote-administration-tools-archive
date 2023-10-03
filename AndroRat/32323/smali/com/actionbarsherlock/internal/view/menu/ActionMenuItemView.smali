.class public Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;
.implements Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;


# instance fields
.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mImageButton:Landroid/widget/ImageButton;

.field private mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMinWidth:I

.field private mTextButton:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mListeners:Ljava/util/Set;

    .line 75
    sget v1, Lcom/actionbarsherlock/R$bool;->abs__config_allowActionMenuItemTextWithIcon:I

    .line 74
    invoke-static {p1, v1}, Lcom/actionbarsherlock/internal/ResourcesCompat;->getResources_getBoolean(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 77
    sget-object v1, Lcom/actionbarsherlock/R$styleable;->SherlockActionMenuItemView:[I

    .line 76
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    return-void
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 175
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mTextButton:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 176
    .local v0, visible:Z
    :goto_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 179
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mTextButton:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setVisibility(I)V

    .line 180
    return-void

    .end local v0           #visible:Z
    :cond_2
    move v0, v2

    .line 175
    goto :goto_0

    .line 179
    .restart local v0       #visible:Z
    :cond_3
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public addOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mTextButton:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 128
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 132
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 133
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 134
    return-void

    .line 132
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 96
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    return-void

    .line 96
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;

    .line 97
    .local v0, listener:Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;
    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    .line 147
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 104
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    return-void

    .line 104
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;

    .line 105
    .local v0, listener:Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;
    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/actionbarsherlock/R$id;->abs__imageButton:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    .line 113
    sget v0, Lcom/actionbarsherlock/R$id;->abs__textButton:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mTextButton:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    .line 114
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mTextButton:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    invoke-virtual {p0, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 119
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 276
    :goto_0
    return v8

    .line 255
    :cond_0
    const/4 v10, 0x2

    new-array v5, v10, [I

    .line 256
    .local v5, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 257
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 258
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 260
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 261
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v7

    .line 262
    .local v7, width:I
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 263
    .local v3, height:I
    aget v10, v5, v9

    div-int/lit8 v11, v3, 0x2

    add-int v4, v10, v11

    .line 264
    .local v4, midy:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 266
    .local v6, screenWidth:I
    iget-object v10, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v1, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 267
    .local v0, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 269
    const/16 v10, 0x35

    .line 270
    aget v8, v5, v8

    sub-int v8, v6, v8

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v8, v11

    .line 269
    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 275
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 276
    goto :goto_0

    .line 273
    :cond_1
    const/16 v10, 0x51

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 281
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 284
    .local v3, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 285
    .local v1, specSize:I
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v0

    .line 286
    .local v0, oldMeasuredWidth:I
    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_1

    iget v4, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 289
    .local v2, targetWidth:I
    :goto_0
    if-eq v3, v5, :cond_0

    iget v4, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v4, :cond_0

    if-ge v0, v2, :cond_0

    .line 291
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, v4, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 294
    :cond_0
    return-void

    .line 287
    .end local v2           #targetWidth:I
    :cond_1
    iget v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 218
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 219
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 222
    .local v0, cdesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public removeOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 159
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 163
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mTextButton:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setEnabled(Z)V

    .line 141
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .parameter "expandedFormat"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 168
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 172
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 190
    :goto_0
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 191
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mImageButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setItemInvoker(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "invoker"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 151
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 199
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 204
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mTextButton:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setTextCompat(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 208
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method
