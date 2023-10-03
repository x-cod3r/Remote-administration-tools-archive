.class public Lorg/adaway/ui/ListsActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ListsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/adaway/ui/ListsActivity$TabListener;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/actionbarsherlock/app/ActionBar;

.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mTab1:Lcom/actionbarsherlock/app/ActionBar$Tab;

.field private mTab2:Lcom/actionbarsherlock/app/ActionBar$Tab;

.field private mTab3:Lcom/actionbarsherlock/app/ActionBar$Tab;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 156
    return-void
.end method

.method private setTabTextBasedOnOrientation(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 133
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab1:Lcom/actionbarsherlock/app/ActionBar$Tab;

    const v1, 0x7f060041

    invoke-virtual {p0, v1}, Lorg/adaway/ui/ListsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 136
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab2:Lcom/actionbarsherlock/app/ActionBar$Tab;

    const v1, 0x7f060040

    invoke-virtual {p0, v1}, Lorg/adaway/ui/ListsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 137
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab3:Lcom/actionbarsherlock/app/ActionBar$Tab;

    const v1, 0x7f060045

    invoke-virtual {p0, v1}, Lorg/adaway/ui/ListsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab1:Lcom/actionbarsherlock/app/ActionBar$Tab;

    const v1, 0x7f060042

    invoke-virtual {p0, v1}, Lorg/adaway/ui/ListsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 141
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab2:Lcom/actionbarsherlock/app/ActionBar$Tab;

    const v1, 0x7f060043

    invoke-virtual {p0, v1}, Lorg/adaway/ui/ListsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 142
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab3:Lcom/actionbarsherlock/app/ActionBar$Tab;

    const v1, 0x7f060044

    invoke-virtual {p0, v1}, Lorg/adaway/ui/ListsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    const-string v0, "AdAway"

    const-string v1, "Handling onActivityResult..."

    invoke-static {v0, v1}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1, p2, p3}, Lorg/adaway/helper/ImportExportHelper;->onActivityResultHandleImport(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    invoke-direct {p0, p1}, Lorg/adaway/ui/ListsActivity;->setTabTextBasedOnOrientation(Landroid/content/res/Configuration;)V

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iput-object p0, p0, Lorg/adaway/ui/ListsActivity;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 105
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lorg/adaway/ui/ListsActivity;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lorg/adaway/ui/ListsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lorg/adaway/ui/ListsActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 108
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 109
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 111
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 113
    invoke-virtual {p0}, Lorg/adaway/ui/ListsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab1:Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 114
    invoke-virtual {p0}, Lorg/adaway/ui/ListsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab2:Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 115
    invoke-virtual {p0}, Lorg/adaway/ui/ListsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab3:Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 117
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab1:Lcom/actionbarsherlock/app/ActionBar$Tab;

    new-instance v1, Lorg/adaway/ui/ListsActivity$TabListener;

    const-string v2, "blacklist"

    const-class v3, Lorg/adaway/ui/BlacklistFragment;

    invoke-direct {v1, p0, v2, v3}, Lorg/adaway/ui/ListsActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 119
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab2:Lcom/actionbarsherlock/app/ActionBar$Tab;

    new-instance v1, Lorg/adaway/ui/ListsActivity$TabListener;

    const-string v2, "whitelist"

    const-class v3, Lorg/adaway/ui/WhitelistFragment;

    invoke-direct {v1, p0, v2, v3}, Lorg/adaway/ui/ListsActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 121
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mTab3:Lcom/actionbarsherlock/app/ActionBar$Tab;

    new-instance v1, Lorg/adaway/ui/ListsActivity$TabListener;

    const-string v2, "redirectionlist"

    const-class v3, Lorg/adaway/ui/RedirectionListFragment;

    invoke-direct {v1, p0, v2, v3}, Lorg/adaway/ui/ListsActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 124
    invoke-virtual {p0}, Lorg/adaway/ui/ListsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/adaway/ui/ListsActivity;->setTabTextBasedOnOrientation(Landroid/content/res/Configuration;)V

    .line 126
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lorg/adaway/ui/ListsActivity;->mTab1:Lcom/actionbarsherlock/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 127
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lorg/adaway/ui/ListsActivity;->mTab2:Lcom/actionbarsherlock/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 128
    iget-object v0, p0, Lorg/adaway/ui/ListsActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lorg/adaway/ui/ListsActivity;->mTab3:Lcom/actionbarsherlock/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/adaway/ui/ListsActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 54
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 55
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 92
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 78
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lorg/adaway/ui/ListsActivity;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lorg/adaway/ui/BaseActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Lorg/adaway/ui/ListsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    iget-object v2, p0, Lorg/adaway/ui/ListsActivity;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Lorg/adaway/helper/ImportExportHelper;->openFileStream(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 88
    :sswitch_2
    iget-object v2, p0, Lorg/adaway/ui/ListsActivity;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Lorg/adaway/helper/ImportExportHelper;->exportLists(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08006d -> :sswitch_1
        0x7f08006e -> :sswitch_2
    .end sparse-switch
.end method
