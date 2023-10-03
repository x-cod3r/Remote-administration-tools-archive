.class public Lcom/actionbarsherlock/internal/app/ActionBarWrapper;
.super Lcom/actionbarsherlock/app/ActionBar;
.source "ActionBarWrapper.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mActivity:Landroid/app/Activity;

.field private mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mMenuVisibilityListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationListener:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/actionbarsherlock/app/ActionBar;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mMenuVisibilityListeners:Ljava/util/Set;

    .line 25
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActivity:Landroid/app/Activity;

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    .line 27
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 30
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    return-object v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mMenuVisibilityListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    .end local p1
    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 378
    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;I)V
    .locals 2
    .parameter "tab"
    .parameter "position"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    .end local p1
    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1, p2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 388
    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;IZ)V
    .locals 2
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    .end local p1
    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 393
    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Z)V
    .locals 2
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    .end local p1
    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1, p2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 383
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 417
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 418
    .local v0, selected:Landroid/app/ActionBar$Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/app/ActionBar$Tab;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2
    .parameter "index"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 424
    .local v0, selected:Landroid/app/ActionBar$Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/app/ActionBar$Tab;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 445
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 372
    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;-><init>(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;Landroid/app/ActionBar$Tab;)V

    return-object v0
.end method

.method public onMenuVisibilityChanged(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    .line 464
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mMenuVisibilityListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    return-void

    .line 464
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;

    .line 465
    .local v0, listener:Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;
    invoke-interface {v0, p1}, Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    goto :goto_0
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 1
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mNavigationListener:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    move-result v0

    return v0
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 408
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mMenuVisibilityListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method public removeTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    .end local p1
    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 398
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeTabAt(I)V

    .line 403
    return-void
.end method

.method public selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    .end local p1
    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 413
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    return-void
.end method

.method public setCustomView(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 62
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcom/actionbarsherlock/app/ActionBar$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "layoutParams"

    .prologue
    .line 50
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .local v0, lp:Landroid/app/ActionBar$LayoutParams;
    iget v1, p2, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 52
    iget v1, p2, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    .line 53
    iget v1, p2, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    .line 54
    iget v1, p2, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    .line 55
    iget v1, p2, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 56
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 57
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .parameter "showHomeAsUp"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 155
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .parameter "options"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 135
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 1
    .parameter "options"
    .parameter "mask"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 140
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1
    .parameter "showCustom"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 165
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 1
    .parameter "showHome"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 150
    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 1
    .parameter "showTitle"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 160
    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1
    .parameter "useLogo"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 145
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 36
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 67
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V
    .locals 1
    .parameter "adapter"
    .parameter "callback"

    .prologue
    .line 86
    iput-object p2, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mNavigationListener:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

    .line 87
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    if-eqz p2, :cond_0

    .end local p0
    :goto_0
    invoke-virtual {v0, p1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 88
    return-void

    .line 87
    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public setLogo(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(I)V

    .line 77
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "logo"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 205
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 100
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 130
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "subtitle"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 120
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 440
    return-void
.end method
