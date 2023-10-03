.class Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "IcsListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->show()V

    .line 589
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->dismiss()V

    .line 594
    return-void
.end method
