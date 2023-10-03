.class public Lout/Mux;
.super Ljava/lang/Object;
.source "Mux.java"


# instance fields
.field sender:Lout/Sender;


# direct methods
.method public constructor <init>(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lout/Sender;

    invoke-direct {v0, p1}, Lout/Sender;-><init>(Ljava/io/DataOutputStream;)V

    iput-object v0, p0, Lout/Mux;->sender:Lout/Sender;

    .line 36
    return-void
.end method


# virtual methods
.method public send(I[B)V
    .locals 12
    .parameter "chan"
    .parameter "data"

    .prologue
    const/16 v11, 0x800

    .line 45
    const/4 v4, 0x0

    .line 46
    .local v4, last:Z
    const/4 v9, 0x0

    .line 47
    .local v9, envoieTotal:Z
    const/4 v10, 0x0

    .line 48
    .local v10, pointeurData:I
    const/4 v5, 0x0

    .line 51
    .local v5, numSeq:S
    :goto_0
    if-eqz v9, :cond_0

    .line 106
    :goto_1
    return-void

    .line 56
    :cond_0
    if-nez v4, :cond_1

    :try_start_0
    array-length v1, p2

    add-int/lit8 v1, v1, 0xf

    if-ge v1, v11, :cond_3

    .line 58
    :cond_1
    array-length v1, p2

    sub-int/2addr v1, v10

    add-int/lit8 v1, v1, 0xf

    new-array v7, v1, [B

    .line 59
    .local v7, dataToSend:[B
    const/4 v4, 0x1

    .line 60
    const/4 v9, 0x1

    .line 67
    :goto_2
    array-length v1, v7

    add-int/lit8 v2, v1, -0xf

    .line 70
    .local v2, actualLenght:I
    array-length v1, v7

    add-int/lit8 v1, v1, -0xf

    new-array v6, v1, [B

    .line 71
    .local v6, fragData:[B
    const/4 v1, 0x0

    array-length v3, v6

    invoke-static {p2, v10, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    new-instance v0, LPacket/TransportPacket;

    array-length v1, p2

    move v3, p1

    invoke-direct/range {v0 .. v6}, LPacket/TransportPacket;-><init>(IIIZS[B)V

    .line 73
    .local v0, tp:LPacket/TransportPacket;
    invoke-virtual {v0}, LPacket/TransportPacket;->build()[B

    move-result-object v7

    .line 90
    add-int/2addr v10, v2

    .line 91
    add-int/lit8 v1, v5, 0x1

    int-to-short v5, v1

    .line 92
    array-length v1, p2

    sub-int/2addr v1, v10

    const/16 v3, 0x7f1

    if-gt v1, v3, :cond_2

    .line 94
    const/4 v4, 0x1

    .line 97
    :cond_2
    iget-object v1, p0, Lout/Mux;->sender:Lout/Sender;

    invoke-virtual {v1, v7}, Lout/Sender;->send([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v0           #tp:LPacket/TransportPacket;
    .end local v2           #actualLenght:I
    .end local v6           #fragData:[B
    .end local v7           #dataToSend:[B
    :catch_0
    move-exception v8

    .line 103
    .local v8, e:Ljava/lang/NullPointerException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Ce channel n\'est pas index\u00ef\u00bf\u00bd"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v8           #e:Ljava/lang/NullPointerException;
    :cond_3
    const/16 v1, 0x800

    :try_start_1
    new-array v7, v1, [B
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v7       #dataToSend:[B
    goto :goto_2
.end method
