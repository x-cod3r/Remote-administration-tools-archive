.class public Lorg/adaway/ui/RedirectionListFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "RedirectionListFragment.java"

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
.field static final REDIRECTION_LIST_SUMMARY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private mAdapter:Lorg/adaway/util/RedirectionCursorAdapter;

.field private mCurrentRowId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ip"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "enabled"

    aput-object v2, v0, v1

    sput-object v0, Lorg/adaway/ui/RedirectionListFragment;->REDIRECTION_LIST_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/adaway/ui/RedirectionListFragment;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$100(Lorg/adaway/ui/RedirectionListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/adaway/ui/RedirectionListFragment;->mCurrentRowId:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/adaway/ui/RedirectionListFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/adaway/ui/RedirectionListFragment;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "hostname"
    .parameter "ip"

    .prologue
    const v4, 0x7f060026

    const v3, 0x1080027

    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-static {p1}, Lorg/adaway/util/RegexUtils;->isValidHostname(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-static {p2}, Lorg/adaway/util/RegexUtils;->isValidIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v1, p1, p2}, Lorg/adaway/provider/ProviderHelper;->insertRedirectionListItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 306
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 307
    const v1, 0x7f060089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 308
    const v1, 0x7f060088

    invoke-virtual {p0, v1}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {p0, v4}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/adaway/ui/RedirectionListFragment$5;

    invoke-direct {v2, p0}, Lorg/adaway/ui/RedirectionListFragment$5;-><init>(Lorg/adaway/ui/RedirectionListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 315
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 318
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 319
    .restart local v0       #alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 320
    const v1, 0x7f060087

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 321
    const v1, 0x7f060086

    invoke-virtual {p0, v1}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {p0, v4}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/adaway/ui/RedirectionListFragment$6;

    invoke-direct {v2, p0}, Lorg/adaway/ui/RedirectionListFragment$6;-><init>(Lorg/adaway/ui/RedirectionListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 328
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private menuDeleteEntry(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 110
    iget-wide v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v0, p0, Lorg/adaway/ui/RedirectionListFragment;->mCurrentRowId:J

    .line 111
    iget-object v0, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-wide v1, p0, Lorg/adaway/ui/RedirectionListFragment;->mCurrentRowId:J

    invoke-static {v0, v1, v2}, Lorg/adaway/provider/ProviderHelper;->deleteRedirectionListItem(Landroid/content/Context;J)V

    .line 112
    return-void
.end method

.method private menuEditEntry(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 14
    .parameter "info"

    .prologue
    .line 120
    iget-wide v12, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v12, p0, Lorg/adaway/ui/RedirectionListFragment;->mCurrentRowId:J

    .line 121
    iget v10, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 122
    .local v10, position:I
    iget-object v11, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 124
    .local v11, v:Landroid/view/View;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hostname_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 125
    .local v6, hostnameTextView:Landroid/widget/TextView;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ip_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 127
    .local v9, ipTextView:Landroid/widget/TextView;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 129
    const v12, 0x7f06003d

    invoke-virtual {p0, v12}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 132
    iget-object v12, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 133
    .local v3, factory:Landroid/view/LayoutInflater;
    const v12, 0x7f030025

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, dialogView:Landroid/view/View;
    const v12, 0x7f080055

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 136
    .local v5, hostnameEditText:Landroid/widget/EditText;
    const v12, 0x7f080056

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 139
    .local v8, ipEditText:Landroid/widget/EditText;
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 144
    .local v4, hostnameEditContent:Landroid/text/Editable;
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 145
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 146
    .local v7, ipEditContent:Landroid/text/Editable;
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 148
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {p0}, Lorg/adaway/ui/RedirectionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f06002e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/adaway/ui/RedirectionListFragment$1;

    invoke-direct {v13, p0, v5, v8}, Lorg/adaway/ui/RedirectionListFragment$1;-><init>(Lorg/adaway/ui/RedirectionListFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {p0}, Lorg/adaway/ui/RedirectionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f06002b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/adaway/ui/RedirectionListFragment$2;

    invoke-direct {v13, p0}, Lorg/adaway/ui/RedirectionListFragment$2;-><init>(Lorg/adaway/ui/RedirectionListFragment;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 200
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 201
    return-void
.end method


# virtual methods
.method public menuAddEntry()V
    .locals 10

    .prologue
    .line 250
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 252
    const v8, 0x7f060038

    invoke-virtual {p0, v8}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 255
    iget-object v8, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 256
    .local v3, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f030025

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 257
    .local v2, dialogView:Landroid/view/View;
    const v8, 0x7f080055

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 259
    .local v5, hostnameEditText:Landroid/widget/EditText;
    const v8, 0x7f080056

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 262
    .local v7, ipEditText:Landroid/widget/EditText;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 263
    .local v4, hostnameEditContent:Landroid/text/Editable;
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 266
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 267
    .local v6, ipEditContent:Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 269
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {p0}, Lorg/adaway/ui/RedirectionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06002a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/adaway/ui/RedirectionListFragment$3;

    invoke-direct {v9, p0, v5, v7}, Lorg/adaway/ui/RedirectionListFragment$3;-><init>(Lorg/adaway/ui/RedirectionListFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {p0}, Lorg/adaway/ui/RedirectionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/adaway/ui/RedirectionListFragment$4;

    invoke-direct {v9, p0}, Lorg/adaway/ui/RedirectionListFragment$4;-><init>(Lorg/adaway/ui/RedirectionListFragment;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 291
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 292
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 338
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 340
    invoke-virtual {p0}, Lorg/adaway/ui/RedirectionListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 343
    invoke-virtual {p0}, Lorg/adaway/ui/RedirectionListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/adaway/ui/RedirectionListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-virtual {p0, v1}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/adaway/ui/RedirectionListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/adaway/ui/RedirectionListFragment;->setHasOptionsMenu(Z)V

    .line 354
    new-array v4, v6, [Ljava/lang/String;

    .line 355
    .local v4, displayFields:[Ljava/lang/String;
    new-array v5, v6, [I

    .line 356
    .local v5, displayViews:[I
    new-instance v0, Lorg/adaway/util/RedirectionCursorAdapter;

    iget-object v1, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f03001a

    invoke-direct/range {v0 .. v6}, Lorg/adaway/util/RedirectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lorg/adaway/ui/RedirectionListFragment;->mAdapter:Lorg/adaway/util/RedirectionCursorAdapter;

    .line 358
    iget-object v0, p0, Lorg/adaway/ui/RedirectionListFragment;->mAdapter:Lorg/adaway/util/RedirectionCursorAdapter;

    invoke-virtual {p0, v0}, Lorg/adaway/ui/RedirectionListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 361
    invoke-virtual {p0, v6}, Lorg/adaway/ui/RedirectionListFragment;->setListShown(Z)V

    .line 365
    invoke-virtual {p0}, Lorg/adaway/ui/RedirectionListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 366
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 92
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 100
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 94
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/adaway/ui/RedirectionListFragment;->menuDeleteEntry(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/adaway/ui/RedirectionListFragment;->menuEditEntry(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    goto :goto_0

    .line 92
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
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 79
    iget-object v1, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 81
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f06003e

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 82
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 83
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

    .line 376
    sget-object v2, Lorg/adaway/provider/AdAwayContract$RedirectionList;->CONTENT_URI:Landroid/net/Uri;

    .line 380
    .local v2, baseUri:Landroid/net/Uri;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lorg/adaway/ui/RedirectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lorg/adaway/ui/RedirectionListFragment;->REDIRECTION_LIST_SUMMARY_PROJECTION:[Ljava/lang/String;

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
    .line 69
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 70
    const v0, 0x7f0e0004

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 71
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

    .line 209
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/app/SherlockListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 210
    iput-wide p4, p0, Lorg/adaway/ui/RedirectionListFragment;->mCurrentRowId:J

    .line 214
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

    .line 216
    .local v0, cBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    iget-object v1, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-wide v2, p0, Lorg/adaway/ui/RedirectionListFragment;->mCurrentRowId:J

    invoke-static {v1, v2, v3, v4}, Lorg/adaway/provider/ProviderHelper;->updateRedirectionListItemEnabled(Landroid/content/Context;JZ)V

    .line 228
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    iget-object v1, p0, Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-wide v2, p0, Lorg/adaway/ui/RedirectionListFragment;->mCurrentRowId:J

    invoke-static {v1, v2, v3, v5}, Lorg/adaway/provider/ProviderHelper;->updateRedirectionListItemEnabled(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 226
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

    .line 388
    iget-object v0, p0, Lorg/adaway/ui/RedirectionListFragment;->mAdapter:Lorg/adaway/util/RedirectionCursorAdapter;

    invoke-virtual {v0, p2}, Lorg/adaway/util/RedirectionCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 391
    invoke-virtual {p0}, Lorg/adaway/ui/RedirectionListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0, v1}, Lorg/adaway/ui/RedirectionListFragment;->setListShown(Z)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0, v1}, Lorg/adaway/ui/RedirectionListFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/adaway/ui/RedirectionListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 403
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lorg/adaway/ui/RedirectionListFragment;->mAdapter:Lorg/adaway/util/RedirectionCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/adaway/util/RedirectionCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 404
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 236
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 242
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 238
    :pswitch_0
    invoke-virtual {p0}, Lorg/adaway/ui/RedirectionListFragment;->menuAddEntry()V

    .line 239
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006c
        :pswitch_0
    .end packed-switch
.end method
