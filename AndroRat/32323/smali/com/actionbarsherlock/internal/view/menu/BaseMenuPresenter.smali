.class public abstract Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;


# static fields
.field private static final IS_HONEYCOMB:Z


# instance fields
.field private mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->IS_HONEYCOMB:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "menuLayoutRes"
    .parameter "itemLayoutRes"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 58
    iput p2, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 59
    iput p3, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 60
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .parameter "itemView"
    .parameter "childIndex"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .local v0, currentParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 132
    return-void
.end method

.method public abstract bindItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;
    .locals 3
    .parameter "parent"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1
    .parameter "parent"
    .parameter "childIndex"

    .prologue
    .line 141
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "item"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 171
    instance-of v1, p2, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 172
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    .line 176
    .local v0, itemView:Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->bindItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)V

    .line 177
    check-cast v0, Landroid/view/View;

    .end local v0           #itemView:Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;
    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0, p3}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    move-result-object v0

    .restart local v0       #itemView:Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;
    .locals 3
    .parameter "root"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    .line 73
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuView;->initialize(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 67
    return-void
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    .line 203
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    .line 147
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 229
    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mId:I

    .line 230
    return-void
.end method

.method public shouldIncludeItem(ILcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "childIndex"
    .parameter "item"

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10
    .parameter "cleared"

    .prologue
    .line 84
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 85
    .local v7, parent:Landroid/view/ViewGroup;
    if-nez v7, :cond_1

    .line 118
    :cond_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 88
    .local v0, childIndex:I
    iget-object v9, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_2

    .line 89
    iget-object v9, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 90
    iget-object v9, p0, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 91
    .local v8, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 92
    .local v4, itemCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_3

    .line 113
    .end local v2           #i:I
    .end local v4           #itemCount:I
    .end local v8           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 114
    invoke-virtual {p0, v7, v0}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    .restart local v2       #i:I
    .restart local v4       #itemCount:I
    .restart local v8       #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_3
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 94
    .local v3, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {p0, v0, v3}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 95
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, convertView:Landroid/view/View;
    instance-of v9, v1, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    if-eqz v9, :cond_7

    move-object v9, v1

    .line 97
    check-cast v9, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    invoke-interface {v9}, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v6

    .line 98
    .local v6, oldItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    :goto_2
    invoke-virtual {p0, v3, v1, v7}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, itemView:Landroid/view/View;
    if-eq v3, v6, :cond_4

    .line 101
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 102
    sget-boolean v9, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->IS_HONEYCOMB:Z

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 104
    :cond_4
    if-eq v5, v1, :cond_5

    .line 105
    invoke-virtual {p0, v5, v0}, Lcom/actionbarsherlock/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 107
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 92
    .end local v1           #convertView:Landroid/view/View;
    .end local v5           #itemView:Landroid/view/View;
    .end local v6           #oldItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .restart local v1       #convertView:Landroid/view/View;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2
.end method
