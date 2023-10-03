.class public Lcom/esotericsoftware/kryo/util/ListReferenceResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/esotericsoftware/kryo/ReferenceResolver;


# instance fields
.field protected kryo:Lcom/esotericsoftware/kryo/Kryo;

.field protected final seenObjects:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addReadObject(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addWrittenObject(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public getReadObject(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrittenId(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public nextReadId(Ljava/lang/Class;)I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->seenObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setKryo(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ListReferenceResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    return-void
.end method

.method public useReferences(Ljava/lang/Class;)Z
    .locals 1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->isWrapperClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
