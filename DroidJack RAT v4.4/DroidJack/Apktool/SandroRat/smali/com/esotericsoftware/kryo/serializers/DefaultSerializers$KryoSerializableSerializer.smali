.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$KryoSerializableSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/KryoSerializable;
    .locals 1

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/KryoSerializable;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Lcom/esotericsoftware/kryo/KryoSerializable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$KryoSerializableSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/KryoSerializable;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/esotericsoftware/kryo/KryoSerializable;)V
    .locals 0

    invoke-interface {p3, p1, p2}, Lcom/esotericsoftware/kryo/KryoSerializable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/esotericsoftware/kryo/KryoSerializable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$KryoSerializableSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/esotericsoftware/kryo/KryoSerializable;)V

    return-void
.end method
