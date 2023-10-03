.class Lcom/actionbarsherlock/widget/SearchView$12;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$12;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$12;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->adjustDropDownSizeAndPosition()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$22(Lcom/actionbarsherlock/widget/SearchView;)V

    .line 350
    return-void
.end method
