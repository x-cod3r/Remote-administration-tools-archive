.class public Lorg/adaway/ui/PrefsActivity;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "PrefsActivity.java"


# instance fields
.field private mActionBar:Lcom/actionbarsherlock/app/ActionBar;

.field private mActivity:Landroid/content/Context;

.field private mCustomTarget:Landroid/preference/EditTextPreference;

.field private mUpdateCheckDaily:Landroid/preference/CheckBoxPreference;

.field private mWebserverOnBoot:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/adaway/ui/PrefsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/adaway/ui/PrefsActivity;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/adaway/ui/PrefsActivity;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/adaway/ui/PrefsActivity;->mCustomTarget:Landroid/preference/EditTextPreference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0600d5

    const v7, 0x7f0600c4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 79
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iput-object p0, p0, Lorg/adaway/ui/PrefsActivity;->mActivity:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lorg/adaway/ui/PrefsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 84
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 85
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lorg/adaway/ui/PrefsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "preferences"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 88
    const/high16 v3, 0x7f04

    invoke-virtual {p0, v3}, Lorg/adaway/ui/PrefsActivity;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0, v8}, Lorg/adaway/ui/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/adaway/ui/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 96
    .local v0, UpdateDailyPref:Landroid/preference/Preference;
    new-instance v3, Lorg/adaway/ui/PrefsActivity$1;

    invoke-direct {v3, p0}, Lorg/adaway/ui/PrefsActivity$1;-><init>(Lorg/adaway/ui/PrefsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    const v3, 0x7f0600e3

    invoke-virtual {p0, v3}, Lorg/adaway/ui/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/adaway/ui/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 112
    .local v1, WebserverEnabledPref:Landroid/preference/Preference;
    new-instance v3, Lorg/adaway/ui/PrefsActivity$2;

    invoke-direct {v3, p0}, Lorg/adaway/ui/PrefsActivity$2;-><init>(Lorg/adaway/ui/PrefsActivity;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    invoke-virtual {p0}, Lorg/adaway/ui/PrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const v4, 0x7f0600e1

    invoke-virtual {p0, v4}, Lorg/adaway/ui/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mCustomTarget:Landroid/preference/EditTextPreference;

    .line 141
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mActivity:Landroid/content/Context;

    invoke-static {v3}, Lorg/adaway/helper/PreferenceHelper;->getApplyMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "customTarget"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mCustomTarget:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 148
    :goto_0
    const v3, 0x7f0600df

    invoke-virtual {p0, v3}, Lorg/adaway/ui/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/adaway/ui/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 149
    .local v2, customTargetPref:Landroid/preference/Preference;
    new-instance v3, Lorg/adaway/ui/PrefsActivity$3;

    invoke-direct {v3, p0}, Lorg/adaway/ui/PrefsActivity$3;-><init>(Lorg/adaway/ui/PrefsActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    invoke-virtual {p0}, Lorg/adaway/ui/PrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v8}, Lorg/adaway/ui/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mUpdateCheckDaily:Landroid/preference/CheckBoxPreference;

    .line 167
    invoke-virtual {p0}, Lorg/adaway/ui/PrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const v4, 0x7f0600e5

    invoke-virtual {p0, v4}, Lorg/adaway/ui/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mWebserverOnBoot:Landroid/preference/CheckBoxPreference;

    .line 170
    invoke-static {p0}, Lorg/adaway/util/Utils;->isInstalledOnSdCard(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mUpdateCheckDaily:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 172
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mWebserverOnBoot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 173
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mUpdateCheckDaily:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 174
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mWebserverOnBoot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 182
    :goto_1
    return-void

    .line 144
    .end local v2           #customTargetPref:Landroid/preference/Preference;
    :cond_0
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mCustomTarget:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_0

    .line 176
    .restart local v2       #customTargetPref:Landroid/preference/Preference;
    :cond_1
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mUpdateCheckDaily:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 177
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mWebserverOnBoot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 178
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mUpdateCheckDaily:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0600c7

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 179
    iget-object v3, p0, Lorg/adaway/ui/PrefsActivity;->mWebserverOnBoot:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0600bd

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 62
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 70
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 65
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/adaway/ui/BaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lorg/adaway/ui/PrefsActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
