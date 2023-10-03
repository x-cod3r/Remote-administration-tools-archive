.class public Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchView:Lcom/actionbarsherlock/widget/SearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1668
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 1669
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1670
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1673
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1674
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1675
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1678
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1679
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1680
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;)Z
    .locals 1
    .parameter

    .prologue
    .line 1695
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 1696
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 1749
    iget v0, p0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1739
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1740
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView;->onTextFocusChanged()V

    .line 1741
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1754
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 1757
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1758
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1759
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 1760
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1775
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v1

    .line 1763
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1764
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1765
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 1766
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1768
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1769
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/SearchView;->clearFocus()V

    .line 1770
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    const/4 v3, 0x0

    #calls: Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V
    invoke-static {v2, v3}, Lcom/actionbarsherlock/widget/SearchView;->access$20(Lcom/actionbarsherlock/widget/SearchView;Z)V

    goto :goto_0

    .line 1775
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 1723
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1725
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1726
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1727
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1726
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1728
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1731
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/actionbarsherlock/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1732
    const/4 v1, 0x1

    #calls: Lcom/actionbarsherlock/widget/SearchView;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    invoke-static {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->access$19(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1735
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1715
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1705
    return-void
.end method

.method setSearchView(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter "searchView"

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 1684
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 1688
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1689
    iput p1, p0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1690
    return-void
.end method
