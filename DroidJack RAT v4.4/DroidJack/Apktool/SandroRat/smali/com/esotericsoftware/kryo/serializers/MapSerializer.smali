.class public Lcom/esotericsoftware/kryo/serializers/MapSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# instance fields
.field private keyClass:Ljava/lang/Class;

.field private keyGenericType:Ljava/lang/Class;

.field private keySerializer:Lcom/esotericsoftware/kryo/Serializer;

.field private keysCanBeNull:Z

.field private valueClass:Ljava/lang/Class;

.field private valueGenericType:Ljava/lang/Class;

.field private valueSerializer:Lcom/esotericsoftware/kryo/Serializer;

.field private valuesCanBeNull:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keysCanBeNull:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valuesCanBeNull:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method protected createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Map;
    .locals 9

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v8

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueClass:Ljava/lang/Class;

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keySerializer:Lcom/esotericsoftware/kryo/Serializer;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyGenericType:Ljava/lang/Class;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyGenericType:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    :cond_0
    iput-object v5, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyGenericType:Ljava/lang/Class;

    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueSerializer:Lcom/esotericsoftware/kryo/Serializer;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueGenericType:Ljava/lang/Class;

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueGenericType:Ljava/lang/Class;

    if-nez v2, :cond_2

    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    :cond_2
    iput-object v5, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueGenericType:Ljava/lang/Class;

    :cond_3
    invoke-virtual {p1, v7}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_8

    if-eqz v0, :cond_5

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keysCanBeNull:Z

    if-eqz v4, :cond_4

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valuesCanBeNull:Z

    if-eqz v4, :cond_6

    invoke-virtual {p1, p2, v3, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    goto :goto_1

    :cond_6
    invoke-virtual {p1, p2, v3, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_7
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_8
    return-object v7
.end method

.method public setGenerics(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Class;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget-object v0, p2, v1

    if-eqz v0, :cond_0

    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p2, v1

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyGenericType:Ljava/lang/Class;

    :cond_0
    aget-object v0, p2, v2

    if-eqz v0, :cond_1

    aget-object v0, p2, v2

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, p2, v2

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueGenericType:Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public setKeyClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keySerializer:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public setKeysCanBeNull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keysCanBeNull:Z

    return-void
.end method

.method public setValueClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueSerializer:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public setValuesCanBeNull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valuesCanBeNull:Z

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V
    .locals 5

    const/4 v3, 0x0

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keySerializer:Lcom/esotericsoftware/kryo/Serializer;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyGenericType:Ljava/lang/Class;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyGenericType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    :cond_0
    iput-object v3, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyGenericType:Ljava/lang/Class;

    :cond_1
    move-object v1, v0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueSerializer:Lcom/esotericsoftware/kryo/Serializer;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueGenericType:Ljava/lang/Class;

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueGenericType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    :cond_2
    iput-object v3, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueGenericType:Ljava/lang/Class;

    :cond_3
    move-object v2, v0

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_5

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keysCanBeNull:Z

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, p2, v4, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valuesCanBeNull:Z

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, p2, v4, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    return-void
.end method
