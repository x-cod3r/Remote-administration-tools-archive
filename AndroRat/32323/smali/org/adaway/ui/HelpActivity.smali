.class public Lorg/adaway/ui/HelpActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/adaway/ui/HelpActivity$TabsAdapter;
    }
.end annotation


# instance fields
.field mTabsAdapter:Lorg/adaway/ui/HelpActivity$TabsAdapter;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 107
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 67
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v5, Landroid/support/v4/view/ViewPager;

    invoke-direct {v5, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/adaway/ui/HelpActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 70
    iget-object v5, p0, Lorg/adaway/ui/HelpActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v6, 0x7f08004f

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 72
    iget-object v5, p0, Lorg/adaway/ui/HelpActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v5}, Lorg/adaway/ui/HelpActivity;->setContentView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lorg/adaway/ui/HelpActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 74
    .local v0, bar:Lcom/actionbarsherlock/app/ActionBar;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 75
    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 76
    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    new-instance v5, Lorg/adaway/ui/HelpActivity$TabsAdapter;

    iget-object v6, p0, Lorg/adaway/ui/HelpActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v5, p0, v6}, Lorg/adaway/ui/HelpActivity$TabsAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v5, p0, Lorg/adaway/ui/HelpActivity;->mTabsAdapter:Lorg/adaway/ui/HelpActivity$TabsAdapter;

    .line 80
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v2, faqBundle:Landroid/os/Bundle;
    const-string v5, "htmlFile"

    const v6, 0x7f050002

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    iget-object v5, p0, Lorg/adaway/ui/HelpActivity;->mTabsAdapter:Lorg/adaway/ui/HelpActivity$TabsAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f06009a

    invoke-virtual {p0, v7}, Lorg/adaway/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const-class v7, Lorg/adaway/ui/HelpFragmentHtml;

    invoke-virtual {v5, v6, v7, v2}, Lorg/adaway/ui/HelpActivity$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 85
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v3, problemsBundle:Landroid/os/Bundle;
    const-string v5, "htmlFile"

    const v6, 0x7f050003

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    iget-object v5, p0, Lorg/adaway/ui/HelpActivity;->mTabsAdapter:Lorg/adaway/ui/HelpActivity$TabsAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f06009b

    invoke-virtual {p0, v7}, Lorg/adaway/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const-class v7, Lorg/adaway/ui/HelpFragmentHtml;

    invoke-virtual {v5, v6, v7, v3}, Lorg/adaway/ui/HelpActivity$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 90
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v4, sOnSOffBundle:Landroid/os/Bundle;
    const-string v5, "htmlFile"

    const v6, 0x7f050004

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    iget-object v5, p0, Lorg/adaway/ui/HelpActivity;->mTabsAdapter:Lorg/adaway/ui/HelpActivity$TabsAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f060099

    invoke-virtual {p0, v7}, Lorg/adaway/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const-class v7, Lorg/adaway/ui/HelpFragmentHtml;

    invoke-virtual {v5, v6, v7, v4}, Lorg/adaway/ui/HelpActivity$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 95
    iget-object v5, p0, Lorg/adaway/ui/HelpActivity;->mTabsAdapter:Lorg/adaway/ui/HelpActivity$TabsAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f060098

    invoke-virtual {p0, v7}, Lorg/adaway/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const-class v7, Lorg/donations/DonationsFragment;

    invoke-virtual {v5, v6, v7, v8}, Lorg/adaway/ui/HelpActivity$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v1, changelogBundle:Landroid/os/Bundle;
    const-string v5, "htmlFile"

    const v6, 0x7f050001

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    iget-object v5, p0, Lorg/adaway/ui/HelpActivity;->mTabsAdapter:Lorg/adaway/ui/HelpActivity$TabsAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f06009c

    invoke-virtual {p0, v7}, Lorg/adaway/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const-class v7, Lorg/adaway/ui/HelpFragmentHtml;

    invoke-virtual {v5, v6, v7, v1}, Lorg/adaway/ui/HelpActivity$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 103
    iget-object v5, p0, Lorg/adaway/ui/HelpActivity;->mTabsAdapter:Lorg/adaway/ui/HelpActivity$TabsAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f060097

    invoke-virtual {p0, v7}, Lorg/adaway/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    const-class v7, Lorg/adaway/ui/HelpFragmentAbout;

    invoke-virtual {v5, v6, v7, v8}, Lorg/adaway/ui/HelpActivity$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 61
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 56
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/adaway/ui/BaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lorg/adaway/ui/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
