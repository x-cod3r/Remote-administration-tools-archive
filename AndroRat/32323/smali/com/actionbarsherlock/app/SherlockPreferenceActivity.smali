.class public abstract Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SherlockPreferenceActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;


# instance fields
.field private mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCloseOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->closeOptionsMenu()V

    .line 174
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    return-object v0
.end method

.method public getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchInvalidateOptionsMenu()V

    .line 141
    return-void
.end method

.method public onActionModeFinished(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 48
    return-void
.end method

.method public onActionModeStarted(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 45
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchDestroy()V

    .line 82
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 83
    return-void
.end method

.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPanelClosed(ILandroid/view/Menu;)V

    .line 108
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 109
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPause()V

    .line 70
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 71
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 64
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostResume()V

    .line 65
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    invoke-virtual {p0, p3}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchStop()V

    .line 76
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 77
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "title"
    .parameter "color"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchTitleChanged(Ljava/lang/CharSequence;I)V

    .line 94
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 95
    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOpenOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->openOptionsMenu()V

    .line 167
    :cond_0
    return-void
.end method

.method public requestWindowFeature(J)V
    .locals 2
    .parameter "featureId"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 244
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResId"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(I)V

    .line 230
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;)V

    .line 240
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgress(I)V

    .line 253
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .parameter "indeterminate"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminate(Z)V

    .line 257
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 261
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarVisibility(Z)V

    .line 265
    return-void
.end method

.method public setSupportSecondaryProgress(I)V
    .locals 1
    .parameter "secondaryProgress"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setSecondaryProgress(I)V

    .line 269
    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->invalidateOptionsMenu()V

    .line 145
    return-void
.end method
