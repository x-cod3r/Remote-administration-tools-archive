.class public Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# instance fields
.field private compressionLevel:I

.field private noHeaders:Z

.field private final serializer:Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->compressionLevel:I

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/zip/Inflater;

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    new-instance v0, Lcom/esotericsoftware/kryo/io/Input;

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {p1, v0, p3, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setCompressionLevel(I)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->compressionLevel:I

    return-void
.end method

.method public setNoHeaders(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->compressionLevel:I

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, p2, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    new-instance v0, Lcom/esotericsoftware/kryo/io/Output;

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {p1, v0, p3, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
