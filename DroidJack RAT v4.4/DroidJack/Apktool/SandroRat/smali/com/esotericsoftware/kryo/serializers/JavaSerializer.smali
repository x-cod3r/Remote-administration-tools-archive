.class public Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# instance fields
.field private lastOutput:Lcom/esotericsoftware/kryo/io/Output;

.field private objectStream:Ljava/io/ObjectOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    const-string v2, "Error during Java deserialization."

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;->lastOutput:Lcom/esotericsoftware/kryo/io/Output;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;->objectStream:Ljava/io/ObjectOutputStream;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;->lastOutput:Lcom/esotericsoftware/kryo/io/Output;

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;->objectStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;->objectStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;->objectStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    const-string v2, "Error during Java serialization."

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
