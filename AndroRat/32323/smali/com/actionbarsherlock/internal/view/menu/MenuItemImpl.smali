.class public final Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Lcom/actionbarsherlock/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .parameter "menu"
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "ordering"
    .parameter "title"
    .parameter "showAsAction"

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 71
    const/16 v0, 0x10

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 79
    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 84
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 128
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 129
    iput p3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mId:I

    .line 130
    iput p2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 131
    iput p4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 132
    iput p5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 133
    iput-object p6, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 134
    iput p7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 135
    return-void
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V

    .line 502
    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 613
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return v0

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 618
    const/4 v0, 0x1

    goto :goto_0

    .line 621
    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    .line 622
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 599
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return v0

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    .line 604
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionProvider:Lcom/actionbarsherlock/view/ActionProvider;

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 576
    :goto_0
    return-object v0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionProvider:Lcom/actionbarsherlock/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionProvider:Lcom/actionbarsherlock/view/ActionProvider;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 574
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 576
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 225
    iget-char v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 387
    :goto_0
    return-object v0

    .line 383
    :cond_0
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 195
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 239
    iget-char v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 276
    .local v1, shortcut:C
    if-nez v1, :cond_0

    .line 277
    const-string v2, ""

    .line 300
    :goto_0
    return-object v2

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, sb:Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 284
    :sswitch_0
    sget-object v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    :sswitch_1
    sget-object v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 292
    :sswitch_2
    sget-object v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "itemView"

    .prologue
    .line 340
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 143
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mClickListener:Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mClickListener:Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionProvider:Lcom/actionbarsherlock/view/ActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionProvider:Lcom/actionbarsherlock/view/ActionProvider;

    invoke-virtual {v2}, Lcom/actionbarsherlock/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    .prologue
    .line 512
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 409
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 431
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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
    .line 174
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

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
    .line 455
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestsActionButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 516
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 2

    .prologue
    .line 520
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Lcom/actionbarsherlock/view/ActionProvider;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "actionProvider"

    .prologue
    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 586
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionProvider:Lcom/actionbarsherlock/view/ActionProvider;

    .line 587
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 588
    return-object p0
.end method

.method public setActionView(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 4
    .parameter "resId"

    .prologue
    .line 563
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 564
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 565
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 566
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "view"

    .prologue
    .line 553
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mActionProvider:Lcom/actionbarsherlock/view/ActionProvider;

    .line 555
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 556
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V

    .line 559
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2
    .parameter "isExpanded"

    .prologue
    .line 640
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 641
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 642
    return-void
.end method

.method public setAlphabeticShortcut(C)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "alphaChar"

    .prologue
    .line 229
    iget-char v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 235
    :goto_0
    return-object p0

    .line 231
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 233
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "callback"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 221
    return-object p0
.end method

.method public setCheckable(Z)Lcom/actionbarsherlock/view/MenuItem;
    .locals 4
    .parameter "checkable"

    .prologue
    const/4 v2, 0x0

    .line 413
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 414
    .local v0, oldFlags:I
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 415
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 419
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 414
    goto :goto_0
.end method

.method public setChecked(Z)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "checked"

    .prologue
    .line 435
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Lcom/actionbarsherlock/view/MenuItem;)V

    .line 443
    :goto_0
    return-object p0

    .line 440
    :cond_0
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    .line 447
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 448
    .local v0, oldFlags:I
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 449
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 452
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 448
    goto :goto_0
.end method

.method public setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "enabled"

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 186
    return-object p0

    .line 181
    :cond_0
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .parameter "exclusive"

    .prologue
    .line 423
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 424
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "iconResId"

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 403
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 405
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 391
    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 392
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 393
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 395
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "intent"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 212
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .parameter "isActionButton"

    .prologue
    .line 524
    if-eqz p1, :cond_0

    .line 525
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menuInfo"

    .prologue
    .line 493
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 494
    return-void
.end method

.method public setNumericShortcut(C)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "numericChar"

    .prologue
    .line 243
    iget-char v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 249
    :goto_0
    return-object p0

    .line 245
    :cond_0
    iput-char p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 247
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "listener"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;

    .line 632
    return-object p0
.end method

.method public setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mClickListener:Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;

    .line 484
    return-object p0
.end method

.method public setShortcut(CC)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 253
    iput-char p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 254
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 256
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 258
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .parameter "actionEnum"

    .prologue
    .line 536
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :pswitch_0
    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 549
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V

    .line 550
    return-void

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 0
    .parameter "actionEnum"

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 594
    return-object p0
.end method

.method setSubMenu(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)V
    .locals 1
    .parameter "subMenu"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .line 324
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;

    .line 325
    return-void
.end method

.method public setTitle(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "title"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 348
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 350
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;

    .line 354
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "title"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 369
    if-nez p1, :cond_0

    .line 370
    iget-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 375
    return-object p0
.end method

.method public setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "shown"

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V

    .line 479
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .parameter "shown"

    .prologue
    const/4 v2, 0x0

    .line 468
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 469
    .local v0, oldFlags:I
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 470
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 469
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .prologue
    .line 532
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
