.class public Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.super Landroid/support/v4/app/Watson;
.source "SherlockFragmentActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SherlockFragmentActivity"


# instance fields
.field private mIgnoreNativeCreate:Z

.field private mIgnoreNativePrepare:Z

.field private mIgnoreNativeSelected:Z

.field private mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Watson;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativeCreate:Z

    .line 27
    iput-boolean v0, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativePrepare:Z

    .line 28
    iput-boolean v0, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativeSelected:Z

    .line 21
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCloseOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-super {p0}, Landroid/support/v4/app/Watson;->closeOptionsMenu()V

    .line 231
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    return-object v0
.end method

.method public getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchInvalidateOptionsMenu()V

    .line 151
    return-void
.end method

.method public onActionModeFinished(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 54
    return-void
.end method

.method public onActionModeStarted(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 51
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 64
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 65
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 163
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativeCreate:Z

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativeCreate:Z

    .line 165
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 166
    .local v0, result:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativeCreate:Z

    .line 171
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Watson;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchDestroy()V

    .line 88
    invoke-super {p0}, Landroid/support/v4/app/Watson;->onDestroy()V

    .line 89
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 203
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativeSelected:Z

    if-nez v1, :cond_0

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativeSelected:Z

    .line 205
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 206
    .local v0, result:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativeSelected:Z

    .line 211
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Watson;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Watson;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPanelClosed(ILandroid/view/Menu;)V

    .line 114
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Watson;->onPanelClosed(ILandroid/view/Menu;)V

    .line 115
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPause()V

    .line 76
    invoke-super {p0}, Landroid/support/v4/app/Watson;->onPause()V

    .line 77
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->onPostCreate(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/support/v4/app/Watson;->onPostResume()V

    .line 70
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostResume()V

    .line 71
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 183
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativePrepare:Z

    if-nez v1, :cond_0

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativePrepare:Z

    .line 185
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 186
    .local v0, result:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->mIgnoreNativePrepare:Z

    .line 191
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Watson;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchStop()V

    .line 82
    invoke-super {p0}, Landroid/support/v4/app/Watson;->onStop()V

    .line 83
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "title"
    .parameter "color"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchTitleChanged(Ljava/lang/CharSequence;I)V

    .line 100
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Watson;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 101
    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOpenOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-super {p0}, Landroid/support/v4/app/Watson;->openOptionsMenu()V

    .line 224
    :cond_0
    return-void
.end method

.method public requestWindowFeature(J)V
    .locals 2
    .parameter "featureId"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 277
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResId"

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(I)V

    .line 263
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgress(I)V

    .line 286
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .parameter "indeterminate"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminate(Z)V

    .line 290
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 294
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarVisibility(Z)V

    .line 298
    return-void
.end method

.method public setSupportSecondaryProgress(I)V
    .locals 1
    .parameter "secondaryProgress"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setSecondaryProgress(I)V

    .line 302
    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 157
    return-void
.end method
