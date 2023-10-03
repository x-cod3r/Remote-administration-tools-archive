.class public abstract Landroid/support/v4/app/Watson;
.super Landroid/support/v4/app/FragmentActivity;
.source "Watson.java"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Watson$OnCreateOptionsMenuListener;,
        Landroid/support/v4/app/Watson$OnOptionsItemSelectedListener;,
        Landroid/support/v4/app/Watson$OnPrepareOptionsMenuListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Watson"


# instance fields
.field private mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
.end method

.method public abstract onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end method

.method public onCreatePanelMenu(ILcom/actionbarsherlock/view/Menu;)Z
    .locals 7
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 44
    if-nez p1, :cond_8

    .line 45
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Watson;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v4

    .line 48
    .local v4, result:Z
    invoke-virtual {p0}, Landroid/support/v4/app/Watson;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v2

    .line 49
    .local v2, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    const/4 v5, 0x0

    .line 50
    .local v5, show:Z
    const/4 v3, 0x0

    .line 51
    .local v3, newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v6, p0, Landroid/support/v4/app/Watson;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 52
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Landroid/support/v4/app/Watson;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 65
    .end local v1           #i:I
    :cond_0
    iget-object v6, p0, Landroid/support/v4/app/Watson;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 66
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v6, p0, Landroid/support/v4/app/Watson;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_5

    .line 74
    .end local v1           #i:I
    :cond_1
    iput-object v3, p0, Landroid/support/v4/app/Watson;->mCreatedMenus:Ljava/util/ArrayList;

    .line 77
    or-int/2addr v4, v5

    .line 82
    .end local v2           #inflater:Lcom/actionbarsherlock/view/MenuInflater;
    .end local v3           #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .end local v4           #result:Z
    .end local v5           #show:Z
    :goto_2
    return v4

    .line 53
    .restart local v1       #i:I
    .restart local v2       #inflater:Lcom/actionbarsherlock/view/MenuInflater;
    .restart local v3       #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .restart local v4       #result:Z
    .restart local v5       #show:Z
    :cond_2
    iget-object v6, p0, Landroid/support/v4/app/Watson;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 54
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_4

    iget-boolean v6, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v6, :cond_4

    iget-boolean v6, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v6, :cond_4

    instance-of v6, v0, Landroid/support/v4/app/Watson$OnCreateOptionsMenuListener;

    if-eqz v6, :cond_4

    .line 55
    const/4 v5, 0x1

    move-object v6, v0

    .line 56
    check-cast v6, Landroid/support/v4/app/Watson$OnCreateOptionsMenuListener;

    invoke-interface {v6, p2, v2}, Landroid/support/v4/app/Watson$OnCreateOptionsMenuListener;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 57
    if-nez v3, :cond_3

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .restart local v3       #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :cond_5
    iget-object v6, p0, Landroid/support/v4/app/Watson;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 68
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_6

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 69
    :cond_6
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 66
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    .end local v2           #inflater:Lcom/actionbarsherlock/view/MenuInflater;
    .end local v3           #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .end local v4           #result:Z
    .end local v5           #show:Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 118
    if-nez p1, :cond_2

    .line 119
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Watson;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v2

    .line 123
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/Watson;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 124
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Landroid/support/v4/app/Watson;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 134
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 125
    .restart local v1       #i:I
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/Watson;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 126
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_4

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_4

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_4

    instance-of v3, v0, Landroid/support/v4/app/Watson$OnOptionsItemSelectedListener;

    if-eqz v3, :cond_4

    .line 127
    check-cast v0, Landroid/support/v4/app/Watson$OnOptionsItemSelectedListener;

    .end local v0           #f:Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p2}, Landroid/support/v4/app/Watson$OnOptionsItemSelectedListener;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public abstract onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
.end method

.method public abstract onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end method

.method public onPreparePanel(ILandroid/view/View;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 5
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 89
    if-nez p1, :cond_3

    .line 90
    invoke-virtual {p0, p3}, Landroid/support/v4/app/Watson;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v2

    .line 93
    .local v2, result:Z
    const/4 v3, 0x0

    .line 94
    .local v3, show:Z
    iget-object v4, p0, Landroid/support/v4/app/Watson;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 95
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/Watson;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 105
    .end local v1           #i:I
    :cond_0
    or-int/2addr v2, v3

    .line 107
    invoke-interface {p3}, Lcom/actionbarsherlock/view/Menu;->hasVisibleItems()Z

    move-result v4

    and-int/2addr v2, v4

    .line 111
    .end local v2           #result:Z
    .end local v3           #show:Z
    :goto_1
    return v2

    .line 96
    .restart local v1       #i:I
    .restart local v2       #result:Z
    .restart local v3       #show:Z
    :cond_1
    iget-object v4, p0, Landroid/support/v4/app/Watson;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 97
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v4, :cond_2

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_2

    instance-of v4, v0, Landroid/support/v4/app/Watson$OnPrepareOptionsMenuListener;

    if-eqz v4, :cond_2

    .line 98
    const/4 v3, 0x1

    .line 99
    check-cast v0, Landroid/support/v4/app/Watson$OnPrepareOptionsMenuListener;

    .end local v0           #f:Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p3}, Landroid/support/v4/app/Watson$OnPrepareOptionsMenuListener;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    .line 95
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1           #i:I
    .end local v2           #result:Z
    .end local v3           #show:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
