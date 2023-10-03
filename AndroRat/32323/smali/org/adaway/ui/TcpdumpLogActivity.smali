.class public Lorg/adaway/ui/TcpdumpLogActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "TcpdumpLogActivity.java"


# instance fields
.field private mActionBar:Lcom/actionbarsherlock/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lorg/adaway/ui/TcpdumpLogActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lorg/adaway/ui/TcpdumpLogActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lorg/adaway/ui/TcpdumpLogActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 42
    iget-object v0, p0, Lorg/adaway/ui/TcpdumpLogActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 43
    iget-object v0, p0, Lorg/adaway/ui/TcpdumpLogActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 59
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 54
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/adaway/ui/TcpdumpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Lorg/adaway/ui/TcpdumpLogActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
