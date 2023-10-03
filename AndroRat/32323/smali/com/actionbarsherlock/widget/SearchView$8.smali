.class Lcom/actionbarsherlock/widget/SearchView$8;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
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
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$8;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    .line 1353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 1360
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$8;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onItemSelected(I)Z
    invoke-static {v0, p3}, Lcom/actionbarsherlock/widget/SearchView;->access$17(Lcom/actionbarsherlock/widget/SearchView;I)Z

    .line 1361
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1369
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
