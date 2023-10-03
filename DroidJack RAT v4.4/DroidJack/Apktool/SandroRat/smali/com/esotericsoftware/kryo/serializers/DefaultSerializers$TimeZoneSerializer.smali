.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;->setImmutable(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/TimeZone;
    .locals 1

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/TimeZone;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/TimeZone;)V
    .locals 1

    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    return-void
.end method
