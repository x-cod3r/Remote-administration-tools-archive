.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# instance fields
.field private bigIntegerSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;->bigIntegerSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;->setAcceptsNull(Z)V

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;->setImmutable(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/math/BigDecimal;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;->bigIntegerSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/math/BigDecimal;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/math/BigDecimal;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;->bigIntegerSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;

    invoke-virtual {p3}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/math/BigInteger;)V

    invoke-virtual {p3}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    goto :goto_0
.end method
