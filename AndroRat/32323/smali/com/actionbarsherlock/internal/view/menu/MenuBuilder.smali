.class public Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Lcom/actionbarsherlock/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;,
        Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 60
    aput v2, v0, v1

    .line 61
    aput v5, v0, v2

    .line 62
    const/4 v1, 0x5

    aput v1, v0, v3

    .line 63
    aput v4, v0, v4

    .line 64
    aput v3, v0, v5

    .line 59
    sput-object v0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 145
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 146
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 148
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 150
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 190
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 196
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 200
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 202
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 203
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 8
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 390
    invoke-static {p3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 392
    .local v5, ordering:I
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 393
    iget v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 392
    invoke-direct/range {v0 .. v7}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;-><init>(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 395
    .local v0, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 401
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 403
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .parameter "cleared"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 242
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    .line 242
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 243
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 244
    .local v0, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v0, :cond_2

    .line 245
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_2
    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 293
    const-string v5, "android:menu:presenters"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 295
    .local v3, presenterStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    :cond_0
    return-void

    .line 297
    :cond_1
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 298
    .local v4, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 299
    .local v2, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_3

    .line 300
    iget-object v6, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_3
    invoke-interface {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->getId()I

    move-result v0

    .line 303
    .local v0, id:I
    if-lez v0, :cond_2

    .line 304
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 305
    .local v1, parcel:Landroid/os/Parcelable;
    if-eqz v1, :cond_2

    .line 306
    invoke-interface {v2, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 270
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 274
    .local v2, presenterStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 289
    const-string v5, "android:menu:presenters"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 275
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 276
    .local v1, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_3

    .line 277
    iget-object v6, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    :cond_3
    invoke-interface {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->getId()I

    move-result v0

    .line 280
    .local v0, id:I
    if-lez v0, :cond_1

    .line 281
    invoke-interface {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    .line 282
    .local v4, state:Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    .line 283
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private dispatchSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .parameter "subMenu"

    .prologue
    .line 254
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 266
    :cond_0
    return v2

    .line 256
    :cond_1
    const/4 v2, 0x0

    .line 258
    .local v2, result:Z
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 259
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 260
    .local v0, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v0, :cond_3

    .line 261
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_3
    if-nez v2, :cond_2

    .line 263
    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z

    move-result v2

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .parameter
    .parameter "ordering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 751
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 758
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 752
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 753
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_1

    .line 754
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    .line 751
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static getOrdering(I)I
    .locals 3
    .parameter "categoryOrder"

    .prologue
    .line 684
    const/high16 v1, -0x1

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 686
    .local v0, index:I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 687
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 690
    :cond_1
    sget-object v1, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .parameter "index"
    .parameter "updateChildrenOnMenuViews"

    .prologue
    .line 502
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 506
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .parameter "titleRes"
    .parameter "title"
    .parameter "iconRes"
    .parameter "icon"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1095
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1097
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1098
    iput-object p5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1101
    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1102
    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1121
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1122
    return-void

    .line 1104
    :cond_0
    if-lez p1, :cond_3

    .line 1105
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1110
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1111
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1117
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1106
    :cond_3
    if-eqz p2, :cond_1

    .line 1107
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1112
    :cond_4
    if-eqz p4, :cond_2

    .line 1113
    iput-object p4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .parameter "shortcutsVisible"

    .prologue
    const/4 v0, 0x1

    .line 716
    if-eqz p1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    .line 718
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 719
    sget v2, Lcom/actionbarsherlock/R$bool;->abs__config_showMenuShortcutsWhenKeyboardPresent:I

    .line 718
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 719
    if-eqz v1, :cond_0

    .line 716
    :goto_0
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 720
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 415
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Lcom/actionbarsherlock/view/MenuItem;)I
    .locals 13
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 444
    iget-object v10, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 446
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 447
    .local v6, lri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 449
    .local v3, N:I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 450
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 453
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v3, :cond_2

    .line 468
    return v3

    .line 447
    .end local v3           #N:I
    .end local v4           #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 454
    .restart local v3       #N:I
    .restart local v4       #i:I
    :cond_2
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 455
    .local v8, ri:Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    .line 456
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_4

    move-object/from16 v10, p6

    .line 455
    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 457
    .local v9, rintent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    .line 458
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 459
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 460
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v10

    .line 461
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v10

    .line 462
    invoke-interface {v10, v9}, Lcom/actionbarsherlock/view/MenuItem;->setIntent(Landroid/content/Intent;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    .line 463
    .local v5, item:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz p8, :cond_3

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_3

    .line 464
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 453
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 456
    .end local v5           #item:Lcom/actionbarsherlock/view/MenuItem;
    .end local v9           #rintent:Landroid/content/Intent;
    :cond_4
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2
.end method

.method public addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V
    .locals 2
    .parameter "presenter"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 221
    return-void
.end method

.method public addSubMenu(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 427
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 3
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 431
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 432
    .local v0, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V

    .line 433
    .local v1, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)V

    .line 435
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public bindNativeOverflow(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;Ljava/util/HashMap;)Z
    .locals 15
    .parameter "menu"
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1272
    .local p3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/MenuItem;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 1273
    .local v5, nonActionItems:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 1274
    :cond_0
    const/4 v8, 0x0

    .line 1333
    :cond_1
    return v8

    .line 1277
    :cond_2
    const/4 v8, 0x0

    .line 1278
    .local v8, visible:Z
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    .line 1279
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 1280
    .local v4, nonActionItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1283
    const/4 v8, 0x1

    .line 1286
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1287
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v10

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v11

    .line 1288
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v12

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    .line 1287
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 1290
    .local v2, nativeSub:Landroid/view/SubMenu;
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .line 1291
    .local v7, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1312
    invoke-interface {v2}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 1317
    .end local v2           #nativeSub:Landroid/view/SubMenu;
    .end local v7           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    .local v1, nativeItem:Landroid/view/MenuItem;
    :goto_2
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1318
    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1319
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1320
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1321
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 1322
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1323
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1324
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1325
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1327
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1328
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 1331
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1291
    .end local v1           #nativeItem:Landroid/view/MenuItem;
    .restart local v2       #nativeSub:Landroid/view/SubMenu;
    .restart local v7       #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 1292
    .local v6, subItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v11

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v12

    .line 1293
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v13

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    .line 1292
    invoke-interface {v2, v11, v12, v13, v14}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 1295
    .local v3, nativeSubItem:Landroid/view/MenuItem;
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1296
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1297
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1298
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1299
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 1300
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1301
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1302
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1303
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1305
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1306
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-interface {v2, v11, v12, v13}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 1309
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1314
    .end local v2           #nativeSub:Landroid/view/SubMenu;
    .end local v3           #nativeSubItem:Landroid/view/MenuItem;
    .end local v6           #subItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .end local v7           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_7
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v10

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v11

    .line 1315
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v12

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    .line 1314
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1       #nativeItem:Landroid/view/MenuItem;
    goto/16 :goto_2
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 748
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 528
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 529
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 514
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 515
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->clear()V

    .line 516
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 517
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 518
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 519
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 520
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1086
    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1087
    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1088
    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1090
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1091
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    .line 930
    return-void
.end method

.method final close(Z)V
    .locals 4
    .parameter "allMenusAreClosing"

    .prologue
    .line 913
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v2, :cond_0

    .line 925
    :goto_0
    return-void

    .line 915
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 916
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 924
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_0

    .line 916
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 917
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 918
    .local v0, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v0, :cond_2

    .line 919
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 921
    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    goto :goto_1
.end method

.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 1246
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eq v3, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1264
    :cond_1
    :goto_0
    return v0

    .line 1248
    :cond_2
    const/4 v0, 0x0

    .line 1250
    .local v0, collapsed:Z
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1251
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1259
    :goto_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1261
    if-eqz v0, :cond_1

    .line 1262
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 1251
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1252
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 1253
    .local v1, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_5

    .line 1254
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1255
    :cond_5
    invoke-interface {v1, p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2
.end method

.method dispatchMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 1224
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 1242
    :cond_0
    :goto_0
    return v0

    .line 1226
    :cond_1
    const/4 v0, 0x0

    .line 1228
    .local v0, expanded:Z
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1229
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1237
    :goto_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1239
    if-eqz v0, :cond_0

    .line 1240
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 1229
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1230
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 1231
    .local v1, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_4

    .line 1232
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1233
    :cond_4
    invoke-interface {v1, p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2
.end method

.method public findGroupIndex(I)I
    .locals 1
    .parameter "group"

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .parameter "group"
    .parameter "start"

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 638
    .local v2, size:I
    if-gez p2, :cond_0

    .line 639
    const/4 p2, 0x0

    .line 642
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 650
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_1
    return v0

    .line 643
    .restart local v0       #i:I
    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 645
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 5
    .parameter "id"

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 602
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 615
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    .line 603
    :cond_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 604
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 606
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 607
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/actionbarsherlock/view/SubMenu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 609
    .local v2, possibleItem:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz v2, :cond_2

    move-object v1, v2

    .line 610
    goto :goto_1

    .line 602
    .end local v2           #possibleItem:Lcom/actionbarsherlock/view/MenuItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findItemIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 621
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 628
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 622
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 623
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 829
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 830
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 831
    invoke-virtual {p0, v2, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 833
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-object v8

    .line 837
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 838
    .local v3, metaState:I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 840
    .local v4, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 843
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 844
    .local v7, size:I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 845
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 848
    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 851
    .local v5, qwerty:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 852
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 853
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 855
    .local v6, shortcutChar:C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    .line 856
    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    .line 857
    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    .line 858
    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    .line 859
    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    .line 860
    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 861
    goto :goto_0

    .line 854
    .end local v6           #shortcutChar:C
    :cond_6
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 851
    .restart local v6       #shortcutChar:C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .parameter
    .parameter "keyCode"
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    const/16 v10, 0x43

    .line 785
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 786
    .local v6, qwerty:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 787
    .local v4, metaState:I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 789
    .local v5, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 791
    .local v2, isKeyCodeMapped:Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 813
    :cond_0
    return-void

    .line 796
    :cond_1
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 797
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 798
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 799
    .local v3, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 800
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 802
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 803
    .local v7, shortcutChar:C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    .line 804
    if-eqz v7, :cond_4

    .line 805
    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    .line 806
    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    .line 807
    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    .line 808
    if-ne p2, v10, :cond_4

    .line 809
    :cond_3
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 810
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 802
    .end local v7           #shortcutChar:C
    :cond_5
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 9

    .prologue
    .line 1037
    iget-boolean v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v7, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1042
    :cond_0
    const/4 v0, 0x0

    .line 1043
    .local v0, flagged:Z
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1052
    if-eqz v0, :cond_5

    .line 1053
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1054
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1055
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 1056
    .local v6, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1057
    .local v3, itemsSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-lt v1, v3, :cond_3

    .line 1072
    .end local v1           #i:I
    .end local v3           #itemsSize:I
    .end local v6           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :goto_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0

    .line 1043
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1044
    .local v5, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 1045
    .local v4, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v4, :cond_2

    .line 1046
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1048
    :cond_2
    invoke-interface {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 1058
    .end local v4           #presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    .end local v5           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    .restart local v1       #i:I
    .restart local v3       #itemsSize:I
    .restart local v6       #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_3
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 1059
    .local v2, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1060
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1062
    :cond_4
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1068
    .end local v1           #i:I
    .end local v2           #item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .end local v3           #itemsSize:I
    .end local v6           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_5
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1069
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1070
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1077
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1082
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1201
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 994
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1009
    :goto_0
    return-object v3

    .line 997
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 999
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1001
    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_1

    .line 1006
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1007
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1009
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 1002
    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 1003
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 590
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 597
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 591
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 592
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 593
    const/4 v3, 0x1

    goto :goto_1

    .line 590
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 663
    invoke-virtual {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 989
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 990
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 991
    return-void
.end method

.method onItemVisibleChanged(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 979
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 980
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 981
    return-void
.end method

.method onItemsChanged(Z)V
    .locals 2
    .parameter "structureChanged"

    .prologue
    const/4 v1, 0x1

    .line 940
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 941
    if-eqz p1, :cond_0

    .line 942
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 943
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 946
    :cond_0
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 950
    :goto_0
    return-void

    .line 948
    :cond_1
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 869
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z
    .locals 7
    .parameter "item"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 873
    move-object v1, p1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 875
    .local v1, itemImpl:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    .line 900
    :cond_1
    :goto_0
    return v0

    .line 879
    :cond_2
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v0

    .line 881
    .local v0, invoked:Z
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 882
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v4

    or-int/2addr v0, v4

    .line 883
    if-eqz v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 884
    :cond_3
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 885
    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    .line 887
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .line 888
    .local v3, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v2

    .line 889
    .local v2, provider:Lcom/actionbarsherlock/view/ActionProvider;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/actionbarsherlock/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 890
    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/view/ActionProvider;->onPrepareSubMenu(Lcom/actionbarsherlock/view/SubMenu;)V

    .line 892
    :cond_4
    invoke-direct {p0, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 893
    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 895
    .end local v2           #provider:Lcom/actionbarsherlock/view/ActionProvider;
    .end local v3           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_5
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_1

    .line 896
    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 762
    invoke-virtual {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 764
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 766
    .local v0, handled:Z
    if-eqz v1, :cond_0

    .line 767
    invoke-virtual {p0, v1, p3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    move-result v0

    .line 770
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 771
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    .line 774
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .parameter "group"

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 478
    .local v0, i:I
    if-ltz v0, :cond_1

    .line 479
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 480
    .local v1, maxRemovable:I
    const/4 v2, 0x0

    .local v2, numRemoved:I
    move v3, v2

    .line 481
    .end local v2           #numRemoved:I
    .local v3, numRemoved:I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-eq v4, p1, :cond_2

    .line 487
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 489
    .end local v1           #maxRemovable:I
    .end local v2           #numRemoved:I
    :cond_1
    return-void

    .line 483
    .restart local v1       #maxRemovable:I
    .restart local v2       #numRemoved:I
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2           #numRemoved:I
    .restart local v3       #numRemoved:I
    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 473
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 510
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 511
    return-void
.end method

.method public removeMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V
    .locals 4
    .parameter "presenter"

    .prologue
    .line 230
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    return-void

    .line 230
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 231
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 232
    .local v0, item:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    .line 233
    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .parameter "states"

    .prologue
    .line 349
    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    .line 353
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 356
    .local v7, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 357
    .local v3, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_2

    .line 369
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 370
    .local v0, expandedId:I
    if-lez v0, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 372
    .local v4, itemToExpand:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz v4, :cond_0

    .line 373
    invoke-interface {v4}, Lcom/actionbarsherlock/view/MenuItem;->expandActionView()Z

    goto :goto_0

    .line 358
    .end local v0           #expandedId:I
    .end local v4           #itemToExpand:Lcom/actionbarsherlock/view/MenuItem;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 359
    .local v2, item:Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    .line 360
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 361
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 363
    :cond_3
    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 364
    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .line 365
    .local v5, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 357
    .end local v5           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 319
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .parameter "outStates"

    .prologue
    .line 322
    const/4 v5, 0x0

    .line 324
    .local v5, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 325
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 343
    if-eqz v5, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 346
    :cond_0
    return-void

    .line 326
    :cond_1
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 327
    .local v1, item:Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 328
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 329
    if-nez v5, :cond_2

    .line 330
    new-instance v5, Landroid/util/SparseArray;

    .end local v5           #viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 332
    .restart local v5       #viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_2
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 333
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->isActionViewExpanded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 334
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    :cond_3
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 338
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .line 339
    .local v3, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v3, p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 325
    .end local v3           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    return-void
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    .line 384
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menuInfo"

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1213
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 0
    .parameter "defaultShowAsAction"

    .prologue
    .line 206
    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 207
    return-object p0
.end method

.method setExclusiveItemChecked(Lcom/actionbarsherlock/view/MenuItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 532
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getGroupId()I

    move-result v2

    .line 534
    .local v2, group:I
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 535
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 545
    return-void

    .line 536
    :cond_0
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 537
    .local v1, curItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 538
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 535
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 539
    :cond_2
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    if-ne v1, p1, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 548
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 550
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 557
    return-void

    .line 551
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 552
    .local v2, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 553
    invoke-virtual {v2, p3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 554
    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setCheckable(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 550
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 577
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 579
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 585
    return-void

    .line 580
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 581
    .local v2, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 582
    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 579
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 560
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 565
    .local v0, N:I
    const/4 v1, 0x0

    .line 566
    .local v1, changedAtLeastOneItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 573
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 574
    :cond_0
    return-void

    .line 567
    :cond_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 568
    .local v3, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 569
    invoke-virtual {v3, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 566
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setHeaderIconInt(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "iconRes"

    .prologue
    const/4 v2, 0x0

    .line 1168
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1169
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1156
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1157
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "titleRes"

    .prologue
    const/4 v2, 0x0

    .line 1144
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1145
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1132
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1133
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1180
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1181
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1216
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1217
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter "isQwerty"

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 670
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .parameter "shortcutsVisible"

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_0
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 712
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 965
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 967
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 968
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 969
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 971
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 962
    :cond_0
    return-void
.end method
