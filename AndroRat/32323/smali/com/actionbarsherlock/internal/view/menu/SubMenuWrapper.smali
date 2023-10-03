.class public Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;
.super Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;
.source "SubMenuWrapper.java"

# interfaces
.implements Lcom/actionbarsherlock/view/SubMenu;


# instance fields
.field private mItem:Lcom/actionbarsherlock/view/MenuItem;

.field private final mNativeSubMenu:Landroid/view/SubMenu;


# direct methods
.method public constructor <init>(Landroid/view/SubMenu;)V
    .locals 1
    .parameter "nativeSubMenu"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 14
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    .line 15
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->clearHeader()V

    .line 51
    return-void
.end method

.method public getItem()Lcom/actionbarsherlock/view/MenuItem;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method public setHeaderIcon(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    .line 33
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "icon"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 39
    return-object p0
.end method

.method public setHeaderTitle(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    .line 21
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 27
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "view"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    .line 45
    return-object p0
.end method

.method public setIcon(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 56
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "icon"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;->mNativeSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 62
    return-object p0
.end method
