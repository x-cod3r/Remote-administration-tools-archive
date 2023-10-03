.class public Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;


# instance fields
.field private tags:[I


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected initializeCachedFields()V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v6

    const-class v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljava/lang/Deprecated;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v3

    array-length v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->tags:[I

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->tags:[I

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v5, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;->value()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12

    const/4 v11, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    invoke-virtual {p2, v11}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v5

    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->tags:[I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v7

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_3

    invoke-virtual {p2, v11}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v8

    const/4 v0, 0x0

    array-length v9, v6

    move v1, v2

    :goto_1
    if-ge v1, v9, :cond_0

    aget v10, v6, v1

    if-ne v10, v8, :cond_1

    aget-object v0, v7, v1

    :cond_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p2, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->initializeCachedFields()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v1

    array-length v0, v1

    invoke-virtual {p2, v0, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->tags:[I

    aget v3, v3, v0

    invoke-virtual {p2, v3, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    aget-object v3, v1, v0

    invoke-virtual {v3, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
