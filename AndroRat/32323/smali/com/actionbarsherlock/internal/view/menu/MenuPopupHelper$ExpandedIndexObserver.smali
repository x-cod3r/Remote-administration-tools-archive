.class Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;
.super Landroid/database/DataSetObserver;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedIndexObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$3(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 374
    return-void
.end method
