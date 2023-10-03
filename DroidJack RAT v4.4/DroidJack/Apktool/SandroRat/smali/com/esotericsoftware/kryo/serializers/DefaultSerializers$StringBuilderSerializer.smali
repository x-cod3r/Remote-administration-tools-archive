.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBuilderSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBuilderSerializer;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBuilderSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBuilderSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBuilderSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/CharSequence;)V

    return-void
.end method
