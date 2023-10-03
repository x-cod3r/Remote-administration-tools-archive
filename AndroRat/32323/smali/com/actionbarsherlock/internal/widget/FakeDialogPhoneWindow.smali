.class public Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;
.super Landroid/widget/LinearLayout;
.source "FakeDialogPhoneWindow.java"


# instance fields
.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 14
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 19
    sget-object v1, Lcom/actionbarsherlock/R$styleable;->SherlockTheme:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x31

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 22
    const/16 v1, 0x32

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    .line 30
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 31
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_2

    const/4 v0, 0x1

    .line 33
    .local v0, isPortrait:Z
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 35
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->getMeasuredWidth()I

    move-result v5

    .line 36
    .local v5, width:I
    const/4 v1, 0x0

    .line 38
    .local v1, measure:Z
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 40
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 42
    .local v4, tv:Landroid/util/TypedValue;
    :goto_1
    iget v6, v4, Landroid/util/TypedValue;->type:I

    if-eqz v6, :cond_0

    .line 44
    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 45
    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v3, v6

    .line 52
    .local v3, min:I
    :goto_2
    if-ge v5, v3, :cond_0

    .line 53
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 54
    const/4 v1, 0x1

    .line 60
    .end local v3           #min:I
    :cond_0
    if-eqz v1, :cond_1

    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 63
    :cond_1
    return-void

    .line 31
    .end local v0           #isPortrait:Z
    .end local v1           #measure:Z
    .end local v4           #tv:Landroid/util/TypedValue;
    .end local v5           #width:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    .restart local v0       #isPortrait:Z
    .restart local v1       #measure:Z
    .restart local v5       #width:I
    :cond_3
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto :goto_1

    .line 46
    .restart local v4       #tv:Landroid/util/TypedValue;
    :cond_4
    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_5

    .line 47
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v6

    float-to-int v3, v6

    .line 48
    .restart local v3       #min:I
    goto :goto_2

    .line 49
    .end local v3           #min:I
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #min:I
    goto :goto_2
.end method
