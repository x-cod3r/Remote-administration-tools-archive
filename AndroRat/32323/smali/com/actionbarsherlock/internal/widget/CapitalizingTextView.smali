.class public Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;
.super Landroid/widget/TextView;
.source "CapitalizingTextView.java"


# static fields
.field private static final IS_GINGERBREAD:Z

.field private static final R_styleable_TextView:[I

.field private static final R_styleable_TextView_textAllCaps:I

.field private static final SANS_ICE_CREAM:Z


# instance fields
.field private mAllCaps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->SANS_ICE_CREAM:Z

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->IS_GINGERBREAD:Z

    .line 15
    new-array v0, v1, [I

    .line 16
    const v1, 0x101038c

    aput v1, v0, v2

    .line 15
    sput-object v0, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->R_styleable_TextView:[I

    .line 18
    return-void

    :cond_0
    move v0, v2

    .line 12
    goto :goto_0

    :cond_1
    move v0, v2

    .line 13
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget-object v1, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->R_styleable_TextView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->mAllCaps:Z

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method


# virtual methods
.method public setTextCompat(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 35
    sget-boolean v1, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->SANS_ICE_CREAM:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->mAllCaps:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 36
    sget-boolean v1, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->IS_GINGERBREAD:Z

    if-eqz v1, :cond_0

    .line 38
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/NoSuchFieldError;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44
    .end local v0           #e:Ljava/lang/NoSuchFieldError;
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/CapitalizingTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
