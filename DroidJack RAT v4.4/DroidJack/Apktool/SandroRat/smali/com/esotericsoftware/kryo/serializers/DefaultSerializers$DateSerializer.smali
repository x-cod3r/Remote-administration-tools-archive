.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Date;)Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readLong(Z)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Date;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Date;)V
    .locals 3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(JZ)I

    return-void
.end method
