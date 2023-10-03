.class public Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12

    const/4 v1, 0x0

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    check-cast v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v2

    new-array v6, v2, [Ljava/lang/String;

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v7

    array-length v8, v6

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_3

    aget-object v9, v6, v3

    array-length v10, v7

    move v2, v1

    :goto_2
    if-ge v2, v10, :cond_1

    aget-object v11, v7, v2

    iget-object v11, v11, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    aget-object v2, v7, v2

    aput-object v2, v0, v3

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5, p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v2, Lcom/esotericsoftware/kryo/io/InputChunked;

    const/16 v3, 0x400

    invoke-direct {v2, p2, v3}, Lcom/esotericsoftware/kryo/io/InputChunked;-><init>(Ljava/io/InputStream;I)V

    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_6

    aget-object v5, v0, v1

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunks()V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v2, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunks()V

    goto :goto_4

    :cond_6
    return-object v4
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, v2

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/esotericsoftware/kryo/io/OutputChunked;

    const/16 v3, 0x400

    invoke-direct {v1, p2, v3}, Lcom/esotericsoftware/kryo/io/OutputChunked;-><init>(Ljava/io/OutputStream;I)V

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4, v1, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunks()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
