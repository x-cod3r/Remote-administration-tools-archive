.class Lcom/actionbarsherlock/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1349
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z
    invoke-static {v0, p3, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->access$16(Lcom/actionbarsherlock/widget/SearchView;IILjava/lang/String;)Z

    .line 1350
    return-void
.end method
