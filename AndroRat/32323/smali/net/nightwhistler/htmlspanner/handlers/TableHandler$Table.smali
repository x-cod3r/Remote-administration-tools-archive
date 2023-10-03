.class Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;
.super Ljava/lang/Object;
.source "TableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/nightwhistler/htmlspanner/handlers/TableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Table"
.end annotation


# instance fields
.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/text/Spanned;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;


# direct methods
.method private constructor <init>(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;Lnet/nightwhistler/htmlspanner/handlers/TableHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;-><init>(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)V

    return-void
.end method


# virtual methods
.method public addCell(Landroid/text/Spanned;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 290
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No rows added yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->getBottomRow()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public addRow()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method public getBottomRow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    iget-object v1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/text/Spanned;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    return-object v0
.end method
