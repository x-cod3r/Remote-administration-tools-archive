.class public Lutils/EncoderHelper;
.super Ljava/lang/Object;
.source "EncoderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 71
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v2, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v2           #in:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static decodeHashMap([B)Ljava/util/HashMap;
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v2, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v2           #in:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static decodeHashSet([B)Ljava/util/HashSet;
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 95
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    .local v2, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2           #in:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static encodeArrayList(Ljava/util/ArrayList;)[B
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 60
    .local v2, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 63
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v3

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static encodeHashMap(Ljava/util/HashMap;)[B
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    .local v2, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 41
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static encodeHashSet(Ljava/util/HashSet;)[B
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, l:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 79
    if-nez p0, :cond_0

    .line 87
    :goto_0
    return-object v3

    .line 82
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 84
    .local v2, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 86
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static encodeLong(J)[B
    .locals 2
    .parameter "l"

    .prologue
    .line 103
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    .local v0, b:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
