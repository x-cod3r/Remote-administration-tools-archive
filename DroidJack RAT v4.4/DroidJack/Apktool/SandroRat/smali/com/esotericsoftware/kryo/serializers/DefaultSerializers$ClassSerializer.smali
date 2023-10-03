.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ClassSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ClassSerializer;->setImmutable(Z)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ClassSerializer;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ClassSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ClassSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)V

    return-void
.end method
