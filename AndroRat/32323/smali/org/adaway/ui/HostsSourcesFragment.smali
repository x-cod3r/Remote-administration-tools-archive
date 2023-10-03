.class public Lorg/adaway/ui/HostsSourcesFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "HostsSourcesFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final HOSTS_SOURCES_SUMMARY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lorg/adaway/util/HostsSourcesCursorAdapter;

.field private mCurrentRowId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 330
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "last_modified_local"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "last_modified_online"

    aput-object v2, v0, v1

    sput-object v0, Lorg/adaway/ui/HostsSourcesFragment;->HOSTS_SOURCES_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/adaway/ui/HostsSourcesFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lorg/adaway/ui/HostsSourcesFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/adaway/ui/HostsSourcesFragment;->mCurrentRowId:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/adaway/ui/HostsSourcesFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/adaway/ui/HostsSourcesFragment;->addEntry(Ljava/lang/String;)V

    return-void
.end method

.method private addEntry(Ljava/lang/String;)V
    .locals 3
    .parameter "input"

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    invoke-static {p1}, Lorg/adaway/util/RegexUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lorg/adaway/provider/ProviderHelper;->insertHostsSource(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 279
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 280
    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 281
    const v1, 0x7f060083

    invoke-virtual {p0, v1}, Lorg/adaway/ui/HostsSourcesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 282
    const v1, 0x7f060026

    invoke-virtual {p0, v1}, Lorg/adaway/ui/HostsSourcesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/adaway/ui/HostsSourcesFragment$5;

    invoke-direct {v2, p0}, Lorg/adaway/ui/HostsSourcesFragment$5;-><init>(Lorg/adaway/ui/HostsSourcesFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private menuDeleteEntry(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 111
    iget-wide v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v0, p0, Lorg/adaway/ui/HostsSourcesFragment;->mCurrentRowId:J

    .line 112
    iget-object v0, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lorg/adaway/ui/HostsSourcesFragment;->mCurrentRowId:J

    invoke-static {v0, v1, v2}, Lorg/adaway/provider/ProviderHelper;->deleteHostsSource(Landroid/content/Context;J)V

    .line 113
    return-void
.end method

.method private menuEditEntry(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    .line 121
    iget-wide v9, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v9, p0, Lorg/adaway/ui/HostsSourcesFragment;->mCurrentRowId:J

    .line 122
    iget v6, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 123
    .local v6, position:I
    iget-object v8, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 125
    .local v8, v:Landroid/view/View;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "url_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 127
    .local v7, urlTextView:Landroid/widget/TextView;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 129
    const v9, 0x7f06003d

    invoke-virtual {p0, v9}, Lorg/adaway/ui/HostsSourcesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 132
    iget-object v9, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 133
    .local v3, factory:Landroid/view/LayoutInflater;
    const v9, 0x7f030026

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, dialogView:Landroid/view/View;
    const v9, 0x7f080057

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 136
    .local v5, inputEditText:Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 139
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 140
    .local v4, inputEditContent:Landroid/text/Editable;
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 142
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {p0}, Lorg/adaway/ui/HostsSourcesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06002e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/adaway/ui/HostsSourcesFragment$1;

    invoke-direct {v10, p0, v5}, Lorg/adaway/ui/HostsSourcesFragment$1;-><init>(Lorg/adaway/ui/HostsSourcesFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {p0}, Lorg/adaway/ui/HostsSourcesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06002b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/adaway/ui/HostsSourcesFragment$2;

    invoke-direct {v10, p0}, Lorg/adaway/ui/HostsSourcesFragment$2;-><init>(Lorg/adaway/ui/HostsSourcesFragment;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 178
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 179
    return-void
.end method


# virtual methods
.method public menuAddEntry()V
    .locals 8

    .prologue
    .line 228
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 230
    const v6, 0x7f060038

    invoke-virtual {p0, v6}, Lorg/adaway/ui/HostsSourcesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    iget-object v6, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 234
    .local v3, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030026

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 235
    .local v2, dialogView:Landroid/view/View;
    const v6, 0x7f080057

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 237
    .local v5, inputEditText:Landroid/widget/EditText;
    const v6, 0x7f0600ef

    invoke-virtual {p0, v6}, Lorg/adaway/ui/HostsSourcesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 240
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 241
    .local v4, inputEditContent:Landroid/text/Editable;
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 243
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {p0}, Lorg/adaway/ui/HostsSourcesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/adaway/ui/HostsSourcesFragment$3;

    invoke-direct {v7, p0, v5}, Lorg/adaway/ui/HostsSourcesFragment$3;-><init>(Lorg/adaway/ui/HostsSourcesFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {p0}, Lorg/adaway/ui/HostsSourcesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06002b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/adaway/ui/HostsSourcesFragment$4;

    invoke-direct {v7, p0}, Lorg/adaway/ui/HostsSourcesFragment$4;-><init>(Lorg/adaway/ui/HostsSourcesFragment;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 263
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 264
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 298
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {p0}, Lorg/adaway/ui/HostsSourcesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    .line 303
    invoke-virtual {p0}, Lorg/adaway/ui/HostsSourcesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/adaway/ui/HostsSourcesFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lorg/adaway/ui/HostsSourcesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-virtual {p0, v1}, Lorg/adaway/ui/HostsSourcesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/adaway/ui/HostsSourcesFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/adaway/ui/HostsSourcesFragment;->setHasOptionsMenu(Z)V

    .line 314
    new-array v4, v6, [Ljava/lang/String;

    .line 315
    .local v4, displayFields:[Ljava/lang/String;
    new-array v5, v6, [I

    .line 317
    .local v5, displayViews:[I
    new-instance v0, Lorg/adaway/util/HostsSourcesCursorAdapter;

    iget-object v1, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f03001a

    invoke-direct/range {v0 .. v6}, Lorg/adaway/util/HostsSourcesCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lorg/adaway/ui/HostsSourcesFragment;->mAdapter:Lorg/adaway/util/HostsSourcesCursorAdapter;

    .line 319
    iget-object v0, p0, Lorg/adaway/ui/HostsSourcesFragment;->mAdapter:Lorg/adaway/util/HostsSourcesCursorAdapter;

    invoke-virtual {p0, v0}, Lorg/adaway/ui/HostsSourcesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    invoke-virtual {p0, v6}, Lorg/adaway/ui/HostsSourcesFragment;->setListShown(Z)V

    .line 326
    invoke-virtual {p0}, Lorg/adaway/ui/HostsSourcesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 327
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 93
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 101
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 95
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/adaway/ui/HostsSourcesFragment;->menuDeleteEntry(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/adaway/ui/HostsSourcesFragment;->menuEditEntry(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 80
    iget-object v1, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 82
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f06003e

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 83
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 84
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 338
    sget-object v2, Lorg/adaway/provider/AdAwayContract$HostsSources;->CONTENT_URI:Landroid/net/Uri;

    .line 342
    .local v2, baseUri:Landroid/net/Uri;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lorg/adaway/ui/HostsSourcesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lorg/adaway/ui/HostsSourcesFragment;->HOSTS_SOURCES_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v6, "url ASC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 71
    const v0, 0x7f0e0002

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 72
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/app/SherlockListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 188
    iput-wide p4, p0, Lorg/adaway/ui/HostsSourcesFragment;->mCurrentRowId:J

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkbox_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 194
    .local v0, cBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 198
    iget-object v1, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lorg/adaway/ui/HostsSourcesFragment;->mCurrentRowId:J

    invoke-static {v1, v2, v3, v4}, Lorg/adaway/provider/ProviderHelper;->updateHostsSourceEnabled(Landroid/content/Context;JZ)V

    .line 206
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 201
    iget-object v1, p0, Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lorg/adaway/ui/HostsSourcesFragment;->mCurrentRowId:J

    invoke-static {v1, v2, v3, v5}, Lorg/adaway/provider/ProviderHelper;->updateHostsSourceEnabled(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 204
    :cond_1
    const-string v1, "AdAway"

    const-string v2, "Checkbox could not be found!"

    invoke-static {v1, v2}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x1

    .line 350
    iget-object v0, p0, Lorg/adaway/ui/HostsSourcesFragment;->mAdapter:Lorg/adaway/util/HostsSourcesCursorAdapter;

    invoke-virtual {v0, p2}, Lorg/adaway/util/HostsSourcesCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 353
    invoke-virtual {p0}, Lorg/adaway/ui/HostsSourcesFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0, v1}, Lorg/adaway/ui/HostsSourcesFragment;->setListShown(Z)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {p0, v1}, Lorg/adaway/ui/HostsSourcesFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/adaway/ui/HostsSourcesFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lorg/adaway/ui/HostsSourcesFragment;->mAdapter:Lorg/adaway/util/HostsSourcesCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/adaway/util/HostsSourcesCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 366
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 214
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 216
    :pswitch_0
    invoke-virtual {p0}, Lorg/adaway/ui/HostsSourcesFragment;->menuAddEntry()V

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006c
        :pswitch_0
    .end packed-switch
.end method
