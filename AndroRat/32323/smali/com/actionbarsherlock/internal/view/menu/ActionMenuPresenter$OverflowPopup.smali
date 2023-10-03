.class Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;
.super Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"
    .parameter "overflowOnly"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 633
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 634
    iget-object v0, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    .line 635
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 639
    invoke-super {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 640
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close()V

    .line 641
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    #setter for: Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->access$1(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V

    .line 642
    return-void
.end method
