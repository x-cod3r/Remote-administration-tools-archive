.class Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "IcsListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    .line 615
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 616
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 617
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 619
    .local v2, y:I
    if-nez v0, :cond_1

    .line 620
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$2(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$2(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 621
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$2(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$2(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 622
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$3(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;
    invoke-static {v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$4(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 623
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 624
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$3(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;
    invoke-static {v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$4(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
