.class public Lcom/esotericsoftware/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[S

.field private static final c:[C

.field private static final d:[B

.field private static final e:[B

.field private static final f:[S

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B


# instance fields
.field private final j:Ljava/util/ArrayList;

.field private k:Lcom/esotericsoftware/a/g;

.field private l:Lcom/esotericsoftware/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/esotericsoftware/a/f;->b()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/f;->a:[B

    invoke-static {}, Lcom/esotericsoftware/a/f;->c()[S

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/f;->b:[S

    invoke-static {}, Lcom/esotericsoftware/a/f;->d()[C

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/f;->c:[C

    invoke-static {}, Lcom/esotericsoftware/a/f;->e()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/f;->d:[B

    invoke-static {}, Lcom/esotericsoftware/a/f;->f()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/f;->e:[B

    invoke-static {}, Lcom/esotericsoftware/a/f;->g()[S

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/f;->f:[S

    invoke-static {}, Lcom/esotericsoftware/a/f;->h()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/f;->g:[B

    invoke-static {}, Lcom/esotericsoftware/a/f;->i()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/f;->h:[B

    invoke-static {}, Lcom/esotericsoftware/a/f;->j()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/f;->i:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/esotericsoftware/a/g;)V
    .locals 1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/f;->l:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/f;->l:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/f;->l:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/g;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/f;->l:Lcom/esotericsoftware/a/g;

    iput-object v0, p0, Lcom/esotericsoftware/a/f;->k:Lcom/esotericsoftware/a/g;

    goto :goto_0
.end method

.method private static b()[B
    .locals 1

    const/16 v0, 0x4e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
        0x5t
        0x1t
        0x9t
        0x1t
        0xat
        0x1t
        0xbt
        0x1t
        0xct
        0x2t
        0x0t
        0x2t
        0x2t
        0x0t
        0x3t
        0x2t
        0x3t
        0xat
        0x2t
        0x3t
        0xct
        0x2t
        0x4t
        0xat
        0x2t
        0x4t
        0xct
        0x2t
        0x5t
        0xat
        0x2t
        0x5t
        0xct
        0x2t
        0x6t
        0x3t
        0x2t
        0x7t
        0x3t
        0x2t
        0x8t
        0x3t
        0x3t
        0x6t
        0x3t
        0xat
        0x3t
        0x6t
        0x3t
        0xct
        0x3t
        0x7t
        0x3t
        0xat
        0x3t
        0x7t
        0x3t
        0xct
        0x3t
        0x8t
        0x3t
        0xat
        0x3t
        0x8t
        0x3t
        0xct
    .end array-data
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x10

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x4

    goto :goto_0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    new-instance v1, Lcom/esotericsoftware/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal escaped character: \\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const/16 v0, 0x8

    :goto_1
    :sswitch_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xc

    goto :goto_1

    :sswitch_3
    const/16 v0, 0xa

    goto :goto_1

    :sswitch_4
    const/16 v0, 0xd

    goto :goto_1

    :sswitch_5
    const/16 v0, 0x9

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2f -> :sswitch_1
        0x5c -> :sswitch_1
        0x62 -> :sswitch_0
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
    .end sparse-switch
.end method

.method private static c()[S
    .locals 1

    const/16 v0, 0x5c

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x12s
        0x14s
        0x16s
        0x1fs
        0x21s
        0x25s
        0x27s
        0x36s
        0x38s
        0x3as
        0x3es
        0x50s
        0x52s
        0x54s
        0x59s
        0x67s
        0x6es
        0x70s
        0x73s
        0x7bs
        0x7fs
        0x81s
        0x87s
        0x90s
        0x97s
        0x99s
        0xa1s
        0xaas
        0xaes
        0xb0s
        0xb7s
        0xbfs
        0xc7s
        0xcfs
        0xd7s
        0xdes
        0xe6s
        0xees
        0xf6s
        0xfds
        0x105s
        0x10ds
        0x115s
        0x11cs
        0x125s
        0x139s
        0x13bs
        0x13ds
        0x142s
        0x155s
        0x15cs
        0x15es
        0x166s
        0x16fs
        0x173s
        0x175s
        0x17cs
        0x184s
        0x18cs
        0x194s
        0x19cs
        0x1a3s
        0x1abs
        0x1b3s
        0x1bbs
        0x1c2s
        0x1cas
        0x1d2s
        0x1das
        0x1e1s
        0x1eas
        0x1eds
        0x1f4s
        0x1fas
        0x201s
        0x206s
        0x20es
        0x216s
        0x21es
        0x226s
        0x22ds
        0x235s
        0x23ds
        0x245s
        0x24cs
        0x254s
        0x25cs
        0x264s
        0x26bs
        0x26bs
    .end array-data
.end method

.method private static d()[C
    .locals 1

    const/16 v0, 0x26c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x20s
        0x22s
        0x24s
        0x2ds
        0x5bs
        0x5fs
        0x66s
        0x6es
        0x74s
        0x7bs
        0x9s
        0xds
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x22s
        0x5cs
        0x22s
        0x5cs
        0x22s
        0x2fs
        0x5cs
        0x62s
        0x66s
        0x6es
        0x72s
        0x74s
        0x75s
        0x30s
        0x39s
        0x2bs
        0x2ds
        0x30s
        0x39s
        0x30s
        0x39s
        0x20s
        0x22s
        0x24s
        0x2cs
        0x2ds
        0x5fs
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x22s
        0x5cs
        0x22s
        0x5cs
        0x20s
        0x3as
        0x9s
        0xds
        0x20s
        0x22s
        0x24s
        0x2ds
        0x5bs
        0x5fs
        0x66s
        0x6es
        0x74s
        0x7bs
        0x9s
        0xds
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x22s
        0x5cs
        0x22s
        0x5cs
        0x20s
        0x2cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x22s
        0x24s
        0x2ds
        0x5fs
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x2es
        0x30s
        0x39s
        0x20s
        0x3as
        0x45s
        0x65s
        0x9s
        0xds
        0x30s
        0x39s
        0x2bs
        0x2ds
        0x30s
        0x39s
        0x30s
        0x39s
        0x20s
        0x3as
        0x9s
        0xds
        0x30s
        0x39s
        0x22s
        0x2fs
        0x5cs
        0x62s
        0x66s
        0x6es
        0x72s
        0x74s
        0x75s
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x2es
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x45s
        0x65s
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x2bs
        0x2ds
        0x30s
        0x39s
        0x30s
        0x39s
        0x20s
        0x2cs
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x61s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x6cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x73s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x65s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x75s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x6cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x6cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x72s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x75s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x65s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x22s
        0x2fs
        0x5cs
        0x62s
        0x66s
        0x6es
        0x72s
        0x74s
        0x75s
        0x20s
        0x22s
        0x24s
        0x2cs
        0x2ds
        0x5bs
        0x5ds
        0x5fs
        0x66s
        0x6es
        0x74s
        0x7bs
        0x9s
        0xds
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x22s
        0x5cs
        0x22s
        0x5cs
        0x20s
        0x2cs
        0x5ds
        0x9s
        0xds
        0x20s
        0x22s
        0x24s
        0x2ds
        0x5bs
        0x5ds
        0x5fs
        0x66s
        0x6es
        0x74s
        0x7bs
        0x9s
        0xds
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x2es
        0x5ds
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x45s
        0x5ds
        0x65s
        0x9s
        0xds
        0x30s
        0x39s
        0x2bs
        0x2ds
        0x30s
        0x39s
        0x30s
        0x39s
        0x20s
        0x2cs
        0x5ds
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x61s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x6cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x73s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x65s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x75s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x6cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x6cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x72s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x75s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x65s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x22s
        0x2fs
        0x5cs
        0x62s
        0x66s
        0x6es
        0x72s
        0x74s
        0x75s
        0x20s
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x20s
        0x2es
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x45s
        0x65s
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x61s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x6cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x73s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x65s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x75s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x6cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x6cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x72s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x75s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x65s
        0x7ds
        0x9s
        0xds
        0x20s
        0x2cs
        0x3as
        0x5ds
        0x7ds
        0x9s
        0xds
        0x0s
    .end array-data
.end method

.method private static e()[B
    .locals 1

    const/16 v0, 0x5c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0xat
        0x2t
        0x2t
        0x7t
        0x0t
        0x2t
        0x0t
        0x7t
        0x2t
        0x2t
        0x2t
        0xat
        0x2t
        0x2t
        0x3t
        0x6t
        0x5t
        0x0t
        0x1t
        0x4t
        0x2t
        0x0t
        0x2t
        0x7t
        0x5t
        0x0t
        0x4t
        0x5t
        0x2t
        0x0t
        0x3t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0xct
        0x2t
        0x2t
        0x3t
        0xbt
        0x5t
        0x0t
        0x4t
        0x5t
        0x2t
        0x0t
        0x3t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0x1t
        0x5t
        0x2t
        0x3t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x0t
        0x0t
    .end array-data
.end method

.method private static f()[B
    .locals 1

    const/16 v0, 0x5c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x4t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x0t
        0x0t
        0x1t
        0x4t
        0x0t
        0x0t
        0x1t
        0x4t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x0t
        0x0t
        0x1t
        0x4t
        0x1t
        0x1t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static g()[S
    .locals 1

    const/16 v0, 0x5c

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xfs
        0x12s
        0x15s
        0x1es
        0x20s
        0x24s
        0x26s
        0x32s
        0x35s
        0x38s
        0x3cs
        0x4bs
        0x4es
        0x51s
        0x56s
        0x61s
        0x68s
        0x6as
        0x6ds
        0x74s
        0x78s
        0x7as
        0x7fs
        0x88s
        0x8fs
        0x91s
        0x98s
        0xa0s
        0xa4s
        0xa6s
        0xacs
        0xb4s
        0xbcs
        0xc4s
        0xccs
        0xd3s
        0xdbs
        0xe3s
        0xebs
        0xf2s
        0xfas
        0x102s
        0x10as
        0x111s
        0x11as
        0x12bs
        0x12es
        0x131s
        0x136s
        0x146s
        0x14ds
        0x14fs
        0x156s
        0x15es
        0x162s
        0x164s
        0x16as
        0x172s
        0x17as
        0x182s
        0x18as
        0x191s
        0x199s
        0x1a1s
        0x1a9s
        0x1b0s
        0x1b8s
        0x1c0s
        0x1c8s
        0x1cfs
        0x1d8s
        0x1dbs
        0x1e2s
        0x1e7s
        0x1eds
        0x1f1s
        0x1f9s
        0x201s
        0x209s
        0x211s
        0x218s
        0x220s
        0x228s
        0x230s
        0x237s
        0x23fs
        0x247s
        0x24fs
        0x256s
        0x257s
    .end array-data
.end method

.method private static h()[B
    .locals 1

    const/16 v0, 0x259

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x49t
        0x5t
        0x48t
        0x49t
        0x4dt
        0x52t
        0x56t
        0x48t
        0x1t
        0x4at
        0x49t
        0x49t
        0x0t
        0x48t
        0x4t
        0x3t
        0x48t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x4at
        0x0t
        0x7t
        0x7t
        0x4ct
        0x0t
        0x4ct
        0x0t
        0x8t
        0x9t
        0x11t
        0x10t
        0x12t
        0x11t
        0x5at
        0x8t
        0x11t
        0x11t
        0x11t
        0x0t
        0xbt
        0x2dt
        0xat
        0xbt
        0x2dt
        0xat
        0xbt
        0xct
        0xbt
        0x0t
        0xct
        0xdt
        0x19t
        0x1at
        0xft
        0x19t
        0x20t
        0x25t
        0x29t
        0xft
        0xct
        0x1bt
        0x19t
        0x19t
        0x0t
        0xft
        0x18t
        0xet
        0xft
        0x18t
        0xet
        0xft
        0x10t
        0x5at
        0xft
        0x0t
        0x10t
        0x9t
        0x11t
        0x12t
        0x11t
        0x5at
        0x10t
        0x11t
        0x11t
        0x11t
        0x0t
        0xbt
        0x0t
        0xct
        0x0t
        0x0t
        0xbt
        0x11t
        0x13t
        0x0t
        0x14t
        0x13t
        0x0t
        0xbt
        0xct
        0x15t
        0x15t
        0xbt
        0x14t
        0x0t
        0x16t
        0x16t
        0x17t
        0x0t
        0x17t
        0x0t
        0xbt
        0xct
        0xbt
        0x17t
        0x0t
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0x0t
        0xft
        0x10t
        0x0t
        0x0t
        0x5at
        0xft
        0x19t
        0x1bt
        0x0t
        0xft
        0x10t
        0x1ct
        0x5at
        0xft
        0x1bt
        0x0t
        0xft
        0x10t
        0x1dt
        0x1dt
        0x5at
        0xft
        0x1ct
        0x0t
        0x1et
        0x1et
        0x1ft
        0x0t
        0x1ft
        0x0t
        0xft
        0x10t
        0x5at
        0xft
        0x1ft
        0x0t
        0xft
        0x10t
        0x0t
        0x0t
        0x21t
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x22t
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x23t
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x24t
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x26t
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x27t
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x28t
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x2at
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x2bt
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x2ct
        0x5at
        0xft
        0x19t
        0xft
        0x10t
        0x0t
        0x0t
        0x5at
        0xft
        0x19t
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0x0t
        0x2et
        0x2ft
        0x33t
        0x32t
        0x34t
        0x31t
        0x5bt
        0x33t
        0x3at
        0x3ft
        0x43t
        0x31t
        0x2et
        0x35t
        0x33t
        0x33t
        0x0t
        0x31t
        0x47t
        0x30t
        0x31t
        0x47t
        0x30t
        0x31t
        0x32t
        0x5bt
        0x31t
        0x0t
        0x32t
        0x2ft
        0x33t
        0x34t
        0x31t
        0x5bt
        0x33t
        0x3at
        0x3ft
        0x43t
        0x31t
        0x32t
        0x35t
        0x33t
        0x33t
        0x0t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x0t
        0x31t
        0x33t
        0x35t
        0x0t
        0x31t
        0x32t
        0x36t
        0x5bt
        0x31t
        0x35t
        0x0t
        0x31t
        0x32t
        0x37t
        0x5bt
        0x37t
        0x31t
        0x36t
        0x0t
        0x38t
        0x38t
        0x39t
        0x0t
        0x39t
        0x0t
        0x31t
        0x32t
        0x5bt
        0x31t
        0x39t
        0x0t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x3bt
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x3ct
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x3dt
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x3et
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x40t
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x41t
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x42t
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x44t
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x45t
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x46t
        0x0t
        0x31t
        0x33t
        0x31t
        0x32t
        0x0t
        0x5bt
        0x0t
        0x31t
        0x33t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x0t
        0x48t
        0x48t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x49t
        0x48t
        0x4bt
        0x48t
        0x4at
        0x0t
        0x48t
        0x6t
        0x6t
        0x48t
        0x4bt
        0x0t
        0x48t
        0x48t
        0x4ct
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x4et
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x4ft
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x50t
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x51t
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x53t
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x54t
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x55t
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x57t
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x58t
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x59t
        0x0t
        0x48t
        0x49t
        0x48t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static i()[B
    .locals 1

    const/16 v0, 0x259

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x11t
        0x1t
        0x1t
        0x1t
        0x1t
        0xdt
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x18t
        0x1t
        0x1t
        0x7t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0xft
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x15t
        0x1t
        0x1t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x11t
        0x1t
        0x1t
        0x1t
        0x1t
        0xdt
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x18t
        0x1t
        0x1t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0xft
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0xft
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x5t
        0x0t
        0x5t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x5t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x5t
        0x5t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0x27t
        0xbt
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x21t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x21t
        0x9t
        0x0t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x30t
        0x30t
        0x0t
        0x0t
        0x3et
        0x30t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x33t
        0x33t
        0x0t
        0x0t
        0x46t
        0x33t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x7t
        0x0t
        0x2dt
        0x2dt
        0x0t
        0x0t
        0x36t
        0x2dt
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x11t
        0x13t
        0x1t
        0x1t
        0x1t
        0x1t
        0xdt
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x18t
        0x1t
        0x1t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x13t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x11t
        0x13t
        0x1t
        0x1t
        0x1t
        0x1t
        0xdt
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0x2at
        0xbt
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x24t
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x24t
        0x9t
        0x0t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x0t
        0x7t
        0x0t
        0x30t
        0x30t
        0x0t
        0x42t
        0x0t
        0x30t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x0t
        0x7t
        0x0t
        0x33t
        0x33t
        0x0t
        0x4at
        0x0t
        0x33t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1et
        0x0t
        0x0t
        0x7t
        0x0t
        0x2dt
        0x2dt
        0x0t
        0x3at
        0x0t
        0x2dt
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0xbt
        0x0t
        0xbt
        0x0t
        0x0t
        0x9t
        0x0t
        0x0t
        0x9t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x33t
        0x0t
        0x0t
        0x0t
        0x0t
        0x33t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x2dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x2dt
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static j()[B
    .locals 1

    const/16 v0, 0x5c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0xbt
        0x9t
        0x9t
        0x7t
        0x7t
        0x7t
        0x7t
        0x30t
        0x7t
        0x7t
        0x7t
        0x33t
        0x7t
        0x7t
        0x7t
        0x2dt
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/esotericsoftware/a/g;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/f;->a(Ljava/io/Reader;)Lcom/esotericsoftware/a/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/io/Reader;)Lcom/esotericsoftware/a/g;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x400

    :try_start_0
    new-array v2, v1, [C

    :goto_0
    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1, v2, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/esotericsoftware/a/f;->a([CII)Lcom/esotericsoftware/a/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_0
    if-nez v1, :cond_1

    :try_start_2
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v2, v1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public a([CII)Lcom/esotericsoftware/a/g;
    .locals 22

    const/4 v4, 0x4

    new-array v11, v4, [I

    const/4 v8, 0x0

    new-instance v16, Ljava/util/ArrayList;

    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v15, v7

    move/from16 v7, p2

    move/from16 v21, v6

    move v6, v10

    move v10, v4

    move v4, v5

    move/from16 v5, v21

    :goto_0
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move v6, v7

    :cond_0
    move v7, v6

    move-object v6, v9

    :goto_1
    move/from16 v0, p3

    if-ge v7, v0, :cond_22

    const/4 v5, 0x1

    const/4 v4, 0x0

    move/from16 v21, v4

    move v4, v5

    move/from16 v5, v21

    :goto_2
    if-ge v5, v7, :cond_21

    aget-char v8, p1, v5

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :pswitch_1
    move/from16 v0, p3

    if-ne v7, v0, :cond_2

    const/4 v10, 0x4

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    const/4 v10, 0x5

    goto :goto_0

    :cond_3
    :pswitch_2
    :try_start_0
    sget-object v10, Lcom/esotericsoftware/a/f;->b:[S

    aget-short v13, v10, v6

    sget-object v10, Lcom/esotericsoftware/a/f;->f:[S

    aget-short v10, v10, v6

    sget-object v12, Lcom/esotericsoftware/a/f;->d:[B

    aget-byte v17, v12, v6

    if-lez v17, :cond_4

    add-int v12, v13, v17

    add-int/lit8 v12, v12, -0x1

    move v14, v13

    :goto_3
    if-ge v12, v14, :cond_6

    add-int v13, v13, v17

    add-int v10, v10, v17

    :cond_4
    sget-object v12, Lcom/esotericsoftware/a/f;->e:[B

    aget-byte v14, v12, v6

    if-lez v14, :cond_28

    shl-int/lit8 v6, v14, 0x1

    add-int/2addr v6, v13

    add-int/lit8 v6, v6, -0x2

    move v12, v13

    :goto_4
    if-ge v6, v12, :cond_9

    add-int v6, v10, v14

    :goto_5
    sget-object v10, Lcom/esotericsoftware/a/f;->g:[B

    aget-byte v10, v10, v6

    sget-object v12, Lcom/esotericsoftware/a/f;->h:[B

    aget-byte v12, v12, v6

    if-eqz v12, :cond_17

    sget-object v12, Lcom/esotericsoftware/a/f;->h:[B

    aget-byte v6, v12, v6

    sget-object v13, Lcom/esotericsoftware/a/f;->a:[B

    add-int/lit8 v12, v6, 0x1

    aget-byte v6, v13, v6

    move v13, v12

    move/from16 v21, v6

    move v6, v5

    move v5, v4

    move/from16 v4, v21

    :goto_6
    add-int/lit8 v12, v4, -0x1

    if-lez v4, :cond_16

    sget-object v4, Lcom/esotericsoftware/a/f;->a:[B

    add-int/lit8 v14, v13, 0x1

    aget-byte v4, v4, v13

    packed-switch v4, :pswitch_data_1

    :cond_5
    move v4, v5

    move v5, v6

    move v6, v8

    :goto_7
    move v13, v14

    move v8, v6

    move v6, v5

    move v5, v4

    move v4, v12

    goto :goto_6

    :cond_6
    sub-int v18, v12, v14

    shr-int/lit8 v18, v18, 0x1

    add-int v18, v18, v14

    aget-char v19, p1, v7

    sget-object v20, Lcom/esotericsoftware/a/f;->c:[C

    aget-char v20, v20, v18

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    add-int/lit8 v12, v18, -0x1

    goto :goto_3

    :cond_7
    aget-char v14, p1, v7

    sget-object v19, Lcom/esotericsoftware/a/f;->c:[C

    aget-char v19, v19, v18

    move/from16 v0, v19

    if-le v14, v0, :cond_8

    add-int/lit8 v14, v18, 0x1

    goto :goto_3

    :cond_8
    sub-int v6, v18, v13

    add-int/2addr v6, v10

    goto :goto_5

    :cond_9
    sub-int v17, v6, v12

    shr-int/lit8 v17, v17, 0x1

    and-int/lit8 v17, v17, -0x2

    add-int v17, v17, v12

    aget-char v18, p1, v7

    sget-object v19, Lcom/esotericsoftware/a/f;->c:[C

    aget-char v19, v19, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    add-int/lit8 v6, v17, -0x2

    goto :goto_4

    :cond_a
    aget-char v12, p1, v7

    sget-object v18, Lcom/esotericsoftware/a/f;->c:[C

    add-int/lit8 v19, v17, 0x1

    aget-char v18, v18, v19

    move/from16 v0, v18

    if-le v12, v0, :cond_b

    add-int/lit8 v12, v17, 0x2

    goto :goto_4

    :cond_b
    sub-int v6, v17, v13

    shr-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v10

    goto/16 :goto_5

    :pswitch_3
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v6, v7

    goto :goto_7

    :pswitch_4
    const/4 v4, 0x1

    move v6, v8

    move/from16 v21, v4

    move v4, v5

    move/from16 v5, v21

    goto :goto_7

    :pswitch_5
    new-instance v4, Ljava/lang/String;

    sub-int v13, v7, v8

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v8, v13}, Ljava/lang/String;-><init>([CII)V

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/esotericsoftware/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    move v5, v6

    move v6, v7

    goto :goto_7

    :pswitch_6
    if-nez v5, :cond_5

    new-instance v4, Ljava/lang/String;

    sub-int v13, v7, v8

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v8, v13}, Ljava/lang/String;-><init>([CII)V

    if-eqz v6, :cond_27

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/esotericsoftware/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_7

    :cond_d
    const/4 v4, 0x0

    goto :goto_9

    :pswitch_7
    new-instance v13, Ljava/lang/String;

    sub-int v4, v7, v8

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_a
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;D)V

    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_7

    :cond_e
    const/4 v4, 0x0

    goto :goto_a

    :pswitch_8
    new-instance v13, Ljava/lang/String;

    sub-int v4, v7, v8

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_b
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;J)V

    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_7

    :cond_f
    const/4 v4, 0x0

    goto :goto_b

    :pswitch_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_c
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Z)V

    const/4 v4, 0x1

    move v5, v6

    move v6, v8

    goto/16 :goto_7

    :cond_10
    const/4 v4, 0x0

    goto :goto_c

    :pswitch_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Z)V

    const/4 v4, 0x1

    move v5, v6

    move v6, v8

    goto/16 :goto_7

    :cond_11
    const/4 v4, 0x0

    goto :goto_d

    :pswitch_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move v5, v6

    move v6, v8

    goto/16 :goto_7

    :cond_12
    const/4 v4, 0x0

    goto :goto_e

    :pswitch_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;)V

    array-length v4, v11

    if-ne v15, v4, :cond_13

    array-length v4, v11

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v11

    invoke-static {v11, v12, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, v4

    :cond_13
    add-int/lit8 v12, v15, 0x1

    aput v10, v11, v15

    const/16 v10, 0x8

    const/4 v4, 0x2

    move v15, v12

    move/from16 v21, v5

    move v5, v6

    move v6, v10

    move v10, v4

    move/from16 v4, v21

    goto/16 :goto_0

    :cond_14
    const/4 v4, 0x0

    goto :goto_f

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/a/f;->a()V

    add-int/lit8 v10, v15, -0x1

    aget v12, v11, v10

    const/4 v4, 0x2

    move v15, v10

    move v10, v4

    move v4, v5

    move v5, v6

    move v6, v12

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/f;->b(Ljava/lang/String;)V

    array-length v4, v11

    if-ne v15, v4, :cond_26

    array-length v4, v11

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v11

    invoke-static {v11, v12, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_11
    add-int/lit8 v11, v15, 0x1

    aput v10, v4, v15

    const/16 v12, 0x2e

    const/4 v10, 0x2

    move v15, v11

    move-object v11, v4

    move v4, v5

    move v5, v6

    move v6, v12

    goto/16 :goto_0

    :cond_15
    const/4 v4, 0x0

    goto :goto_10

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/a/f;->a()V

    add-int/lit8 v10, v15, -0x1

    aget v12, v11, v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    move v15, v10

    move v10, v4

    move v4, v5

    move v5, v6

    move v6, v12

    goto/16 :goto_0

    :cond_16
    move v4, v5

    move v5, v6

    :cond_17
    :goto_12
    if-nez v10, :cond_18

    const/4 v6, 0x5

    move/from16 v21, v6

    move v6, v10

    move/from16 v10, v21

    goto/16 :goto_0

    :cond_18
    add-int/lit8 v6, v7, 0x1

    move/from16 v0, p3

    if-eq v6, v0, :cond_19

    const/4 v7, 0x1

    move/from16 v21, v7

    move v7, v6

    move v6, v10

    move/from16 v10, v21

    goto/16 :goto_0

    :cond_19
    move v7, v4

    move v12, v5

    move v4, v10

    :goto_13
    move/from16 v0, p3

    if-ne v6, v0, :cond_0

    :try_start_1
    sget-object v5, Lcom/esotericsoftware/a/f;->i:[B

    aget-byte v4, v5, v4

    sget-object v10, Lcom/esotericsoftware/a/f;->a:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v10, v4

    move v10, v5

    move v5, v7

    move v7, v8

    :goto_14
    add-int/lit8 v8, v4, -0x1

    if-lez v4, :cond_0

    sget-object v4, Lcom/esotericsoftware/a/f;->a:[B

    add-int/lit8 v11, v10, 0x1

    aget-byte v4, v4, v10

    packed-switch v4, :pswitch_data_2

    :cond_1a
    move v4, v5

    move v5, v7

    :goto_15
    move v10, v11

    move v7, v5

    move v5, v4

    move v4, v8

    goto :goto_14

    :pswitch_10
    if-nez v5, :cond_1a

    new-instance v4, Ljava/lang/String;

    sub-int v10, v6, v7

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v7, v10}, Ljava/lang/String;-><init>([CII)V

    if-eqz v12, :cond_25

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/esotericsoftware/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    :goto_16
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1b

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    move v5, v6

    goto :goto_15

    :cond_1b
    const/4 v4, 0x0

    goto :goto_17

    :pswitch_11
    new-instance v10, Ljava/lang/String;

    sub-int v4, v6, v7

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1c

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_18
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;D)V

    move v4, v5

    move v5, v6

    goto :goto_15

    :cond_1c
    const/4 v4, 0x0

    goto :goto_18

    :pswitch_12
    new-instance v10, Ljava/lang/String;

    sub-int v4, v6, v7

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_19
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;J)V

    move v4, v5

    move v5, v6

    goto/16 :goto_15

    :cond_1d
    const/4 v4, 0x0

    goto :goto_19

    :pswitch_13
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1e

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1a
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Z)V

    const/4 v4, 0x1

    move v5, v7

    goto/16 :goto_15

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1a

    :pswitch_14
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1f

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Z)V

    const/4 v4, 0x1

    move v5, v7

    goto/16 :goto_15

    :cond_1f
    const/4 v4, 0x0

    goto :goto_1b

    :pswitch_15
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_20

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x1

    move v5, v7

    goto/16 :goto_15

    :cond_20
    const/4 v4, 0x0

    goto :goto_1c

    :catch_0
    move-exception v4

    :goto_1d
    move-object v6, v4

    goto/16 :goto_1

    :cond_21
    new-instance v5, Lcom/esotericsoftware/a/e;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing JSON on line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " near: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v8, Ljava/lang/String;

    sub-int v9, p3, v7

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v7, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v6}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/esotericsoftware/a/g;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Lcom/esotericsoftware/a/g;->i()Z

    move-result v4

    if-eqz v4, :cond_23

    new-instance v4, Lcom/esotericsoftware/a/e;

    const-string v5, "Error parsing JSON, unmatched brace."

    invoke-direct {v4, v5}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_23
    new-instance v4, Lcom/esotericsoftware/a/e;

    const-string v5, "Error parsing JSON, unmatched bracket."

    invoke-direct {v4, v5}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/esotericsoftware/a/f;->k:Lcom/esotericsoftware/a/g;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/esotericsoftware/a/f;->k:Lcom/esotericsoftware/a/g;

    return-object v4

    :catch_1
    move-exception v4

    move v7, v6

    goto :goto_1d

    :cond_25
    move-object v7, v4

    goto/16 :goto_16

    :cond_26
    move-object v4, v11

    goto/16 :goto_11

    :cond_27
    move-object v8, v4

    goto/16 :goto_8

    :cond_28
    move v6, v10

    goto/16 :goto_5

    :pswitch_16
    move v12, v5

    move/from16 v21, v4

    move v4, v6

    move v6, v7

    move/from16 v7, v21

    goto/16 :goto_13

    :pswitch_17
    move v10, v6

    goto/16 :goto_12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_17
        :pswitch_0
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/g;

    iput-object v0, p0, Lcom/esotericsoftware/a/f;->k:Lcom/esotericsoftware/a/g;

    iget-object v0, p0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/g;

    :goto_0
    iput-object v0, p0, Lcom/esotericsoftware/a/f;->l:Lcom/esotericsoftware/a/g;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/esotericsoftware/a/g;

    sget-object v1, Lcom/esotericsoftware/a/i;->a:Lcom/esotericsoftware/a/i;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/g;-><init>(Lcom/esotericsoftware/a/i;)V

    iget-object v1, p0, Lcom/esotericsoftware/a/f;->l:Lcom/esotericsoftware/a/g;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Lcom/esotericsoftware/a/g;)V

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/esotericsoftware/a/f;->l:Lcom/esotericsoftware/a/g;

    return-void
.end method

.method protected a(Ljava/lang/String;D)V
    .locals 2

    new-instance v0, Lcom/esotericsoftware/a/g;

    invoke-direct {v0, p2, p3}, Lcom/esotericsoftware/a/g;-><init>(D)V

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Lcom/esotericsoftware/a/g;)V

    return-void
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lcom/esotericsoftware/a/g;

    invoke-direct {v0, p2, p3}, Lcom/esotericsoftware/a/g;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Lcom/esotericsoftware/a/g;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/a/g;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/a/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Lcom/esotericsoftware/a/g;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/a/g;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/a/g;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Lcom/esotericsoftware/a/g;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/esotericsoftware/a/g;

    sget-object v1, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/i;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/g;-><init>(Lcom/esotericsoftware/a/i;)V

    iget-object v1, p0, Lcom/esotericsoftware/a/f;->l:Lcom/esotericsoftware/a/g;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Lcom/esotericsoftware/a/g;)V

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/esotericsoftware/a/f;->l:Lcom/esotericsoftware/a/g;

    return-void
.end method
