.class public Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
.super Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Lcom/actionbarsherlock/view/SubMenu;


# instance fields
.field private mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

.field private mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .parameter "context"
    .parameter "parentMenu"
    .parameter "item"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 39
    iput-object p3, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 40
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    .line 129
    .local v0, itemId:I
    :goto_0
    if-nez v0, :cond_1

    .line 130
    const/4 v1, 0x0

    .line 132
    :goto_1
    return-object v1

    .line 128
    .end local v0           #itemId:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    .restart local v0       #itemId:I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getItem()Lcom/actionbarsherlock/view/MenuItem;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Lcom/actionbarsherlock/view/Menu;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 73
    return-void
.end method

.method public setHeaderIcon(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "icon"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "view"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 93
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "icon"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;

    .line 88
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter "isQwerty"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 45
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .parameter "shortcutsVisible"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 55
    return-void
.end method
