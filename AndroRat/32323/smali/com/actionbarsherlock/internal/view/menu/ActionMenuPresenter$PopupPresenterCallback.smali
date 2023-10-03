.class Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 692
    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 693
    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .end local p1
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    .line 695
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z
    .locals 3
    .parameter "subMenu"

    .prologue
    const/4 v2, 0x0

    .line 684
    if-nez p1, :cond_0

    .line 687
    .end local p1
    :goto_0
    return v2

    .line 686
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .end local p1
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getItem()Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    goto :goto_0
.end method
