.class public Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$LongArraySerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$LongArraySerializer;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$LongArraySerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;[J)[J

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;[J)[J
    .locals 3

    const/4 v2, 0x0

    array-length v0, p2

    new-array v0, v0, [J

    array-length v1, v0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$LongArraySerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[J

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[J
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v3, v0, -0x1

    new-array v0, v3, [J

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readLong(Z)J

    move-result-wide v4

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, [J

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$LongArraySerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[J)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[J)V
    .locals 6

    const/4 v1, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p3

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    array-length v2, p3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, p3, v0

    invoke-virtual {p2, v4, v5, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(JZ)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
