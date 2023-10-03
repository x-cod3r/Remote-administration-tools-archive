.class Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;
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
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->clearListSelection()V

    .line 600
    return-void
.end method
