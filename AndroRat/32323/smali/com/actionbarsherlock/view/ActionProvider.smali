.class public abstract Lcom/actionbarsherlock/view/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# instance fields
.field private mSubUiVisibilityListener:Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Lcom/actionbarsherlock/view/SubMenu;)V
    .locals 0
    .parameter "subMenu"

    .prologue
    .line 142
    return-void
.end method

.method public setSubUiVisibilityListener(Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/actionbarsherlock/view/ActionProvider;->mSubUiVisibilityListener:Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;

    .line 162
    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/actionbarsherlock/view/ActionProvider;->mSubUiVisibilityListener:Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/actionbarsherlock/view/ActionProvider;->mSubUiVisibilityListener:Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    .line 155
    :cond_0
    return-void
.end method
