.class public abstract Lcom/esotericsoftware/kryonet/util/InputStreamSender;
.super Lcom/esotericsoftware/kryonet/util/TcpIdleSender;


# instance fields
.field private final chunk:[B

.field private final input:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/util/TcpIdleSender;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->input:Ljava/io/InputStream;

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->chunk:[B

    return-void
.end method


# virtual methods
.method protected final next()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->chunk:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->chunk:[B

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->chunk:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    new-array v1, v0, [B

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->chunk:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->next([B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryonet/KryoNetException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->chunk:[B

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->next([B)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract next([B)Ljava/lang/Object;
.end method
