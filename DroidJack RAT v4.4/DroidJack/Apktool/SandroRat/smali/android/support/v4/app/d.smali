.class final Landroid/support/v4/app/d;
.super Landroid/support/v4/app/af;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/support/v4/app/t;

.field b:Landroid/support/v4/app/h;

.field c:Landroid/support/v4/app/h;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:I

.field p:I

.field q:Ljava/lang/CharSequence;

.field r:I

.field s:Ljava/lang/CharSequence;

.field t:Ljava/util/ArrayList;

.field u:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/t;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/af;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/d;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/d;->o:I

    iput-object p1, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    return-void
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/i;
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    new-instance v2, Landroid/support/v4/app/i;

    invoke-direct {v2, p0}, Landroid/support/v4/app/i;-><init>(Landroid/support/v4/app/d;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/support/v4/app/i;->d:Landroid/view/View;

    move v6, v7

    move v8, v7

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/d;->a(ILandroid/support/v4/app/i;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    :cond_0
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/d;->a(ILandroid/support/v4/app/i;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    const/4 v2, 0x0

    :cond_3
    return-object v2

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v4/app/d;Landroid/support/v4/app/i;ZLandroid/support/v4/app/l;)Landroid/support/v4/c/a;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/i;ZLandroid/support/v4/app/l;)Landroid/support/v4/c/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/support/v4/app/i;Landroid/support/v4/app/l;Z)Landroid/support/v4/c/a;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    iget-object v1, p0, Landroid/support/v4/app/d;->t:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/app/l;->h()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/util/Map;Landroid/view/View;)V

    if-eqz p3, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/a;->a(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    iget-object v1, p2, Landroid/support/v4/app/l;->Y:Landroid/support/v4/app/as;

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/support/v4/app/l;->Y:Landroid/support/v4/app/as;

    iget-object v2, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/as;->a(Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/i;Landroid/support/v4/c/a;Z)V

    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/d;->t:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/d;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/c/a;)Landroid/support/v4/c/a;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p2, Landroid/support/v4/app/l;->Z:Landroid/support/v4/app/as;

    if-eqz v1, :cond_4

    iget-object v1, p2, Landroid/support/v4/app/l;->Z:Landroid/support/v4/app/as;

    iget-object v2, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/as;->a(Ljava/util/List;Ljava/util/Map;)V

    :cond_4
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/d;->b(Landroid/support/v4/app/i;Landroid/support/v4/c/a;Z)V

    goto :goto_1
.end method

.method private a(Landroid/support/v4/app/i;ZLandroid/support/v4/app/l;)Landroid/support/v4/c/a;
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/app/d;->b(Landroid/support/v4/app/i;Landroid/support/v4/app/l;Z)Landroid/support/v4/c/a;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object v1, p3, Landroid/support/v4/app/l;->Z:Landroid/support/v4/app/as;

    if-eqz v1, :cond_0

    iget-object v1, p3, Landroid/support/v4/app/l;->Z:Landroid/support/v4/app/as;

    iget-object v2, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/as;->a(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/i;Landroid/support/v4/c/a;Z)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p3, Landroid/support/v4/app/l;->Y:Landroid/support/v4/app/as;

    if-eqz v1, :cond_2

    iget-object v1, p3, Landroid/support/v4/app/l;->Y:Landroid/support/v4/app/as;

    iget-object v2, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/as;->a(Ljava/util/List;Ljava/util/Map;)V

    :cond_2
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/d;->b(Landroid/support/v4/app/i;Landroid/support/v4/c/a;Z)V

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/c/a;)Landroid/support/v4/c/a;
    .locals 5

    invoke-virtual {p2}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    new-instance v1, Landroid/support/v4/c/a;

    invoke-direct {v1}, Landroid/support/v4/c/a;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object p2, v1

    goto :goto_0
.end method

