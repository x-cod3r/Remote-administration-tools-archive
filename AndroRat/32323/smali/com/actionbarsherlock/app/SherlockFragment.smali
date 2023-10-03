.class public Lcom/actionbarsherlock/app/SherlockFragment;
.super Landroid/support/v4/app/Fragment;
.source "SherlockFragment.java"

# interfaces
.implements Landroid/support/v4/app/Watson$OnCreateOptionsMenuListener;
.implements Landroid/support/v4/app/Watson$OnPrepareOptionsMenuListener;
.implements Landroid/support/v4/app/Watson$OnOptionsItemSelectedListener;


# instance fields
.field private mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 24
    instance-of v0, p1, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " must be attached to a SherlockFragmentActivity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 27
    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iput-object v0, p0, Lcom/actionbarsherlock/app/SherlockFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 40
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/actionbarsherlock/app/SherlockFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 46
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/app/SherlockFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 35
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 36
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 60
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 50
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    .line 51
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 56
    return-void
.end method
