.class public Lcom/actionbarsherlock/internal/view/menu/ActionMenu;
.super Ljava/lang/Object;
.source "ActionMenu.java"

# interfaces
.implements Lcom/actionbarsherlock/view/Menu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsQwerty:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method private findItemIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 130
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 131
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 132
    .local v1, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 138
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 133
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getItemId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 164
    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mIsQwerty:Z

    .line 165
    .local v4, qwerty:Z
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 166
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 168
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 176
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 169
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    .line 170
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getAlphabeticShortcut()C

    move-result v5

    .line 172
    .local v5, shortcut:C
    :goto_1
    if-eq p1, v5, :cond_0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v5           #shortcut:C
    :cond_2
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getNumericShortcut()C

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public add(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "titleRes"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

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
    .line 61
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 7
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 65
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 67
    .local v0, item:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Lcom/actionbarsherlock/view/MenuItem;)I
    .locals 13
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 74
    iget-object v10, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 76
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 77
    .local v6, lri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 79
    .local v3, N:I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->removeGroup(I)V

    .line 83
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v3, :cond_2

    .line 98
    return v3

    .line 77
    .end local v3           #N:I
    .end local v4           #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 84
    .restart local v3       #N:I
    .restart local v4       #i:I
    :cond_2
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 85
    .local v8, ri:Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    .line 86
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_4

    move-object/from16 v10, p6

    .line 85
    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 87
    .local v9, rintent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    .line 88
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 89
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v10

    .line 91
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v10

    .line 92
    invoke-interface {v10, v9}, Lcom/actionbarsherlock/view/MenuItem;->setIntent(Landroid/content/Intent;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    .line 93
    .local v5, item:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz p8, :cond_3

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_3

    .line 94
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 83
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 86
    .end local v5           #item:Lcom/actionbarsherlock/view/MenuItem;
    .end local v9           #rintent:Landroid/content/Intent;
    :cond_4
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2
.end method

.method public addSubMenu(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public findItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "id"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 150
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 151
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 153
    .local v1, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 159
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 154
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    const/4 v3, 0x1

    goto :goto_1

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 2
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v0

    .line 185
    .local v0, index:I
    if-gez v0, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 189
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v1

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    move-result-object v0

    .line 194
    .local v0, item:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    if-nez v0, :cond_0

    .line 195
    const/4 v1, 0x0

    .line 198
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v1

    goto :goto_0
.end method

.method public removeGroup(I)V
    .locals 4
    .parameter "groupId"

    .prologue
    .line 202
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 203
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 204
    .local v1, itemCount:I
    const/4 v0, 0x0

    .line 205
    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 213
    return-void

    .line 206
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 207
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    add-int/lit8 v1, v1, -0x1

    .line 209
    goto :goto_0

    .line 210
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 5
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 221
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 222
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 224
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 231
    return-void

    .line 225
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    .line 226
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 227
    invoke-virtual {v1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->setCheckable(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 228
    invoke-virtual {v1, p3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->setExclusiveCheckable(Z)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    .line 224
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setGroupEnabled(IZ)V
    .locals 5
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 234
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 235
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 237
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 243
    return-void

    .line 238
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    .line 239
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 240
    invoke-virtual {v1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 237
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 246
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 247
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 249
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 255
    return-void

    .line 250
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    .line 251
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 252
    invoke-virtual {v1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 249
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setQwertyMode(Z)V
    .locals 0
    .parameter "isQwerty"

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mIsQwerty:Z

    .line 259
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
