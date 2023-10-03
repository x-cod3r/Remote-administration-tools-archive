.class public Lcom/actionbarsherlock/internal/view/StandaloneActionMode;
.super Lcom/actionbarsherlock/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field private mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/widget/ActionBarContextView;Lcom/actionbarsherlock/view/ActionMode$Callback;Z)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "callback"
    .parameter "isFocusable"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/actionbarsherlock/view/ActionMode;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    .line 47
    iput-object p3, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    .line 49
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 50
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 51
    iput-boolean p4, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mFocusable:Z

    .line 52
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mFinished:Z

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mFinished:Z

    .line 92
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 93
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Lcom/actionbarsherlock/view/Menu;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/actionbarsherlock/view/MenuInflater;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z

    .line 83
    return-void
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mFocusable:Z

    return v0
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 126
    return-void
.end method

.method public onCloseSubMenu(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 138
    return-void
.end method

.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->invalidate()V

    .line 142
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 143
    return-void
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .parameter "subMenu"

    .prologue
    const/4 v2, 0x1

    .line 129
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return v2

    .line 133
    :cond_0
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 77
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "subtitle"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
