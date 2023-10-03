.class public Lcom/esotericsoftware/a/m;
.super Lcom/esotericsoftware/a/o;

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/esotericsoftware/a/n;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/a/l;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/o;-><init>(Lcom/esotericsoftware/a/l;)V

    new-instance v0, Lcom/esotericsoftware/a/n;

    invoke-direct {v0}, Lcom/esotericsoftware/a/n;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/m;->a:Lcom/esotericsoftware/a/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/esotericsoftware/a/n;
    .locals 3

    iget-boolean v0, p0, Lcom/esotericsoftware/a/m;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/m;->c:Lcom/esotericsoftware/a/l;

    iget-object v0, v0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/a/m;->a:Lcom/esotericsoftware/a/n;

    iget v2, p0, Lcom/esotericsoftware/a/m;->d:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/esotericsoftware/a/n;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/esotericsoftware/a/m;->a:Lcom/esotericsoftware/a/n;

    iget-object v1, p0, Lcom/esotericsoftware/a/m;->c:Lcom/esotericsoftware/a/l;

    iget-object v1, v1, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/esotericsoftware/a/m;->d:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/esotericsoftware/a/n;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/esotericsoftware/a/m;->d:I

    iput v0, p0, Lcom/esotericsoftware/a/m;->e:I

    invoke-virtual {p0}, Lcom/esotericsoftware/a/m;->c()V

    iget-object v0, p0, Lcom/esotericsoftware/a/m;->a:Lcom/esotericsoftware/a/n;

    return-object v0
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/a/o;->b()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/a/m;->b:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/a/m;->a()Lcom/esotericsoftware/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/a/o;->remove()V

    return-void
.end method
