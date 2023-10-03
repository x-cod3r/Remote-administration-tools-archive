.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;
.super Lcom/esotericsoftware/kryo/serializers/MapSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Map;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->setReferences(Z)Z

    move-result v1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->setReferences(Z)Z

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v1
.end method

.method protected createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/TreeMap;

    check-cast p2, Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V
    .locals 2

    move-object v0, p3

    check-cast v0, Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->setReferences(Z)Z

    move-result v1

    invoke-virtual {v0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->setReferences(Z)Z

    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V

    return-void
.end method
