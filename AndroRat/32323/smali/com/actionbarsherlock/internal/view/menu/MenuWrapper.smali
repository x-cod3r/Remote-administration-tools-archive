.class public Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;
.super Ljava/lang/Object;
.source "MenuWrapper.java"

# interfaces
.implements Lcom/actionbarsherlock/view/Menu;


# instance fields
.field private final mNativeMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Lcom/actionbarsherlock/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Landroid/view/Menu;)V
    .locals 1
    .parameter "nativeMenu"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMap:Ljava/util/WeakHashMap;

    .line 19
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    .line 20
    return-void
.end method

.method private addInternal(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "nativeItem"

    .prologue
    .line 27
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    .line 28
    .local v0, item:Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-object v0
.end method

.method private addInternal(Landroid/view/SubMenu;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 4
    .parameter "nativeSubMenu"

    .prologue
    .line 53
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;

    invoke-direct {v2, p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;-><init>(Landroid/view/SubMenu;)V

    .line 54
    .local v2, subMenu:Lcom/actionbarsherlock/view/SubMenu;
    invoke-interface {p1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 55
    .local v1, nativeItem:Landroid/view/MenuItem;
    invoke-interface {v2}, Lcom/actionbarsherlock/view/SubMenu;->getItem()Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 56
    .local v0, item:Lcom/actionbarsherlock/view/MenuItem;
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-object v2
.end method


# virtual methods
.method public add(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->addInternal(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->addInternal(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->addInternal(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->addInternal(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Lcom/actionbarsherlock/view/MenuItem;)I
    .locals 23
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 83
    if-eqz p8, :cond_1

    .line 84
    move-object/from16 v0, p8

    array-length v2, v0

    new-array v10, v2, [Landroid/view/MenuItem;

    .line 85
    .local v10, nativeOutItems:[Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v22

    .line 86
    .local v22, result:I
    const/16 v20, 0x0

    .local v20, i:I
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v21, v0

    .local v21, length:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 92
    .end local v10           #nativeOutItems:[Landroid/view/MenuItem;
    .end local v20           #i:I
    .end local v21           #length:I
    :goto_1
    return v22

    .line 87
    .restart local v10       #nativeOutItems:[Landroid/view/MenuItem;
    .restart local v20       #i:I
    .restart local v21       #length:I
    :cond_0
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    aget-object v3, v10, v20

    invoke-direct {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    aput-object v2, p8, v20

    .line 86
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 90
    .end local v10           #nativeOutItems:[Landroid/view/MenuItem;
    .end local v20           #i:I
    .end local v21           #length:I
    .end local v22           #result:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    const/16 v19, 0x0

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move/from16 v18, p7

    invoke-interface/range {v11 .. v19}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v22

    .restart local v22       #result:I
    goto :goto_1
.end method

.method public addSubMenu(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->addInternal(Landroid/view/SubMenu;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->addInternal(Landroid/view/SubMenu;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->addInternal(Landroid/view/SubMenu;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->addInternal(Landroid/view/SubMenu;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 108
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 109
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 164
    return-void
.end method

.method public findItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "id"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 134
    .local v0, nativeItem:Landroid/view/MenuItem;
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->findItem(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    return-object v1
.end method

.method public findItem(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "nativeItem"

    .prologue
    .line 138
    if-nez p1, :cond_1

    .line 139
    const/4 v0, 0x0

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/MenuItem;

    .line 143
    .local v0, wrapped:Lcom/actionbarsherlock/view/MenuItem;
    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->addInternal(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "index"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v1, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 158
    .local v0, nativeItem:Landroid/view/MenuItem;
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->findItem(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    return-object v1
.end method

.method public hasVisibleItems()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    move-result v0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public removeGroup(I)V
    .locals 1
    .parameter "groupId"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeGroup(I)V

    .line 103
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    .line 98
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 1
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 114
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 1
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 124
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 1
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 119
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter "isQwerty"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 184
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    return v0
.end method

.method public unwrap()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->mNativeMenu:Landroid/view/Menu;

    return-object v0
.end method
