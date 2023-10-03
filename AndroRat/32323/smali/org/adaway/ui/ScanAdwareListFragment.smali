.class public Lorg/adaway/ui/ScanAdwareListFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "ScanAdwareListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lorg/adaway/ui/ScanAdwareListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lorg/adaway/ui/ScanAdwareListFragment;->mActivity:Landroid/app/Activity;

    .line 85
    invoke-virtual {p0}, Lorg/adaway/ui/ScanAdwareListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/adaway/ui/ScanAdwareListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lorg/adaway/ui/ScanAdwareListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/adaway/ui/ScanAdwareListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 92
    new-array v4, v6, [Ljava/lang/String;

    .line 93
    .local v4, from:[Ljava/lang/String;
    new-array v5, v6, [I

    .line 94
    .local v5, to:[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lorg/adaway/ui/ScanAdwareListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x109000d

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lorg/adaway/ui/ScanAdwareListFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 97
    iget-object v0, p0, Lorg/adaway/ui/ScanAdwareListFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lorg/adaway/ui/ScanAdwareListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-virtual {p0, v6}, Lorg/adaway/ui/ScanAdwareListFragment;->setListShown(Z)V

    .line 104
    invoke-virtual {p0}, Lorg/adaway/ui/ScanAdwareListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 105
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lorg/adaway/util/ScanAdwareLoader;

    iget-object v1, p0, Lorg/adaway/ui/ScanAdwareListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/adaway/util/ScanAdwareLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "listView"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 51
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 53
    .local v1, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "package_name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, packageName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, i:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lorg/adaway/ui/ScanAdwareListFragment;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/adaway/ui/ScanAdwareListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 119
    const-string v0, "AdAway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-array v4, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "app_name"

    aput-object v1, v4, v0

    const-string v0, "package_name"

    aput-object v0, v4, v6

    .line 127
    .local v4, from:[Ljava/lang/String;
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 128
    .local v5, to:[I
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lorg/adaway/ui/ScanAdwareListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x109000d

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lorg/adaway/ui/ScanAdwareListFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 131
    iget-object v0, p0, Lorg/adaway/ui/ScanAdwareListFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 132
    iget-object v0, p0, Lorg/adaway/ui/ScanAdwareListFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lorg/adaway/ui/ScanAdwareListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    invoke-virtual {p0}, Lorg/adaway/ui/ScanAdwareListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, v6}, Lorg/adaway/ui/ScanAdwareListFragment;->setListShown(Z)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0, v6}, Lorg/adaway/ui/ScanAdwareListFragment;->setListShownNoAnimation(Z)V

    goto :goto_0

    .line 127
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onResume()V

    .line 69
    invoke-virtual {p0, v2}, Lorg/adaway/ui/ScanAdwareListFragment;->setListShown(Z)V

    .line 72
    invoke-virtual {p0}, Lorg/adaway/ui/ScanAdwareListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 73
    return-void
.end method
