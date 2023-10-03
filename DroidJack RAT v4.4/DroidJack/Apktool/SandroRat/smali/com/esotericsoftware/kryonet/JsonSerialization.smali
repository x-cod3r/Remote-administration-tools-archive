.class public Lcom/esotericsoftware/kryonet/JsonSerialization;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/esotericsoftware/kryonet/Serialization;


# instance fields
.field private final byteBufferInputStream:Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;

.field private final byteBufferOutputStream:Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;

.field private final json:Lcom/esotericsoftware/a/a;

.field private logBuffer:[B

.field private logging:Z

.field private prettyPrint:Z

.field private final writer:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/esotericsoftware/a/a;

    invoke-direct {v0}, Lcom/esotericsoftware/a/a;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->json:Lcom/esotericsoftware/a/a;

    new-instance v0, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->byteBufferInputStream:Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;

    new-instance v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->byteBufferOutputStream:Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->byteBufferOutputStream:Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->writer:Ljava/io/OutputStreamWriter;

    iput-boolean v2, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->logging:Z

    iput-boolean v2, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->prettyPrint:Z

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->logBuffer:[B

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->json:Lcom/esotericsoftware/a/a;

    const-string v1, "RegisterTCP"

    const-class v2, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->json:Lcom/esotericsoftware/a/a;

    const-string v1, "RegisterUDP"

    const-class v2, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->json:Lcom/esotericsoftware/a/a;

    const-string v1, "KeepAlive"

    const-class v2, Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->json:Lcom/esotericsoftware/a/a;

    const-string v1, "DiscoverHost"

    const-class v2, Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->json:Lcom/esotericsoftware/a/a;

    const-string v1, "Ping"

    const-class v2, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->json:Lcom/esotericsoftware/a/a;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/a;->a(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public getLengthLength()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->byteBufferInputStream:Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->json:Lcom/esotericsoftware/a/a;

    const-class v1, Ljava/lang/Object;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->byteBufferInputStream:Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readLength(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public setLogging(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->logging:Z

    iput-boolean p2, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->prettyPrint:Z

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->byteBufferOutputStream:Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->json:Lcom/esotericsoftware/a/a;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeLength(Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
