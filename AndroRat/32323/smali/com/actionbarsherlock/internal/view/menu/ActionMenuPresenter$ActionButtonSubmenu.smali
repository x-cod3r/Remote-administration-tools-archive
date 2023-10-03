.class Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "subMenu"

    .prologue
    .line 648
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 649
    invoke-direct {p0, p2, p3}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 652
    invoke-virtual {p3}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getItem()Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 653
    .local v3, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v5

    if-nez v5, :cond_0

    .line 655
    #getter for: Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->access$2(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v5, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 658
    :cond_0
    iget-object v5, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    .line 660
    const/4 v4, 0x0

    .line 661
    .local v4, preserveIconSpacing:Z
    invoke-virtual {p3}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 662
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 669
    :goto_2
    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 670
    return-void

    .line 655
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #preserveIconSpacing:Z
    :cond_1
    #getter for: Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->access$2(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 663
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v4       #preserveIconSpacing:Z
    :cond_2
    invoke-virtual {p3, v2}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 664
    .local v0, childItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 665
    const/4 v4, 0x1

    .line 666
    goto :goto_2

    .line 662
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 674
    invoke-super {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 675
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    #setter for: Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->access$3(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)V

    .line 676
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 677
    return-void
.end method