.method private static a(Landroid/support/v4/app/l;Landroid/support/v4/app/l;Z)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/l;->w()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/l;->v()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/l;Z)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/l;->u()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/l;->r()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Landroid/support/v4/app/l;Ljava/util/ArrayList;Landroid/support/v4/c/a;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/l;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private a(ILandroid/support/v4/app/l;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iput-object v0, p2, Landroid/support/v4/app/l;->t:Landroid/support/v4/app/t;

    if-eqz p3, :cond_1

    iget-object v0, p2, Landroid/support/v4/app/l;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/app/l;->z:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/l;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/l;->z:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_3

    iget v0, p2, Landroid/support/v4/app/l;->x:I

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/support/v4/app/l;->x:I

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/l;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p2, Landroid/support/v4/app/l;->x:I

    iput p1, p2, Landroid/support/v4/app/l;->y:I

    :cond_3
    new-instance v0, Landroid/support/v4/app/h;

    invoke-direct {v0}, Landroid/support/v4/app/h;-><init>()V

    iput p4, v0, Landroid/support/v4/app/h;->c:I

    iput-object p2, v0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/h;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/d;Landroid/support/v4/app/i;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/i;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/d;Landroid/support/v4/app/i;Landroid/support/v4/app/l;Landroid/support/v4/app/l;ZLandroid/support/v4/c/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/l;Landroid/support/v4/app/l;ZLandroid/support/v4/c/a;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/d;Landroid/support/v4/c/a;Landroid/support/v4/app/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/c/a;Landroid/support/v4/app/i;)V

    return-void
.end method

