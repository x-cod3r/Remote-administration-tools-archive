.class public Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8


# instance fields
.field private mClickListener:Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 1
    .parameter "context"
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "ordering"
    .parameter "title"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x10

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 62
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 63
    iput p3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mId:I

    .line 64
    iput p2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mGroup:I

    .line 66
    iput p5, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mOrdering:I

    .line 67
    iput-object p6, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 68
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 71
    iget-char v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 95
    iget-char v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mOrdering:I

    return v0
.end method

.method public getSubMenu()Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mClickListener:Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mClickListener:Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    return v0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Lcom/actionbarsherlock/view/ActionProvider;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "actionProvider"

    .prologue
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "resId"

    .prologue
    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "actionView"

    .prologue
    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "alphaChar"

    .prologue
    .line 135
    iput-char p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 136
    return-object p0
.end method

.method public setCheckable(Z)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "checkable"

    .prologue
    .line 140
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 141
    return-object p0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "checked"

    .prologue
    .line 150
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 151
    return-object p0

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "enabled"

    .prologue
    .line 155
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 156
    return-object p0

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    .locals 2
    .parameter "exclusive"

    .prologue
    .line 145
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 146
    return-object p0

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "icon"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "intent"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 173
    return-object p0
.end method

.method public setNumericShortcut(C)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "numericChar"

    .prologue
    .line 177
    iput-char p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 178
    return-object p0
.end method

.method public setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "listener"

    .prologue
    .line 276
    return-object p0
.end method

.method public setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "menuItemClickListener"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mClickListener:Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;

    .line 183
    return-object p0
.end method

.method public setShortcut(CC)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 187
    iput-char p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 188
    iput-char p2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 189
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .parameter "show"

    .prologue
    .line 227
    return-void
.end method

.method public setShowAsActionFlags(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "actionEnum"

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 255
    return-object p0
.end method

.method public setTitle(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 199
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "title"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 194
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "title"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 204
    return-object p0
.end method

.method public setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "visible"

    .prologue
    .line 208
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 209
    return-object p0

    .line 208
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
