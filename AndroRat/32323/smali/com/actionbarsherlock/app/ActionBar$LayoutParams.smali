.class public Lcom/actionbarsherlock/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field public gravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 899
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 900
    const v2, 0x10100b3

    aput v2, v0, v1

    .line 899
    sput-object v0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->ATTRS:[I

    .line 901
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 943
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;-><init>(III)V

    .line 944
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 933
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 922
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 934
    const/16 v0, 0x13

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 935
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "gravity"

    .prologue
    .line 938
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 922
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 939
    iput p3, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 940
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 925
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 922
    iput v2, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 927
    sget-object v1, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 928
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 929
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 930
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 953
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 954
    return-void
.end method

.method public constructor <init>(Lcom/actionbarsherlock/app/ActionBar$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 947
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 922
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 949
    iget v0, p1, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 950
    return-void
.end method
