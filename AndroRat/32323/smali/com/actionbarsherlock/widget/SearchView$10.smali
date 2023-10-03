.class Lcom/actionbarsherlock/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$10;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$10;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$21(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$10;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$21(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView$10;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 296
    :cond_0
    return-void
.end method
