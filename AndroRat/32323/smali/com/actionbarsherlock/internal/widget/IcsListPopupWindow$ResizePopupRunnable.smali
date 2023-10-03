.class Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "IcsListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$0(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$0(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$0(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$0(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mListItemExpandMaximum:I
    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$1(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$2(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 608
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->show()V

    .line 610
    :cond_0
    return-void
.end method
