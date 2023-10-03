.class public Lorg/adaway/ui/BaseFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "BaseFragment.java"


# instance fields
.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mApplyButton:Landroid/widget/Button;

.field private mCurrentButtonsDisabled:Z

.field private mCurrentStatusIconStatus:I

.field private mCurrentStatusText:Ljava/lang/String;

.field private mCurrentStatusTitle:Ljava/lang/String;

.field private mRevertButton:Landroid/widget/Button;

.field private mStatusIcon:Landroid/widget/ImageView;

.field private mStatusProgress:Landroid/widget/ProgressBar;

.field private mStatusText:Landroid/widget/TextView;

.field private mStatusTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private setStatusIcon(I)V
    .locals 3
    .parameter "iconStatus"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    :pswitch_4
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :pswitch_5
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public applyOnClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 252
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v1, Lorg/adaway/service/ApplyService;

    invoke-static {v0, v1}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lorg/adaway/ui/BaseFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    iput-object v4, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 217
    iget-object v4, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f08003a

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/adaway/ui/BaseFragment;->mStatusTitle:Landroid/widget/TextView;

    .line 218
    iget-object v4, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f08003b

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/adaway/ui/BaseFragment;->mStatusText:Landroid/widget/TextView;

    .line 219
    iget-object v4, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f080038

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lorg/adaway/ui/BaseFragment;->mStatusProgress:Landroid/widget/ProgressBar;

    .line 220
    iget-object v4, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f080039

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lorg/adaway/ui/BaseFragment;->mStatusIcon:Landroid/widget/ImageView;

    .line 221
    iget-object v4, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f08003c

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lorg/adaway/ui/BaseFragment;->mApplyButton:Landroid/widget/Button;

    .line 222
    iget-object v4, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f08003d

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lorg/adaway/ui/BaseFragment;->mRevertButton:Landroid/widget/Button;

    .line 225
    if-eqz p1, :cond_1

    .line 226
    const-string v4, "AdAway"

    const-string v5, "BaseFragment coming from an orientation change!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v4, "statusTitle"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, title:Ljava/lang/String;
    const-string v4, "statusText"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, text:Ljava/lang/String;
    const-string v4, "statusIconStatus"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, iconStatus:I
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 232
    invoke-virtual {p0, v3, v2, v1}, Lorg/adaway/ui/BaseFragment;->setStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    :cond_0
    const-string v4, "buttonsEnabled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 236
    .local v0, buttonsDisabled:Z
    invoke-virtual {p0, v0}, Lorg/adaway/ui/BaseFragment;->setButtonsDisabled(Z)V

    .line 238
    .end local v0           #buttonsDisabled:Z
    .end local v1           #iconStatus:I
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/adaway/ui/BaseFragment;->setHasOptionsMenu(Z)V

    .line 244
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 151
    const/high16 v0, 0x7f0e

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 152
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 205
    const v0, 0x7f030018

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 160
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 196
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 162
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lorg/adaway/ui/HostsSourcesActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lorg/adaway/ui/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lorg/adaway/ui/ListsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lorg/adaway/ui/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v2, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Lorg/adaway/helper/OpenHelper;->openHostsFile(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 174
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lorg/adaway/ui/TcpdumpActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lorg/adaway/ui/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 178
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lorg/adaway/ui/PrefsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lorg/adaway/ui/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lorg/adaway/ui/ScanAdwareActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lorg/adaway/ui/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lorg/adaway/service/UpdateService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v2, "org.adaway.BACKGROUND_EXECUTION"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    iget-object v2, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2, v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 192
    .end local v0           #updateIntent:Landroid/content/Intent;
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lorg/adaway/ui/HelpActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lorg/adaway/ui/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x7f080062
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "statusTitle"

    iget-object v1, p0, Lorg/adaway/ui/BaseFragment;->mCurrentStatusTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "statusText"

    iget-object v1, p0, Lorg/adaway/ui/BaseFragment;->mCurrentStatusText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "statusIconStatus"

    iget v1, p0, Lorg/adaway/ui/BaseFragment;->mCurrentStatusIconStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string v0, "buttonsEnabled"

    iget-boolean v1, p0, Lorg/adaway/ui/BaseFragment;->mCurrentButtonsDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method public revertOnClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 261
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v1, Lorg/adaway/service/RevertService;

    invoke-static {v0, v1}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    return-void
.end method

.method public setButtonsDisabled(Z)V
    .locals 4
    .parameter "buttonsDisabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v3, p0, Lorg/adaway/ui/BaseFragment;->mApplyButton:Landroid/widget/Button;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mRevertButton:Landroid/widget/Button;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 127
    iput-boolean p1, p0, Lorg/adaway/ui/BaseFragment;->mCurrentButtonsDisabled:Z

    .line 128
    return-void

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    :cond_1
    move v1, v2

    .line 124
    goto :goto_1
.end method

.method public setStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "title"
    .parameter "text"
    .parameter "iconStatus"

    .prologue
    .line 112
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lorg/adaway/ui/BaseFragment;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-direct {p0, p3}, Lorg/adaway/ui/BaseFragment;->setStatusIcon(I)V

    .line 117
    iput-object p1, p0, Lorg/adaway/ui/BaseFragment;->mCurrentStatusTitle:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lorg/adaway/ui/BaseFragment;->mCurrentStatusText:Ljava/lang/String;

    .line 119
    iput p3, p0, Lorg/adaway/ui/BaseFragment;->mCurrentStatusIconStatus:I

    .line 120
    return-void
.end method
