.class public Lcom/esotericsoftware/a/p;
.super Lcom/esotericsoftware/a/o;

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/a/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/o;-><init>(Lcom/esotericsoftware/a/l;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/a/o;->b()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/a/p;->b:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/p;->c:Lcom/esotericsoftware/a/l;

    iget-object v0, v0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/a/p;->d:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/esotericsoftware/a/p;->d:I

    iput v1, p0, Lcom/esotericsoftware/a/p;->e:I

    invoke-virtual {p0}, Lcom/esotericsoftware/a/p;->c()V

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/a/o;->remove()V

    return-void
.end method
