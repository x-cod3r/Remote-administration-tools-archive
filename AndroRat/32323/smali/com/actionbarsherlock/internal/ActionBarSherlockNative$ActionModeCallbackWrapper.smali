.class Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;
.super Ljava/lang/Object;
.source "ActionBarSherlockNative.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/ActionBarSherlockNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Lcom/actionbarsherlock/view/ActionMode$Callback;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    .line 226
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->getMenu()Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->findItem(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    new-instance v1, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    invoke-direct {v1, v2, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Landroid/view/ActionMode;)V

    #setter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$0(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;)V

    .line 233
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->getMenu()Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V

    .line 249
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$2(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$2(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;->onActionModeFinished(Lcom/actionbarsherlock/view/ActionMode;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    invoke-static {v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->getMenu()Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method
