.class Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;
.super Ljava/lang/Object;


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field protected final map:Lcom/esotericsoftware/kryo/util/ObjectMap;

.field protected nextIndex:I


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method protected advance()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->hasNext:Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->capacity:I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/ObjectMap;->stashSize:I

    add-int/2addr v1, v2

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->hasNext:Z

    :cond_1
    return-void
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->capacity:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->removeStashIndex(I)V

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v1, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->advance()V

    return-void
.end method
