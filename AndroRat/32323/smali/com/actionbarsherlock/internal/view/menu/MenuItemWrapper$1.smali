.class Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper$1;
.super Ljava/lang/Object;
.source "MenuItemWrapper.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper$1;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "menuItem"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper$1;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;->mActionExpandListener:Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;->access$0(Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;)Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper$1;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;->mActionExpandListener:Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;->access$0(Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;)Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper$1;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "menuItem"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper$1;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;->mActionExpandListener:Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;->access$0(Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;)Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper$1;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;->mActionExpandListener:Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;->access$0(Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;)Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper$1;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
