.class Lcom/actionbarsherlock/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$5;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 927
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView$5;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v2}, Lcom/actionbarsherlock/widget/SearchView;->access$13(Lcom/actionbarsherlock/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 965
    :cond_0
    :goto_0
    return v0

    .line 938
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView$5;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
    invoke-static {v2}, Lcom/actionbarsherlock/widget/SearchView;->access$11(Lcom/actionbarsherlock/widget/SearchView;)Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView$5;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
    invoke-static {v2}, Lcom/actionbarsherlock/widget/SearchView;->access$11(Lcom/actionbarsherlock/widget/SearchView;)Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 940
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$5;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/actionbarsherlock/widget/SearchView;->access$14(Lcom/actionbarsherlock/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 945
    :cond_2
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView$5;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
    invoke-static {v2}, Lcom/actionbarsherlock/widget/SearchView;->access$11(Lcom/actionbarsherlock/widget/SearchView;)Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    #calls: Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->isEmpty()Z
    invoke-static {v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->access$0(Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 947
    const/16 v2, 0x42

    if-ne p2, v2, :cond_3

    .line 948
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 951
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView$5;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView$5;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
    invoke-static {v4}, Lcom/actionbarsherlock/widget/SearchView;->access$11(Lcom/actionbarsherlock/widget/SearchView;)Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 952
    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 951
    #calls: Lcom/actionbarsherlock/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v3, v4}, Lcom/actionbarsherlock/widget/SearchView;->access$15(Lcom/actionbarsherlock/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 953
    goto :goto_0

    .line 956
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    goto :goto_0
.end method
