.class public Lorg/adaway/ui/ScanAdwareActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ScanAdwareActivity.java"


# instance fields
.field private mActionBar:Lcom/actionbarsherlock/app/ActionBar;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lorg/adaway/ui/ScanAdwareActivity;->setContentView(I)V

    .line 49
    iput-object p0, p0, Lorg/adaway/ui/ScanAdwareActivity;->mActivity:Landroid/app/Activity;

    .line 51
    invoke-virtual {p0}, Lorg/adaway/ui/ScanAdwareActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lorg/adaway/ui/ScanAdwareActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 52
    iget-object v0, p0, Lorg/adaway/ui/ScanAdwareActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 53
    iget-object v0, p0, Lorg/adaway/ui/ScanAdwareActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 61
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 70
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 64
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/adaway/ui/ScanAdwareActivity;->mActivity:Landroid/app/Activity;

    const-class v2, Lorg/adaway/ui/BaseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Lorg/adaway/ui/ScanAdwareActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public scanAdwareStartOnClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/adaway/ui/ScanAdwareActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 77
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 79
    .local v1, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lorg/adaway/ui/ScanAdwareListFragment;

    invoke-direct {v2}, Lorg/adaway/ui/ScanAdwareListFragment;-><init>()V

    .line 81
    .local v2, listFragment:Lorg/adaway/ui/ScanAdwareListFragment;
    const v3, 0x7f08005b

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 82
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 83
    return-void
.end method
