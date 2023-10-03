.class public Lutils/wavIO;
.super Ljava/lang/Object;
.source "wavIO.java"


# instance fields
.field private myBitsPerSample:I

.field private myBlockAlign:I

.field private myByteRate:J

.field private myChannels:J

.field private myChunkSize:J

.field public myData:[B

.field private myDataSize:J

.field private myFormat:I

.field private myPath:Ljava/lang/String;

.field private mySampleRate:J

.field private mySubChunk1Size:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lutils/wavIO;->myPath:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tmpPath"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lutils/wavIO;->myPath:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 4
    .parameter "b"

    .prologue
    .line 317
    const/4 v2, 0x0

    .line 318
    .local v2, start:I
    aget-byte v3, p0, v2

    and-int/lit16 v1, v3, 0xff

    .line 319
    .local v1, low:I
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v0, v3, 0xff

    .line 320
    .local v0, high:I
    shl-int/lit8 v3, v0, 0x8

    or-int/2addr v3, v1

    return v3
.end method

.method public static byteArrayToLong([B)J
    .locals 10
    .parameter "b"

    .prologue
    .line 327
    const/4 v6, 0x0

    .line 328
    .local v6, start:I
    const/4 v3, 0x0

    .line 329
    .local v3, i:I
    const/4 v4, 0x4

    .line 330
    .local v4, len:I
    const/4 v2, 0x0

    .line 331
    .local v2, cnt:I
    new-array v7, v4, [B

    .line 332
    .local v7, tmp:[B
    move v3, v6

    :goto_0
    const/4 v8, 0x4

    if-lt v3, v8, :cond_0

    .line 337
    const-wide/16 v0, 0x0

    .line 338
    .local v0, accum:J
    const/4 v3, 0x0

    .line 339
    const/4 v5, 0x0

    .local v5, shiftBy:I
    :goto_1
    const/16 v8, 0x20

    if-lt v5, v8, :cond_1

    .line 344
    return-wide v0

    .line 334
    .end local v0           #accum:J
    .end local v5           #shiftBy:I
    :cond_0
    aget-byte v8, p0, v3

    aput-byte v8, v7, v2

    .line 335
    add-int/lit8 v2, v2, 0x1

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    .restart local v0       #accum:J
    .restart local v5       #shiftBy:I
    :cond_1
    aget-byte v8, v7, v3

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    shl-long/2addr v8, v5

    or-long/2addr v0, v8

    .line 342
    add-int/lit8 v3, v3, 0x1

    .line 339
    add-int/lit8 v5, v5, 0x8

    goto :goto_1
.end method

.method private static intToByteArray(I)[B
    .locals 3
    .parameter "i"

    .prologue
    .line 354
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 355
    .local v0, b:[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 356
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 357
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 358
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 359
    return-object v0
.end method

.method public static shortToByteArray(S)[B
    .locals 3
    .parameter "data"

    .prologue
    .line 365
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lutils/wavIO;->myPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 5

    .prologue
    .line 304
    const-string v0, "<br>"

    .line 305
    .local v0, newline:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<html>Format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lutils/wavIO;->myFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Channels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lutils/wavIO;->myChannels:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SampleRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lutils/wavIO;->mySampleRate:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ByteRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lutils/wavIO;->myByteRate:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BlockAlign: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lutils/wavIO;->myBlockAlign:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BitsPerSample: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lutils/wavIO;->myBitsPerSample:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DataSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lutils/wavIO;->myDataSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, summary:Ljava/lang/String;
    return-object v1
.end method

.method public read()Z
    .locals 11

    .prologue
    .line 151
    const/4 v4, 0x0

    .line 152
    .local v4, inFile:Ljava/io/DataInputStream;
    const/4 v9, 0x0

    iput-object v9, p0, Lutils/wavIO;->myData:[B

    .line 153
    const/4 v9, 0x4

    new-array v8, v9, [B

    .line 154
    .local v8, tmpLong:[B
    const/4 v9, 0x2

    new-array v7, v9, [B

    .line 158
    .local v7, tmpInt:[B
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    iget-object v10, p0, Lutils/wavIO;->myPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v4           #inFile:Ljava/io/DataInputStream;
    .local v5, inFile:Ljava/io/DataInputStream;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, chunkID:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/io/DataInputStream;->read([B)I

    .line 165
    invoke-static {v8}, Lutils/wavIO;->byteArrayToLong([B)J

    move-result-wide v9

    iput-wide v9, p0, Lutils/wavIO;->myChunkSize:J

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, format:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, subChunk1ID:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/io/DataInputStream;->read([B)I

    .line 177
    invoke-static {v8}, Lutils/wavIO;->byteArrayToLong([B)J

    move-result-wide v9

    iput-wide v9, p0, Lutils/wavIO;->mySubChunk1Size:J

    .line 179
    invoke-virtual {v5, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 180
    invoke-static {v7}, Lutils/wavIO;->byteArrayToInt([B)I

    move-result v9

    iput v9, p0, Lutils/wavIO;->myFormat:I

    .line 182
    invoke-virtual {v5, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 183
    invoke-static {v7}, Lutils/wavIO;->byteArrayToInt([B)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lutils/wavIO;->myChannels:J

    .line 185
    invoke-virtual {v5, v8}, Ljava/io/DataInputStream;->read([B)I

    .line 186
    invoke-static {v8}, Lutils/wavIO;->byteArrayToLong([B)J

    move-result-wide v9

    iput-wide v9, p0, Lutils/wavIO;->mySampleRate:J

    .line 188
    invoke-virtual {v5, v8}, Ljava/io/DataInputStream;->read([B)I

    .line 189
    invoke-static {v8}, Lutils/wavIO;->byteArrayToLong([B)J

    move-result-wide v9

    iput-wide v9, p0, Lutils/wavIO;->myByteRate:J

    .line 191
    invoke-virtual {v5, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 192
    invoke-static {v7}, Lutils/wavIO;->byteArrayToInt([B)I

    move-result v9

    iput v9, p0, Lutils/wavIO;->myBlockAlign:I

    .line 194
    invoke-virtual {v5, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 195
    invoke-static {v7}, Lutils/wavIO;->byteArrayToInt([B)I

    move-result v9

    iput v9, p0, Lutils/wavIO;->myBitsPerSample:I

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, dataChunkID:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/io/DataInputStream;->read([B)I

    .line 205
    invoke-static {v8}, Lutils/wavIO;->byteArrayToLong([B)J

    move-result-wide v9

    iput-wide v9, p0, Lutils/wavIO;->myDataSize:J

    .line 209
    iget-wide v9, p0, Lutils/wavIO;->myDataSize:J

    long-to-int v9, v9

    new-array v9, v9, [B

    iput-object v9, p0, Lutils/wavIO;->myData:[B

    .line 210
    iget-object v9, p0, Lutils/wavIO;->myData:[B

    invoke-virtual {v5, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 213
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    const/4 v9, 0x1

    move-object v4, v5

    .end local v0           #chunkID:Ljava/lang/String;
    .end local v1           #dataChunkID:Ljava/lang/String;
    .end local v3           #format:Ljava/lang/String;
    .end local v5           #inFile:Ljava/io/DataInputStream;
    .end local v6           #subChunk1ID:Ljava/lang/String;
    .restart local v4       #inFile:Ljava/io/DataInputStream;
    :goto_0
    return v9

    .line 215
    :catch_0
    move-exception v2

    .line 217
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 215
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #inFile:Ljava/io/DataInputStream;
    .restart local v5       #inFile:Ljava/io/DataInputStream;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5           #inFile:Ljava/io/DataInputStream;
    .restart local v4       #inFile:Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method public readRaw()V
    .locals 4

    .prologue
    .line 137
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lutils/wavIO;->myPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v1, inFile:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lutils/wavIO;->myDataSize:J

    .line 140
    iget-wide v2, p0, Lutils/wavIO;->myDataSize:J

    long-to-int v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lutils/wavIO;->myData:[B

    .line 141
    iget-object v2, p0, Lutils/wavIO;->myData:[B

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 142
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0           #f:Ljava/io/File;
    .end local v1           #inFile:Ljava/io/DataInputStream;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public save()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 239
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lutils/wavIO;->myPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 242
    .local v1, outFile:Ljava/io/DataOutputStream;
    const-string v3, "RIFF"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 243
    iget-wide v3, p0, Lutils/wavIO;->myChunkSize:J

    long-to-int v3, v3

    invoke-static {v3}, Lutils/wavIO;->intToByteArray(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 244
    const-string v3, "WAVE"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 245
    const-string v3, "fmt "

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 246
    iget-wide v3, p0, Lutils/wavIO;->mySubChunk1Size:J

    long-to-int v3, v3

    invoke-static {v3}, Lutils/wavIO;->intToByteArray(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 247
    iget v3, p0, Lutils/wavIO;->myFormat:I

    int-to-short v3, v3

    invoke-static {v3}, Lutils/wavIO;->shortToByteArray(S)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 248
    iget-wide v3, p0, Lutils/wavIO;->myChannels:J

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-static {v3}, Lutils/wavIO;->shortToByteArray(S)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 249
    iget-wide v3, p0, Lutils/wavIO;->mySampleRate:J

    long-to-int v3, v3

    invoke-static {v3}, Lutils/wavIO;->intToByteArray(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 250
    iget-wide v3, p0, Lutils/wavIO;->myByteRate:J

    long-to-int v3, v3

    invoke-static {v3}, Lutils/wavIO;->intToByteArray(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 251
    iget v3, p0, Lutils/wavIO;->myBlockAlign:I

    int-to-short v3, v3

    invoke-static {v3}, Lutils/wavIO;->shortToByteArray(S)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 252
    iget v3, p0, Lutils/wavIO;->myBitsPerSample:I

    int-to-short v3, v3

    invoke-static {v3}, Lutils/wavIO;->shortToByteArray(S)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 253
    const-string v3, "data"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 254
    iget-wide v3, p0, Lutils/wavIO;->myDataSize:J

    long-to-int v3, v3

    invoke-static {v3}, Lutils/wavIO;->intToByteArray(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 255
    iget-object v3, p0, Lutils/wavIO;->myData:[B

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v2, 0x1

    .end local v1           #outFile:Ljava/io/DataOutputStream;
    :goto_0
    return v2

    .line 257
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public save2()Z
    .locals 4

    .prologue
    .line 271
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lutils/wavIO;->myPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 274
    .local v1, outFile:Ljava/io/DataOutputStream;
    const-string v2, "RIFF"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 275
    iget-wide v2, p0, Lutils/wavIO;->myChunkSize:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 276
    const-string v2, "WAVE"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 277
    const-string v2, "fmt "

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 278
    iget-wide v2, p0, Lutils/wavIO;->mySubChunk1Size:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 279
    iget v2, p0, Lutils/wavIO;->myFormat:I

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 280
    iget-wide v2, p0, Lutils/wavIO;->myChannels:J

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 281
    iget-wide v2, p0, Lutils/wavIO;->mySampleRate:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 282
    iget-wide v2, p0, Lutils/wavIO;->myByteRate:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 283
    iget v2, p0, Lutils/wavIO;->myBlockAlign:I

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 284
    iget v2, p0, Lutils/wavIO;->myBitsPerSample:I

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 285
    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 286
    iget-wide v2, p0, Lutils/wavIO;->myDataSize:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 287
    iget-object v2, p0, Lutils/wavIO;->myData:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    const/4 v2, 0x1

    .end local v1           #outFile:Ljava/io/DataOutputStream;
    :goto_0
    return v2

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setHeaders()V
    .locals 4

    .prologue
    .line 224
    iget-wide v0, p0, Lutils/wavIO;->myDataSize:J

    const-wide/16 v2, 0x24

    add-long/2addr v0, v2

    iput-wide v0, p0, Lutils/wavIO;->myChunkSize:J

    .line 225
    const-wide/16 v0, 0x10

    iput-wide v0, p0, Lutils/wavIO;->mySubChunk1Size:J

    .line 226
    const/4 v0, 0x1

    iput v0, p0, Lutils/wavIO;->myFormat:I

    .line 227
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lutils/wavIO;->myChannels:J

    .line 228
    const-wide/16 v0, 0x2b11

    iput-wide v0, p0, Lutils/wavIO;->mySampleRate:J

    .line 229
    const-wide/16 v0, 0x4e52

    iput-wide v0, p0, Lutils/wavIO;->myByteRate:J

    .line 230
    const/4 v0, 0x2

    iput v0, p0, Lutils/wavIO;->myBlockAlign:I

    .line 231
    const/16 v0, 0x10

    iput v0, p0, Lutils/wavIO;->myBitsPerSample:I

    .line 232
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "newPath"

    .prologue
    .line 120
    iput-object p1, p0, Lutils/wavIO;->myPath:Ljava/lang/String;

    .line 121
    return-void
.end method
