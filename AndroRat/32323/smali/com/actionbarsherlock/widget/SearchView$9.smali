.class Lcom/actionbarsherlock/widget/SearchView$9;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$9;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1655
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1647
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$9;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V
    invoke-static {v0, p1}, Lcom/actionbarsherlock/widget/SearchView;->access$18(Lcom/actionbarsherlock/widget/SearchView;Ljava/lang/CharSequence;)V

    .line 1652
    return-void
.end method
