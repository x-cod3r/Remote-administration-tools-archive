.class final Lcom/actionbarsherlock/internal/widget/IcsView;
.super Ljava/lang/Object;
.source "IcsView.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMeasuredStateInt(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    .line 17
    or-int/2addr v0, v1

    return v0
.end method
