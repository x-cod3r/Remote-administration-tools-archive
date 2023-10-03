.class public Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I

.field public expandable:Z

.field public expanded:Z

.field public extraPixels:I

.field public isOverflowButton:Z

.field public preventEdgeOffset:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 566
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 568
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "isOverflowButton"

    .prologue
    .line 571
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 572
    iput-boolean p3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 573
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 557
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 558
    return-void
.end method

.method public constructor <init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 561
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 562
    iget-boolean v0, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 563
    return-void
.end method
