.class Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter
    .parameter "menu"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 311
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 312
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;)V

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 313
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 314
    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 354
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$2(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 355
    .local v1, expandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    .line 356
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$2(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 357
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 358
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 366
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    const/4 v5, -0x1

    iput v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 367
    :goto_1
    return-void

    .line 359
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 360
    .local v3, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_2

    .line 361
    iput v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1

    .line 358
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 317
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$0(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 319
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 320
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 322
    :goto_1
    return v1

    .line 318
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 322
    .restart local v0       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .locals 2
    .parameter "position"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$0(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 328
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 329
    add-int/lit8 p1, p1, 0x1

    .line 331
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 327
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 337
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 341
    if-nez p2, :cond_0

    .line 342
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$1(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 345
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    .line 346
    .local v0, itemView:Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    iget-boolean v1, v1, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 347
    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 349
    :cond_1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;->initialize(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;I)V

    .line 350
    return-object p2
.end method
