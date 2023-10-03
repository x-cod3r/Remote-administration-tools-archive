.class public Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;
.super Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->currentIndex:I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->advance()V

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
