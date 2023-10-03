.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CurrencySerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CurrencySerializer;->setImmutable(Z)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CurrencySerializer;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CurrencySerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Currency;
    .locals 1

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/util/Currency;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CurrencySerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Currency;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Currency;)V
    .locals 1

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
