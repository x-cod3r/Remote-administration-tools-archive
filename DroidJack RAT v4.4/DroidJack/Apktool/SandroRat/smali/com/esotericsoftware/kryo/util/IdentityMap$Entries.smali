.class public Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;
.super Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# instance fields
.field private entry:Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IdentityMap;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/IdentityMap;)V

    new-instance v0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method public next()Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;
    .locals 3

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->hasNext:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->map:Lcom/esotericsoftware/kryo/util/IdentityMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->nextIndex:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;->key:Ljava/lang/Object;

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->map:Lcom/esotericsoftware/kryo/util/IdentityMap;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/util/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->nextIndex:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;->value:Ljava/lang/Object;

    iget v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->nextIndex:I

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->currentIndex:I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->findNextIndex()V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->next()Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;->reset()V

    return-void
.end method
