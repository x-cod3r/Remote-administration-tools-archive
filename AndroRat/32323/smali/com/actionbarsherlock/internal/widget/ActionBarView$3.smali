.class Lcom/actionbarsherlock/internal/widget/ActionBarView$3;
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
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$3;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$3;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mWindowCallback:Lcom/actionbarsherlock/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$3;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    #getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogoNavItem:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$2(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/actionbarsherlock/view/Window$Callback;->onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z

    .line 168
    return-void
.end method
