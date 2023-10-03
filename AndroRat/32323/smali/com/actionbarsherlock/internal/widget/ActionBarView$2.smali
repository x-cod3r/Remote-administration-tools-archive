.class Lcom/actionbarsherlock/internal/widget/ActionBarView$2;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$2;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$2;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$1(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object v1

    iget-object v0, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 159
    .local v0, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 162
    :cond_0
    return-void
.end method