.method private a(Landroid/support/v4/app/i;ILjava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    iget-object v3, v0, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/l;->I:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/support/v4/app/l;->y:I

    if-ne v3, p2, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/l;->A:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/support/v4/app/i;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/l;->J:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    iget-object v3, p1, Landroid/support/v4/app/i;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-static {p3, v3, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    iget-object v3, p1, Landroid/support/v4/app/i;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Landroid/support/v4/app/i;Landroid/support/v4/app/l;Landroid/support/v4/app/l;ZLandroid/support/v4/c/a;)V
    .locals 4

    if-eqz p4, :cond_1

    iget-object v0, p3, Landroid/support/v4/app/l;->Y:Landroid/support/v4/app/as;

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/c/a;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/c/a;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/as;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p2, Landroid/support/v4/app/l;->Y:Landroid/support/v4/app/as;

    goto :goto_0
.end method

.method private a(Landroid/support/v4/app/i;Landroid/support/v4/c/a;Z)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/support/v4/app/ag;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_2

    iget-object v4, p1, Landroid/support/v4/app/i;->a:Landroid/support/v4/c/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/d;->a(Landroid/support/v4/c/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v4, p1, Landroid/support/v4/app/i;->a:Landroid/support/v4/c/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/d;->a(Landroid/support/v4/c/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(Landroid/support/v4/app/i;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/l;Landroid/support/v4/app/l;ZLjava/util/ArrayList;)V
    .locals 10

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v0, Landroid/support/v4/app/f;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    move-object v5, p1

    move/from16 v6, p6

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/app/f;-><init>(Landroid/support/v4/app/d;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/i;ZLandroid/support/v4/app/l;Landroid/support/v4/app/l;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static a(Landroid/support/v4/app/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/app/i;->a:Landroid/support/v4/c/a;

    invoke-static {v3, v0, v1}, Landroid/support/v4/app/d;->a(Landroid/support/v4/c/a;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/c/a;Landroid/support/v4/app/i;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p2, Landroid/support/v4/app/i;->c:Landroid/support/v4/app/al;

    iput-object v0, v1, Landroid/support/v4/app/al;->a:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/c/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/c/a;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v4/c/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/c/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/support/v4/app/l;->y:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/l;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/l;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/l;->h()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/v4/app/i;ILjava/lang/Object;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Landroid/support/v4/app/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/g;-><init>(Landroid/support/v4/app/d;Landroid/view/View;Landroid/support/v4/app/i;ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private a(ILandroid/support/v4/app/i;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 32

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v4, v4, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/support/v4/app/q;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/l;

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/l;

    move/from16 v0, p3

    invoke-static {v8, v0}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/l;Z)Ljava/lang/Object;

    move-result-object v12

    move/from16 v0, p3

    invoke-static {v8, v9, v0}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/l;Landroid/support/v4/app/l;Z)Ljava/lang/Object;

    move-result-object v7

    move/from16 v0, p3

    invoke-static {v9, v0}, Landroid/support/v4/app/d;->b(Landroid/support/v4/app/l;Z)Ljava/lang/Object;

    move-result-object v10

    if-nez v12, :cond_1

    if-nez v7, :cond_1

    if-nez v10, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/l;Z)Landroid/support/v4/c/a;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/support/v4/app/i;->d:Landroid/view/View;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p3, :cond_8

    iget-object v5, v9, Landroid/support/v4/app/l;->Y:Landroid/support/v4/app/as;

    :goto_2
    if-eqz v5, :cond_2

    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/support/v4/c/a;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/support/v4/c/a;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v14, v15}, Landroid/support/v4/app/as;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    invoke-static {v10, v9, v0, v4}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;Landroid/support/v4/app/l;Ljava/util/ArrayList;Landroid/support/v4/c/a;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_4

    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;Landroid/view/View;)V

    :cond_3
    if-eqz v7, :cond_4

    invoke-static {v7, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;Landroid/view/View;)V

    :cond_4
    new-instance v15, Landroid/support/v4/app/e;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Landroid/support/v4/app/e;-><init>(Landroid/support/v4/app/d;Landroid/support/v4/app/l;)V

    if-eqz v7, :cond_5

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v10, p3

    invoke-direct/range {v4 .. v11}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/i;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/l;Landroid/support/v4/app/l;ZLjava/util/ArrayList;)V

    :cond_5
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Landroid/support/v4/c/a;

    invoke-direct/range {v20 .. v20}, Landroid/support/v4/c/a;-><init>()V

    if-eqz p3, :cond_9

    invoke-virtual {v8}, Landroid/support/v4/app/l;->y()Z

    move-result v4

    :goto_3
    move-object/from16 v0, v25

    invoke-static {v12, v0, v7, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_6

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/i;->c:Landroid/support/v4/app/al;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/i;->a:Landroid/support/v4/c/a;

    move-object/from16 v18, v0

    move-object v13, v7

    move-object v14, v6

    move-object/from16 v21, v11

    invoke-static/range {v12 .. v21}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/am;Landroid/view/View;Landroid/support/v4/app/al;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v29

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/support/v4/app/d;->a(Landroid/view/View;Landroid/support/v4/app/i;ILjava/lang/Object;)V

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/i;->d:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-static {v0, v4, v5}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/i;ILjava/lang/Object;)V

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/support/v4/app/ag;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/i;->b:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v21, v6

    move-object/from16 v23, v12

    move-object/from16 v24, v19

    move-object/from16 v27, v7

    move-object/from16 v28, v11

    move-object/from16 v31, v20

    invoke-static/range {v21 .. v31}, Landroid/support/v4/app/ag;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_6
    if-eqz v29, :cond_a

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v4}, Landroid/support/v4/c/a;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_8
    iget-object v5, v8, Landroid/support/v4/app/l;->Y:Landroid/support/v4/app/as;

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v8}, Landroid/support/v4/app/l;->x()Z

    move-result v4

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private b(Landroid/support/v4/app/i;Landroid/support/v4/app/l;Z)Landroid/support/v4/c/a;
    .locals 3

    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/l;->h()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/d;->t:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/util/Map;Landroid/view/View;)V

    if-eqz p3, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/d;->t:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/d;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/c/a;)Landroid/support/v4/c/a;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/a;->a(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static b(Landroid/support/v4/app/l;Z)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/l;->s()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/l;->t()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Landroid/support/v4/app/i;Landroid/support/v4/c/a;Z)V
    .locals 5

    invoke-virtual {p2}, Landroid/support/v4/c/a;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p2, v2}, Landroid/support/v4/c/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/support/v4/c/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/ag;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    iget-object v4, p1, Landroid/support/v4/app/i;->a:Landroid/support/v4/c/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/d;->a(Landroid/support/v4/c/a;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v4, p1, Landroid/support/v4/app/i;->a:Landroid/support/v4/c/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/d;->a(Landroid/support/v4/c/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private b(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V
    .locals 1

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/support/v4/app/l;->y:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;

    invoke-interface {v0}, Landroid/support/v4/app/q;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/h;

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    iget v0, v3, Landroid/support/v4/app/h;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, v3, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/h;

    move-object v3, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/d;->b(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, v3, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v2, :cond_2

    iget v4, v0, Landroid/support/v4/app/l;->y:I

    iget v5, v2, Landroid/support/v4/app/l;->y:I

    if-ne v4, v5, :cond_3

    :cond_2
    if-ne v0, v2, :cond_4

    const/4 v2, 0x0

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-static {p1, v0}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_3

    :cond_5
    move-object v2, v1

    :cond_6
    invoke-direct {p0, p2, v2}, Landroid/support/v4/app/d;->b(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-static {p1, v0}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-static {p1, v0}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/d;->b(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-static {p1, v0}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/d;->b(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/d;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/d;->n:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v4/c/e;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/c/e;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    invoke-virtual {p0, v0, v3, v1, v3}, Landroid/support/v4/app/d;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/d;->n:Z

    iget-boolean v0, p0, Landroid/support/v4/app/d;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/d;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->o:I

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/t;->a(Ljava/lang/Runnable;Z)V

    iget v0, p0, Landroid/support/v4/app/d;->o:I

    return v0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/d;->o:I

    goto :goto_0
.end method

.method public a(ILandroid/support/v4/app/l;Ljava/lang/String;)Landroid/support/v4/app/af;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/d;->a(ILandroid/support/v4/app/l;Ljava/lang/String;I)V

    return-object p0
.end method

.method public a(Landroid/support/v4/app/l;)Landroid/support/v4/app/af;
    .locals 2

    new-instance v0, Landroid/support/v4/app/h;

    invoke-direct {v0}, Landroid/support/v4/app/h;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/h;->c:I

    iput-object p1, v0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/h;)V

    return-object p0
.end method

.method public a(ZLandroid/support/v4/app/i;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/i;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popFromBackStack: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v4/c/e;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/c/e;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    invoke-virtual {p0, v0, v4, v1, v4}, Landroid/support/v4/app/d;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_3

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p3, p4, v10}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/i;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-virtual {p0, v9}, Landroid/support/v4/app/d;->a(I)V

    if-eqz p2, :cond_4

    move v7, v2

    :goto_1
    if-eqz p2, :cond_5

    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/d;->c:Landroid/support/v4/app/h;

    move-object v6, v0

    :goto_3
    if-eqz v6, :cond_a

    if-eqz p2, :cond_6

    move v5, v2

    :goto_4
    if-eqz p2, :cond_7

    move v0, v2

    :goto_5
    iget v3, v6, Landroid/support/v4/app/h;->c:I

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/support/v4/app/h;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/d;->t:Ljava/util/ArrayList;

    invoke-static {p2, v0, v1}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/support/v4/app/d;->j:I

    move v7, v0

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/support/v4/app/d;->i:I

    move v1, v0

    goto :goto_2

    :cond_6
    iget v0, v6, Landroid/support/v4/app/h;->g:I

    move v5, v0

    goto :goto_4

    :cond_7
    iget v0, v6, Landroid/support/v4/app/h;->h:I

    goto :goto_5

    :pswitch_0
    iget-object v3, v6, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v0, v3, Landroid/support/v4/app/l;->H:I

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-static {v1}, Landroid/support/v4/app/t;->c(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;II)V

    :cond_8
    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/h;

    move-object v6, v0

    goto :goto_3

    :pswitch_1
    iget-object v3, v6, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    if-eqz v3, :cond_9

    iput v0, v3, Landroid/support/v4/app/l;->H:I

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-static {v1}, Landroid/support/v4/app/t;->c(I)I

    move-result v8

    invoke-virtual {v0, v3, v8, v7}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;II)V

    :cond_9
    iget-object v0, v6, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    move v3, v2

    :goto_7
    iget-object v0, v6, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, v6, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    iput v5, v0, Landroid/support/v4/app/l;->H:I

    iget-object v8, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v8, v0, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :pswitch_2
    iget-object v0, v6, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v5, v0, Landroid/support/v4/app/l;->H:I

    iget-object v3, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;Z)V

    goto :goto_6

    :pswitch_3
    iget-object v0, v6, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v5, v0, Landroid/support/v4/app/l;->H:I

    iget-object v3, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-static {v1}, Landroid/support/v4/app/t;->c(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/t;->c(Landroid/support/v4/app/l;II)V

    goto :goto_6

    :pswitch_4
    iget-object v3, v6, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v0, v3, Landroid/support/v4/app/l;->H:I

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-static {v1}, Landroid/support/v4/app/t;->c(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/l;II)V

    goto :goto_6

    :pswitch_5
    iget-object v0, v6, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v5, v0, Landroid/support/v4/app/l;->H:I

    iget-object v3, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-static {v1}, Landroid/support/v4/app/t;->c(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/t;->e(Landroid/support/v4/app/l;II)V

    goto :goto_6

    :pswitch_6
    iget-object v0, v6, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v5, v0, Landroid/support/v4/app/l;->H:I

    iget-object v3, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-static {v1}, Landroid/support/v4/app/t;->c(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/t;->d(Landroid/support/v4/app/l;II)V

    goto :goto_6

    :cond_a
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v2, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget v2, v2, Landroid/support/v4/app/t;->n:I

    invoke-static {v1}, Landroid/support/v4/app/t;->c(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v7, v10}, Landroid/support/v4/app/t;->a(IIIZ)V

    move-object p2, v4

    :cond_b
    iget v0, p0, Landroid/support/v4/app/d;->o:I

    if-ltz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget v1, p0, Landroid/support/v4/app/d;->o:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->b(I)V

    iput v9, p0, Landroid/support/v4/app/d;->o:I

    :cond_c
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method a(I)V
    .locals 6

    iget-boolean v0, p0, Landroid/support/v4/app/d;->k:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/h;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iget v1, v0, Landroid/support/v4/app/l;->s:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/l;->s:I

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iget v3, v3, Landroid/support/v4/app/l;->s:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v2, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, v2, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    iget-object v0, v2, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    iget v3, v0, Landroid/support/v4/app/l;->s:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/l;->s:I

    sget-boolean v3, Landroid/support/v4/app/t;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/l;->s:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, v2, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/h;

    move-object v2, v0

    goto/16 :goto_0
.end method

.method a(Landroid/support/v4/app/h;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/h;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/d;->c:Landroid/support/v4/app/h;

    iput-object p1, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/h;

    :goto_0
    iget v0, p0, Landroid/support/v4/app/d;->e:I

    iput v0, p1, Landroid/support/v4/app/h;->e:I

    iget v0, p0, Landroid/support/v4/app/d;->f:I

    iput v0, p1, Landroid/support/v4/app/h;->f:I

    iget v0, p0, Landroid/support/v4/app/d;->g:I

    iput v0, p1, Landroid/support/v4/app/h;->g:I

    iget v0, p0, Landroid/support/v4/app/d;->h:I

    iput v0, p1, Landroid/support/v4/app/h;->h:I

    iget v0, p0, Landroid/support/v4/app/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/d;->d:I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/d;->c:Landroid/support/v4/app/h;

    iput-object v0, p1, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/h;

    iget-object v0, p0, Landroid/support/v4/app/d;->c:Landroid/support/v4/app/h;

    iput-object p1, v0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/h;

    iput-object p1, p0, Landroid/support/v4/app/d;->c:Landroid/support/v4/app/h;

    goto :goto_0
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;

    invoke-interface {v0}, Landroid/support/v4/app/q;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/h;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget v0, v2, Landroid/support/v4/app/h;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, v2, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/h;

    move-object v2, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-static {p1, v0}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, v2, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    iget-object v0, v2, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/d;->b(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-static {p1, v0}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/d;->b(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/d;->b(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-static {p1, v0}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/d;->b(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, v2, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-static {p1, v0}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/support/v4/app/l;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/d;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/d;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->o:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/d;->n:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroid/support/v4/app/d;->i:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/d;->e:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/d;->f:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Landroid/support/v4/app/d;->g:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/d;->h:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/d;->p:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/d;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/d;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Landroid/support/v4/app/d;->r:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/d;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/d;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/d;->s:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/h;

    if-eqz v0, :cond_10

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/h;

    move v2, v1

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_10

    iget v0, v3, Landroid/support/v4/app/h;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Landroid/support/v4/app/h;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v0, v3, Landroid/support/v4/app/h;->e:I

    if-nez v0, :cond_9

    iget v0, v3, Landroid/support/v4/app/h;->f:I

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/h;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/h;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v0, v3, Landroid/support/v4/app/h;->g:I

    if-nez v0, :cond_b

    iget v0, v3, Landroid/support/v4/app/h;->h:I

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/h;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/h;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v0, v3, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, v3, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    :goto_2
    iget-object v5, v3, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    iget-object v5, v3, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    :cond_d
    if-nez v0, :cond_e

    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    iget-object v3, v3, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/h;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public b(Landroid/support/v4/app/l;)Landroid/support/v4/app/af;
    .locals 2

    new-instance v0, Landroid/support/v4/app/h;

    invoke-direct {v0}, Landroid/support/v4/app/h;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/h;->c:I

    iput-object p1, v0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/h;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 15

    const/4 v6, 0x0

    const/4 v14, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/d;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/d;->o:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v14}, Landroid/support/v4/app/d;->a(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/d;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/i;

    move-result-object v0

    move-object v10, v0

    :goto_0
    if-eqz v10, :cond_2

    move v9, v2

    :goto_1
    if-eqz v10, :cond_3

    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/h;

    move-object v8, v0

    :goto_3
    if-eqz v8, :cond_f

    if-eqz v10, :cond_4

    move v7, v2

    :goto_4
    if-eqz v10, :cond_5

    move v3, v2

    :goto_5
    iget v0, v8, Landroid/support/v4/app/h;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/support/v4/app/h;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Landroid/support/v4/app/d;->j:I

    move v9, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/support/v4/app/d;->i:I

    move v1, v0

    goto :goto_2

    :cond_4
    iget v0, v8, Landroid/support/v4/app/h;->e:I

    move v7, v0

    goto :goto_4

    :cond_5
    iget v0, v8, Landroid/support/v4/app/h;->f:I

    move v3, v0

    goto :goto_5

    :pswitch_0
    iget-object v0, v8, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v7, v0, Landroid/support/v4/app/l;->H:I

    iget-object v3, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;Z)V

    :cond_6
    :goto_6
    iget-object v0, v8, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/h;

    move-object v8, v0

    goto :goto_3

    :pswitch_1
    iget-object v0, v8, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iget-object v4, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v4, v4, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v4, :cond_d

    move v4, v2

    move-object v5, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    sget-boolean v11, Landroid/support/v4/app/t;->a:Z

    if-eqz v11, :cond_7

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OP_REPLACE: adding="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " old="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v5, :cond_8

    iget v11, v0, Landroid/support/v4/app/l;->y:I

    iget v12, v5, Landroid/support/v4/app/l;->y:I

    if-ne v11, v12, :cond_9

    :cond_8
    if-ne v0, v5, :cond_a

    iput-object v6, v8, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    move-object v5, v6

    :cond_9
    :goto_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    :cond_a
    iget-object v11, v8, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    if-nez v11, :cond_b

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v8, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    :cond_b
    iget-object v11, v8, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, v0, Landroid/support/v4/app/l;->H:I

    iget-boolean v11, p0, Landroid/support/v4/app/d;->k:Z

    if-eqz v11, :cond_c

    iget v11, v0, Landroid/support/v4/app/l;->s:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Landroid/support/v4/app/l;->s:I

    sget-boolean v11, Landroid/support/v4/app/t;->a:Z

    if-eqz v11, :cond_c

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bump nesting of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Landroid/support/v4/app/l;->s:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v11, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v11, v0, v1, v9}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;II)V

    goto :goto_8

    :cond_d
    move-object v5, v0

    :cond_e
    if-eqz v5, :cond_6

    iput v7, v5, Landroid/support/v4/app/l;->H:I

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v0, v5, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;Z)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, v8, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v3, v0, Landroid/support/v4/app/l;->H:I

    iget-object v3, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v3, v0, v1, v9}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;II)V

    goto/16 :goto_6

    :pswitch_3
    iget-object v0, v8, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v3, v0, Landroid/support/v4/app/l;->H:I

    iget-object v3, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v3, v0, v1, v9}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/l;II)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v0, v8, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v7, v0, Landroid/support/v4/app/l;->H:I

    iget-object v3, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v3, v0, v1, v9}, Landroid/support/v4/app/t;->c(Landroid/support/v4/app/l;II)V

    goto/16 :goto_6

    :pswitch_5
    iget-object v0, v8, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v3, v0, Landroid/support/v4/app/l;->H:I

    iget-object v3, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v3, v0, v1, v9}, Landroid/support/v4/app/t;->d(Landroid/support/v4/app/l;II)V

    goto/16 :goto_6

    :pswitch_6
    iget-object v0, v8, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iput v7, v0, Landroid/support/v4/app/l;->H:I

    iget-object v3, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v3, v0, v1, v9}, Landroid/support/v4/app/t;->e(Landroid/support/v4/app/l;II)V

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget-object v2, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    iget v2, v2, Landroid/support/v4/app/t;->n:I

    invoke-virtual {v0, v2, v1, v9, v14}, Landroid/support/v4/app/t;->a(IIIZ)V

    iget-boolean v0, p0, Landroid/support/v4/app/d;->k:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/support/v4/app/t;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/d;)V

    :cond_10
    return-void

    :cond_11
    move-object v10, v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/d;->o:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/d;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/d;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
