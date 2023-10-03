.class public Lb/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public final b:I

.field private final c:[I

.field private final d:[Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/e;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/e;->a:[B

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lb/a/a/e;->c(I)S

    move-result v0

    const/16 v1, 0x33

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lb/a/a/e;->c:[I

    iget-object v0, p0, Lb/a/a/e;->c:[I

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/e;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v0, p2, 0xa

    const/4 v1, 0x1

    move v3, v0

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lb/a/a/e;->c:[I

    add-int/lit8 v5, v3, 0x1

    aput v5, v0, v1

    aget-byte v0, p1, v3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x3

    :cond_1
    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-le v0, v2, :cond_1

    move v2, v0

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    iput v2, p0, Lb/a/a/e;->e:I

    iput v3, p0, Lb/a/a/e;->b:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(I[CLjava/lang/String;Lb/a/a/a;)I
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p4, :cond_0

    iget-object v0, p0, Lb/a/a/e;->a:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 v0, p1, 0x3

    :goto_0
    return v0

    :sswitch_0
    add-int/lit8 v0, p1, 0x5

    goto :goto_0

    :sswitch_1
    add-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0, p2, v1, v3}, Lb/a/a/e;->a(I[CZLb/a/a/a;)I

    move-result v0

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, v2, v3}, Lb/a/a/e;->a(I[CZLb/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/a/e;->a:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_1

    move v0, v3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v3}, Lb/a/a/e;->b(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lb/a/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto :goto_0

    :sswitch_4
    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v3}, Lb/a/a/e;->b(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lb/a/a/e;->d(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p4, p3, v0}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v3}, Lb/a/a/e;->b(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lb/a/a/e;->d(I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p4, p3, v0}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_6
    new-instance v0, Ljava/lang/Short;

    iget-object v1, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v3}, Lb/a/a/e;->b(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lb/a/a/e;->d(I)I

    move-result v1

    int-to-short v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p4, p3, v0}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto :goto_0

    :sswitch_7
    new-instance v0, Ljava/lang/Character;

    iget-object v1, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v3}, Lb/a/a/e;->b(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lb/a/a/e;->d(I)I

    move-result v1

    int-to-char v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p4, p3, v0}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0, v3, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0, v3, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v3, 0x2

    invoke-virtual {p0, v1, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v0, v1}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0, v3, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/s;->a(Ljava/lang/String;)Lb/a/a/s;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto/16 :goto_0

    :sswitch_b
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v3, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p3, v2}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/a/a/a;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lb/a/a/e;->a(I[CZLb/a/a/a;)I

    move-result v0

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p0, v3}, Lb/a/a/e;->b(I)I

    move-result v5

    add-int/lit8 v3, v3, 0x2

    if-nez v5, :cond_2

    add-int/lit8 v0, v3, -0x2

    invoke-virtual {p4, p3}, Lb/a/a/a;->a(Ljava/lang/String;)Lb/a/a/a;

    move-result-object v1

    invoke-direct {p0, v0, p2, v2, v1}, Lb/a/a/e;->a(I[CZLb/a/a/a;)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lb/a/a/e;->a:[B

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    sparse-switch v3, :sswitch_data_2

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p4, p3}, Lb/a/a/a;->a(Ljava/lang/String;)Lb/a/a/a;

    move-result-object v1

    invoke-direct {p0, v0, p2, v2, v1}, Lb/a/a/e;->a(I[CZLb/a/a/a;)I

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    new-array v1, v5, [B

    :goto_2
    if-ge v2, v5, :cond_3

    iget-object v3, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lb/a/a/e;->d(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p4, p3, v1}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_e
    new-array v6, v5, [Z

    move v3, v2

    move v4, v0

    :goto_3
    if-ge v3, v5, :cond_5

    iget-object v0, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v4}, Lb/a/a/e;->b(I)I

    move-result v7

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lb/a/a/e;->d(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    aput-boolean v0, v6, v3

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    invoke-virtual {p4, p3, v6}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v4, -0x1

    goto/16 :goto_0

    :sswitch_f
    new-array v1, v5, [S

    :goto_5
    if-ge v2, v5, :cond_6

    iget-object v3, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lb/a/a/e;->d(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p4, p3, v1}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_10
    new-array v1, v5, [C

    :goto_6
    if-ge v2, v5, :cond_7

    iget-object v3, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lb/a/a/e;->d(I)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p4, p3, v1}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_11
    new-array v1, v5, [I

    :goto_7
    if-ge v2, v5, :cond_8

    iget-object v3, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lb/a/a/e;->d(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {p4, p3, v1}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_12
    new-array v1, v5, [J

    :goto_8
    if-ge v2, v5, :cond_9

    iget-object v3, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lb/a/a/e;->e(I)J

    move-result-wide v6

    aput-wide v6, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {p4, p3, v1}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_13
    new-array v1, v5, [F

    :goto_9
    if-ge v2, v5, :cond_a

    iget-object v3, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lb/a/a/e;->d(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {p4, p3, v1}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_14
    new-array v1, v5, [D

    :goto_a
    if-ge v2, v5, :cond_b

    iget-object v3, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lb/a/a/e;->e(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    aput-wide v6, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    invoke-virtual {p4, p3, v1}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x5b -> :sswitch_2
        0x65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_b
        0x42 -> :sswitch_4
        0x43 -> :sswitch_7
        0x44 -> :sswitch_3
        0x46 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x53 -> :sswitch_6
        0x5a -> :sswitch_5
        0x5b -> :sswitch_c
        0x63 -> :sswitch_a
        0x65 -> :sswitch_9
        0x73 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x42 -> :sswitch_d
        0x43 -> :sswitch_10
        0x44 -> :sswitch_14
        0x46 -> :sswitch_13
        0x49 -> :sswitch_11
        0x4a -> :sswitch_12
        0x53 -> :sswitch_f
        0x5a -> :sswitch_e
    .end sparse-switch
.end method

.method private a(I[CZLb/a/a/a;)I
    .locals 4

    invoke-virtual {p0, p1}, Lb/a/a/e;->b(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    if-eqz p3, :cond_2

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v0, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p2, v0, p4}, Lb/a/a/e;->a(I[CLjava/lang/String;Lb/a/a/a;)I

    move-result v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :goto_1
    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v2, p4}, Lb/a/a/e;->a(I[CLjava/lang/String;Lb/a/a/a;)I

    move-result v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lb/a/a/a;->a()V

    :cond_1
    return v0

    :cond_2
    move v3, v0

    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method private a([Ljava/lang/Object;II[C[Lb/a/a/o;)I
    .locals 2

    iget-object v1, p0, Lb/a/a/e;->a:[B

    add-int/lit8 v0, p3, 0x1

    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v1

    invoke-virtual {p0, v1, p5}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    sget-object v1, Lb/a/a/r;->a:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_1
    sget-object v1, Lb/a/a/r;->b:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_2
    sget-object v1, Lb/a/a/r;->c:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_3
    sget-object v1, Lb/a/a/r;->d:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_4
    sget-object v1, Lb/a/a/r;->e:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_5
    sget-object v1, Lb/a/a/r;->f:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_6
    sget-object v1, Lb/a/a/r;->g:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v0, p4}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a([Lb/a/a/c;Ljava/lang/String;II[CI[Lb/a/a/o;)Lb/a/a/c;
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    iget-object v1, v1, Lb/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v0, p1, v0

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lb/a/a/c;->a(Lb/a/a/e;II[CI[Lb/a/a/o;)Lb/a/a/c;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lb/a/a/c;

    invoke-direct {v0, p2}, Lb/a/a/c;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lb/a/a/c;->a(Lb/a/a/e;II[CI[Lb/a/a/o;)Lb/a/a/c;

    move-result-object v0

    goto :goto_1
.end method

.method private a(II[C)Ljava/lang/String;
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    add-int v7, p1, p2

    iget-object v8, p0, Lb/a/a/e;->a:[B

    move v0, v3

    move v1, v3

    move v5, v3

    :goto_0
    if-ge p1, v7, :cond_2

    add-int/lit8 v6, p1, 0x1

    aget-byte v4, v8, p1

    packed-switch v1, :pswitch_data_0

    move v4, v5

    :goto_1
    move v5, v4

    move p1, v6

    goto :goto_0

    :pswitch_0
    and-int/lit16 v9, v4, 0xff

    const/16 v4, 0x80

    if-ge v9, v4, :cond_0

    add-int/lit8 v4, v5, 0x1

    int-to-char v9, v9

    aput-char v9, p3, v5

    goto :goto_1

    :cond_0
    const/16 v0, 0xe0

    if-ge v9, v0, :cond_1

    const/16 v0, 0xbf

    if-le v9, v0, :cond_1

    and-int/lit8 v0, v9, 0x1f

    int-to-char v0, v0

    move v1, v2

    move v4, v5

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v9, 0xf

    int-to-char v0, v0

    const/4 v1, 0x2

    move v4, v5

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v5, 0x1

    shl-int/lit8 v9, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v9

    int-to-char v4, v4

    aput-char v4, p3, v5

    move v4, v1

    move v1, v3

    goto :goto_1

    :pswitch_2
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v0, v1

    int-to-char v0, v0

    move v1, v2

    move v4, v5

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3, v3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILjava/lang/String;[CZLb/a/a/p;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lb/a/a/e;->a:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v3, v0, 0xff

    invoke-static {p2}, Lb/a/a/s;->d(Ljava/lang/String;)[Lb/a/a/s;

    move-result-object v0

    array-length v0, v0

    sub-int v4, v0, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_3

    const-string v5, "Ljava/lang/Synthetic;"

    invoke-virtual {p5, v0, v5, v2}, Lb/a/a/p;->a(ILjava/lang/String;Z)Lb/a/a/a;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lb/a/a/a;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    :goto_1
    add-int v0, v3, v4

    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v1}, Lb/a/a/e;->b(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_2
    if-lez v0, :cond_1

    invoke-virtual {p0, v1, p3}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v2, v5, p4}, Lb/a/a/p;->a(ILjava/lang/String;Z)Lb/a/a/a;

    move-result-object v5

    add-int/lit8 v1, v1, 0x2

    const/4 v6, 0x1

    invoke-direct {p0, v1, p3, v6, v5}, Lb/a/a/e;->a(I[CZLb/a/a/a;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move v2, v0

    goto :goto_1
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lb/a/a/e;->a:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected a(I[Lb/a/a/o;)Lb/a/a/o;
    .locals 1

    aget-object v0, p2, p1

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/o;

    invoke-direct {v0}, Lb/a/a/o;-><init>()V

    aput-object v0, p2, p1

    :cond_0
    aget-object v0, p2, p1

    return-object v0
.end method

.method public a(I[C)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lb/a/a/e;->b(I)I

    move-result v1

    iget-object v0, p0, Lb/a/a/e;->d:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a/a/e;->c:[I

    aget v0, v0, v1

    iget-object v2, p0, Lb/a/a/e;->d:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Lb/a/a/e;->b(I)I

    move-result v0

    invoke-direct {p0, v3, v0, p2}, Lb/a/a/e;->a(II[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0
.end method

.method public a(Lb/a/a/f;I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lb/a/a/c;

    invoke-virtual {p0, p1, v0, p2}, Lb/a/a/e;->a(Lb/a/a/f;[Lb/a/a/c;I)V

    return-void
.end method

.method public a(Lb/a/a/f;[Lb/a/a/c;I)V
    .locals 49

    move-object/from16 v0, p0

    iget-object v0, v0, Lb/a/a/e;->a:[B

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v4, v0, Lb/a/a/e;->e:I

    new-array v9, v4, [C

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lb/a/a/e;->b:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v12

    add-int/lit8 v5, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lb/a/a/e;->c:[I

    add-int/lit8 v6, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lb/a/a/e;->b(I)I

    move-result v6

    aget v5, v5, v6

    if-nez v5, :cond_0

    const/4 v15, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v23, 0x0

    add-int/lit8 v5, v4, 0x8

    const/4 v4, 0x0

    move/from16 v17, v5

    :goto_1
    move-object/from16 v0, v16

    array-length v5, v0

    if-ge v4, v5, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v16, v4

    add-int/lit8 v5, v17, 0x2

    add-int/lit8 v4, v4, 0x1

    move/from16 v17, v5

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_1
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move/from16 v41, v4

    :goto_2
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move/from16 v40, v4

    :goto_3
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move/from16 v27, v4

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v17, 0x2

    move v6, v4

    :goto_5
    if-lez v6, :cond_6

    add-int/lit8 v4, v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x8

    :goto_6
    if-lez v4, :cond_5

    add-int/lit8 v7, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lb/a/a/e;->d(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_2
    const/4 v4, 0x0

    move/from16 v41, v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    move/from16 v40, v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    move/from16 v27, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v6, -0x1

    move v6, v4

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x2

    move v6, v4

    :goto_7
    if-lez v6, :cond_8

    add-int/lit8 v4, v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x8

    :goto_8
    if-lez v4, :cond_7

    add-int/lit8 v7, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lb/a/a/e;->d(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v4, v6, -0x1

    move v6, v4

    goto :goto_7

    :cond_8
    const/4 v14, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x2

    move/from16 v29, v4

    move/from16 v30, v5

    :goto_9
    if-lez v29, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v6

    const-string v4, "SourceFile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, v30, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object v10, v4

    move/from16 v11, v23

    move-object/from16 v4, v28

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    :goto_a
    add-int/lit8 v21, v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lb/a/a/e;->d(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x6

    add-int v22, v30, v21

    add-int/lit8 v21, v29, -0x1

    move-object/from16 v28, v4

    move/from16 v29, v21

    move/from16 v23, v11

    move/from16 v30, v22

    move-object/from16 v24, v18

    move/from16 v25, v19

    move/from16 v26, v20

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v18, v5

    goto :goto_9

    :cond_9
    const-string v4, "InnerClasses"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v4, v30, 0x6

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move v11, v4

    move-object/from16 v4, v28

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    goto :goto_a

    :cond_a
    const-string v4, "EnclosingMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v4, v30, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v30, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    if-eqz v4, :cond_8c

    move-object/from16 v0, p0

    iget-object v5, v0, Lb/a/a/e;->c:[I

    aget v5, v5, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lb/a/a/e;->c:[I

    aget v4, v7, v4

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v4

    :goto_b
    move-object v7, v6

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    move-object v6, v5

    move-object v5, v4

    move-object/from16 v4, v28

    goto/16 :goto_a

    :cond_b
    const-string v4, "Signature"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v4, v30, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v4, v28

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    goto/16 :goto_a

    :cond_c
    const-string v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v4, v30, 0x6

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v4

    move-object/from16 v4, v28

    goto/16 :goto_a

    :cond_d
    const-string v4, "Deprecated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/high16 v4, 0x20000

    or-int/2addr v12, v4

    move-object/from16 v4, v28

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    goto/16 :goto_a

    :cond_e
    const-string v4, "Synthetic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x41000

    or-int/2addr v12, v4

    move-object/from16 v4, v28

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    goto/16 :goto_a

    :cond_f
    const-string v4, "SourceDebugExtension"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    add-int/lit8 v4, v30, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v4

    add-int/lit8 v5, v30, 0x6

    new-array v6, v4, [C

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v6}, Lb/a/a/e;->a(II[C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object v8, v4

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v4, v28

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    goto/16 :goto_a

    :cond_10
    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    add-int/lit8 v4, v30, 0x6

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v18, v24

    move/from16 v19, v4

    move/from16 v20, v26

    move-object/from16 v4, v28

    goto/16 :goto_a

    :cond_11
    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    add-int/lit8 v4, v30, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v7

    new-array v4, v7, [I

    add-int/lit8 v5, v30, 0x8

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v7, :cond_12

    aput v5, v4, v6

    add-int/lit8 v8, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lb/a/a/e;->b(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_12
    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    goto/16 :goto_a

    :cond_13
    add-int/lit8 v7, v30, 0x6

    add-int/lit8 v4, v30, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v11}, Lb/a/a/e;->a([Lb/a/a/c;Ljava/lang/String;II[CI[Lb/a/a/o;)Lb/a/a/c;

    move-result-object v4

    if-eqz v4, :cond_8b

    move-object/from16 v0, v24

    iput-object v0, v4, Lb/a/a/c;->c:Lb/a/a/c;

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v18, v4

    move/from16 v19, v25

    move/from16 v20, v26

    move-object/from16 v4, v28

    goto/16 :goto_a

    :cond_14
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v11

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v16}, Lb/a/a/f;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    if-nez v40, :cond_16

    if-nez v22, :cond_15

    if-eqz v21, :cond_16

    :cond_15
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lb/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz v20, :cond_17

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const/4 v4, 0x1

    move v7, v4

    :goto_d
    if-ltz v7, :cond_1b

    if-nez v7, :cond_18

    move/from16 v5, v25

    :goto_e
    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x2

    move/from16 v48, v4

    move v4, v5

    move/from16 v5, v48

    :goto_f
    if-lez v5, :cond_1a

    add-int/lit8 v6, v4, 0x2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_19

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v4}, Lb/a/a/f;->a(Ljava/lang/String;Z)Lb/a/a/a;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v8, v4}, Lb/a/a/e;->a(I[CZLb/a/a/a;)I

    move-result v6

    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v6

    goto :goto_f

    :cond_18
    move/from16 v5, v26

    goto :goto_e

    :cond_19
    const/4 v4, 0x0

    goto :goto_10

    :cond_1a
    add-int/lit8 v4, v7, -0x1

    move v7, v4

    goto :goto_d

    :cond_1b
    :goto_11
    if-eqz v24, :cond_1c

    move-object/from16 v0, v24

    iget-object v4, v0, Lb/a/a/c;->c:Lb/a/a/c;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iput-object v5, v0, Lb/a/a/c;->c:Lb/a/a/c;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lb/a/a/f;->a(Lb/a/a/c;)V

    move-object/from16 v24, v4

    goto :goto_11

    :cond_1c
    if-eqz v23, :cond_20

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v23, 0x2

    move v7, v4

    move v8, v5

    :goto_12
    if-lez v7, :cond_20

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lb/a/a/e;->b(I)I

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x0

    :goto_13
    add-int/lit8 v5, v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v5

    if-nez v5, :cond_1e

    const/4 v5, 0x0

    :goto_14
    add-int/lit8 v6, v8, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lb/a/a/e;->b(I)I

    move-result v6

    if-nez v6, :cond_1f

    const/4 v6, 0x0

    :goto_15
    add-int/lit8 v10, v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lb/a/a/e;->b(I)I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v10}, Lb/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v5, v8, 0x8

    add-int/lit8 v4, v7, -0x1

    move v7, v4

    move v8, v5

    goto :goto_12

    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_1e
    add-int/lit8 v5, v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    :cond_1f
    add-int/lit8 v6, v8, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v6

    goto :goto_15

    :cond_20
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v21, v17, 0x2

    move/from16 v22, v4

    :goto_16
    if-lez v22, :cond_2f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v16

    add-int/lit8 v4, v21, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v4, v21, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    add-int/lit8 v4, v21, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v21, 0x8

    move/from16 v20, v4

    move/from16 v21, v5

    :goto_17
    if-lez v20, :cond_27

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v6

    const-string v4, "ConstantValue"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    add-int/lit8 v4, v21, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    :goto_18
    add-int/lit8 v10, v21, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lb/a/a/e;->d(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x6

    add-int v11, v21, v10

    add-int/lit8 v10, v20, -0x1

    move v15, v4

    move/from16 v20, v10

    move/from16 v16, v5

    move/from16 v21, v11

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    goto :goto_17

    :cond_21
    const-string v4, "Signature"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    add-int/lit8 v4, v21, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v14

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    goto :goto_18

    :cond_22
    const-string v4, "Deprecated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/high16 v4, 0x20000

    or-int v4, v4, v16

    move v5, v4

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move v4, v15

    goto :goto_18

    :cond_23
    const-string v4, "Synthetic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const v4, 0x41000

    or-int v4, v4, v16

    move v5, v4

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move v4, v15

    goto :goto_18

    :cond_24
    const-string v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    add-int/lit8 v4, v21, 0x6

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move v8, v4

    move v4, v15

    goto :goto_18

    :cond_25
    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    add-int/lit8 v4, v21, 0x6

    move/from16 v5, v16

    move-object/from16 v6, v17

    move v7, v4

    move/from16 v8, v19

    move v4, v15

    goto/16 :goto_18

    :cond_26
    add-int/lit8 v7, v21, 0x6

    add-int/lit8 v4, v21, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v11}, Lb/a/a/e;->a([Lb/a/a/c;Ljava/lang/String;II[CI[Lb/a/a/o;)Lb/a/a/c;

    move-result-object v4

    if-eqz v4, :cond_8a

    move-object/from16 v0, v17

    iput-object v0, v4, Lb/a/a/c;->c:Lb/a/a/c;

    move/from16 v5, v16

    move-object v6, v4

    move/from16 v7, v18

    move/from16 v8, v19

    move v4, v15

    goto/16 :goto_18

    :cond_27
    if-nez v15, :cond_28

    const/4 v15, 0x0

    :goto_19
    move-object/from16 v10, p1

    move/from16 v11, v16

    invoke-virtual/range {v10 .. v15}, Lb/a/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/i;

    move-result-object v8

    if-eqz v8, :cond_2e

    const/4 v4, 0x1

    move v7, v4

    :goto_1a
    if-ltz v7, :cond_2c

    if-nez v7, :cond_29

    move/from16 v5, v18

    :goto_1b
    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x2

    move/from16 v48, v4

    move v4, v5

    move/from16 v5, v48

    :goto_1c
    if-lez v5, :cond_2b

    add-int/lit8 v6, v4, 0x2

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v11

    if-eqz v7, :cond_2a

    const/4 v4, 0x1

    :goto_1d
    invoke-virtual {v8, v11, v4}, Lb/a/a/i;->a(Ljava/lang/String;Z)Lb/a/a/a;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v10, v4}, Lb/a/a/e;->a(I[CZLb/a/a/a;)I

    move-result v6

    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v6

    goto :goto_1c

    :cond_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lb/a/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v15

    goto :goto_19

    :cond_29
    move/from16 v5, v19

    goto :goto_1b

    :cond_2a
    const/4 v4, 0x0

    goto :goto_1d

    :cond_2b
    add-int/lit8 v4, v7, -0x1

    move v7, v4

    goto :goto_1a

    :cond_2c
    :goto_1e
    if-eqz v17, :cond_2d

    move-object/from16 v0, v17

    iget-object v4, v0, Lb/a/a/c;->c:Lb/a/a/c;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iput-object v5, v0, Lb/a/a/c;->c:Lb/a/a/c;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lb/a/a/i;->a(Lb/a/a/c;)V

    move-object/from16 v17, v4

    goto :goto_1e

    :cond_2d
    invoke-virtual {v8}, Lb/a/a/i;->a()V

    :cond_2e
    add-int/lit8 v4, v22, -0x1

    move/from16 v22, v4

    goto/16 :goto_16

    :cond_2f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v38, v21, 0x2

    move/from16 v39, v4

    :goto_1f
    if-lez v39, :cond_7e

    add-int/lit8 v25, v38, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v21

    add-int/lit8 v4, v38, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v4, v38, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/4 v15, 0x0

    add-int/lit8 v4, v38, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v38, 0x8

    move/from16 v24, v4

    move/from16 v38, v5

    :goto_20
    if-lez v24, :cond_3a

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v38, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v8

    add-int/lit8 v7, v38, 0x6

    const-string v4, "Code"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    if-nez v41, :cond_89

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move v10, v15

    move v11, v7

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v22

    move/from16 v18, v23

    :goto_21
    add-int/2addr v8, v7

    add-int/lit8 v7, v24, -0x1

    move/from16 v24, v7

    move/from16 v19, v11

    move/from16 v21, v15

    move/from16 v38, v8

    move-object/from16 v20, v16

    move/from16 v22, v17

    move/from16 v23, v18

    move/from16 v16, v4

    move v15, v10

    move/from16 v17, v5

    move/from16 v18, v6

    goto :goto_20

    :cond_30
    const-string v4, "Exceptions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move v10, v7

    move/from16 v11, v19

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v22

    move/from16 v18, v23

    goto :goto_21

    :cond_31
    const-string v4, "Signature"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v14

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move v10, v15

    move/from16 v11, v19

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v22

    move/from16 v18, v23

    goto :goto_21

    :cond_32
    const-string v4, "Deprecated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/high16 v4, 0x20000

    or-int v4, v4, v21

    move/from16 v5, v17

    move/from16 v6, v18

    move v10, v15

    move/from16 v11, v19

    move v15, v4

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v4, v16

    move-object/from16 v16, v20

    goto :goto_21

    :cond_33
    const-string v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move v10, v15

    move/from16 v11, v19

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v22

    move/from16 v18, v7

    goto/16 :goto_21

    :cond_34
    const-string v4, "AnnotationDefault"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    move/from16 v4, v16

    move/from16 v5, v17

    move v6, v7

    move v10, v15

    move/from16 v11, v19

    move/from16 v18, v23

    move-object/from16 v16, v20

    move/from16 v17, v22

    move/from16 v15, v21

    goto/16 :goto_21

    :cond_35
    const-string v4, "Synthetic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const v4, 0x41000

    or-int v4, v4, v21

    move/from16 v5, v17

    move/from16 v6, v18

    move v10, v15

    move/from16 v11, v19

    move v15, v4

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v4, v16

    move-object/from16 v16, v20

    goto/16 :goto_21

    :cond_36
    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move v10, v15

    move/from16 v11, v19

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v7

    move/from16 v18, v23

    goto/16 :goto_21

    :cond_37
    const-string v4, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    move/from16 v4, v16

    move v5, v7

    move/from16 v6, v18

    move v10, v15

    move/from16 v11, v19

    move/from16 v17, v22

    move-object/from16 v16, v20

    move/from16 v15, v21

    move/from16 v18, v23

    goto/16 :goto_21

    :cond_38
    const-string v4, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    move v4, v7

    move/from16 v5, v17

    move/from16 v6, v18

    move v10, v15

    move/from16 v11, v19

    move-object/from16 v16, v20

    move/from16 v15, v21

    move/from16 v17, v22

    move/from16 v18, v23

    goto/16 :goto_21

    :cond_39
    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v11}, Lb/a/a/e;->a([Lb/a/a/c;Ljava/lang/String;II[CI[Lb/a/a/o;)Lb/a/a/c;

    move-result-object v4

    if-eqz v4, :cond_89

    move-object/from16 v0, v20

    iput-object v0, v4, Lb/a/a/c;->c:Lb/a/a/c;

    move/from16 v5, v17

    move/from16 v6, v18

    move v10, v15

    move/from16 v11, v19

    move/from16 v15, v21

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v48, v16

    move-object/from16 v16, v4

    move/from16 v4, v48

    goto/16 :goto_21

    :cond_3a
    if-nez v15, :cond_3c

    const/4 v4, 0x0

    move v5, v15

    move-object v15, v4

    :goto_22
    move-object/from16 v10, p1

    move/from16 v11, v21

    invoke-virtual/range {v10 .. v15}, Lb/a/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v11

    if-eqz v11, :cond_48

    instance-of v4, v11, Lb/a/a/q;

    if-eqz v4, :cond_40

    move-object v4, v11

    check-cast v4, Lb/a/a/q;

    iget-object v6, v4, Lb/a/a/q;->c:Lb/a/a/g;

    iget-object v6, v6, Lb/a/a/g;->d:Lb/a/a/e;

    move-object/from16 v0, p0

    if-ne v6, v0, :cond_40

    iget-object v6, v4, Lb/a/a/q;->d:Ljava/lang/String;

    if-ne v14, v6, :cond_40

    const/4 v6, 0x0

    if-nez v15, :cond_3e

    iget v5, v4, Lb/a/a/q;->g:I

    if-nez v5, :cond_3d

    const/4 v5, 0x1

    :goto_23
    if-eqz v5, :cond_40

    move/from16 v0, v25

    iput v0, v4, Lb/a/a/q;->e:I

    sub-int v5, v38, v25

    iput v5, v4, Lb/a/a/q;->f:I

    :cond_3b
    :goto_24
    add-int/lit8 v4, v39, -0x1

    move/from16 v39, v4

    goto/16 :goto_1f

    :cond_3c
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lb/a/a/e;->b(I)I

    move-result v4

    new-array v6, v4, [Ljava/lang/String;

    add-int/lit8 v5, v15, 0x2

    const/4 v4, 0x0

    :goto_25
    array-length v7, v6

    if-ge v4, v7, :cond_88

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_3d
    const/4 v5, 0x0

    goto :goto_23

    :cond_3e
    array-length v7, v15

    iget v8, v4, Lb/a/a/q;->g:I

    if-ne v7, v8, :cond_87

    const/4 v6, 0x1

    array-length v7, v15

    add-int/lit8 v7, v7, -0x1

    move/from16 v48, v7

    move v7, v5

    move/from16 v5, v48

    :goto_26
    if-ltz v5, :cond_87

    add-int/lit8 v7, v7, -0x2

    iget-object v8, v4, Lb/a/a/q;->h:[I

    aget v8, v8, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lb/a/a/e;->b(I)I

    move-result v10

    if-eq v8, v10, :cond_3f

    const/4 v5, 0x0

    goto :goto_23

    :cond_3f
    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    :cond_40
    if-eqz v18, :cond_41

    invoke-virtual {v11}, Lb/a/a/p;->a()Lb/a/a/a;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v9, v5, v4}, Lb/a/a/e;->a(I[CLjava/lang/String;Lb/a/a/a;)I

    if-eqz v4, :cond_41

    invoke-virtual {v4}, Lb/a/a/a;->a()V

    :cond_41
    const/4 v4, 0x1

    move v7, v4

    :goto_27
    if-ltz v7, :cond_45

    if-nez v7, :cond_42

    move/from16 v5, v22

    :goto_28
    if-eqz v5, :cond_44

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x2

    move/from16 v48, v4

    move v4, v5

    move/from16 v5, v48

    :goto_29
    if-lez v5, :cond_44

    add-int/lit8 v6, v4, 0x2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_43

    const/4 v4, 0x1

    :goto_2a
    invoke-virtual {v11, v10, v4}, Lb/a/a/p;->a(Ljava/lang/String;Z)Lb/a/a/a;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v8, v4}, Lb/a/a/e;->a(I[CZLb/a/a/a;)I

    move-result v6

    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v6

    goto :goto_29

    :cond_42
    move/from16 v5, v23

    goto :goto_28

    :cond_43
    const/4 v4, 0x0

    goto :goto_2a

    :cond_44
    add-int/lit8 v4, v7, -0x1

    move v7, v4

    goto :goto_27

    :cond_45
    if-eqz v17, :cond_46

    const/4 v10, 0x1

    move-object/from16 v6, p0

    move/from16 v7, v17

    move-object v8, v13

    invoke-direct/range {v6 .. v11}, Lb/a/a/e;->a(ILjava/lang/String;[CZLb/a/a/p;)V

    :cond_46
    if-eqz v16, :cond_47

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move/from16 v7, v16

    move-object v8, v13

    invoke-direct/range {v6 .. v11}, Lb/a/a/e;->a(ILjava/lang/String;[CZLb/a/a/p;)V

    :cond_47
    :goto_2b
    if-eqz v20, :cond_48

    move-object/from16 v0, v20

    iget-object v4, v0, Lb/a/a/c;->c:Lb/a/a/c;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-object v5, v0, Lb/a/a/c;->c:Lb/a/a/c;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lb/a/a/p;->a(Lb/a/a/c;)V

    move-object/from16 v20, v4

    goto :goto_2b

    :cond_48
    if-eqz v11, :cond_7d

    if-eqz v19, :cond_7d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v43

    add-int/lit8 v4, v19, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v44

    add-int/lit8 v4, v19, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v45

    add-int/lit8 v35, v19, 0x8

    add-int v46, v35, v45

    invoke-virtual {v11}, Lb/a/a/p;->b()V

    add-int/lit8 v4, v45, 0x2

    new-array v0, v4, [Lb/a/a/o;

    move-object/from16 v20, v0

    add-int/lit8 v4, v45, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    move/from16 v5, v35

    :goto_2c
    move/from16 v0, v46

    if-ge v5, v0, :cond_4b

    sub-int v7, v5, v35

    aget-byte v4, v42, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v6, Lb/a/a/g;->c:[B

    aget-byte v4, v6, v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v4, v5, 0x4

    :cond_49
    :goto_2d
    move v5, v4

    goto :goto_2c

    :pswitch_1
    add-int/lit8 v4, v5, 0x1

    goto :goto_2d

    :pswitch_2
    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->c(I)S

    move-result v4

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    add-int/lit8 v4, v5, 0x3

    goto :goto_2d

    :pswitch_3
    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v4

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    add-int/lit8 v4, v5, 0x5

    goto :goto_2d

    :pswitch_4
    add-int/lit8 v4, v5, 0x1

    aget-byte v4, v42, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x84

    if-ne v4, v6, :cond_4a

    add-int/lit8 v4, v5, 0x6

    goto :goto_2d

    :cond_4a
    add-int/lit8 v4, v5, 0x4

    goto :goto_2d

    :pswitch_5
    add-int/lit8 v4, v5, 0x4

    and-int/lit8 v5, v7, 0x3

    sub-int v5, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->d(I)I

    move-result v4

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    add-int/lit8 v4, v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v4

    add-int/lit8 v6, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lb/a/a/e;->d(I)I

    move-result v6

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0xc

    move/from16 v48, v4

    move v4, v5

    move/from16 v5, v48

    :goto_2e
    if-lez v5, :cond_49

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v6

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    add-int/lit8 v6, v4, 0x4

    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v6

    goto :goto_2e

    :pswitch_6
    add-int/lit8 v4, v5, 0x4

    and-int/lit8 v5, v7, 0x3

    sub-int v5, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->d(I)I

    move-result v4

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    add-int/lit8 v4, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x8

    move/from16 v48, v4

    move v4, v5

    move/from16 v5, v48

    :goto_2f
    if-lez v5, :cond_49

    add-int/lit8 v6, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lb/a/a/e;->d(I)I

    move-result v6

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    add-int/lit8 v6, v4, 0x8

    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v6

    goto :goto_2f

    :pswitch_7
    add-int/lit8 v4, v5, 0x2

    goto/16 :goto_2d

    :pswitch_8
    add-int/lit8 v4, v5, 0x3

    goto/16 :goto_2d

    :pswitch_9
    add-int/lit8 v4, v5, 0x5

    goto/16 :goto_2d

    :cond_4b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x2

    :goto_30
    if-lez v4, :cond_4d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    move-result-object v6

    add-int/lit8 v7, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lb/a/a/e;->b(I)I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    move-result-object v7

    add-int/lit8 v8, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lb/a/a/e;->b(I)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    move-result-object v8

    add-int/lit8 v10, v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lb/a/a/e;->b(I)I

    move-result v10

    if-nez v10, :cond_4c

    const/4 v10, 0x0

    invoke-virtual {v11, v6, v7, v8, v10}, Lb/a/a/p;->a(Lb/a/a/o;Lb/a/a/o;Lb/a/a/o;Ljava/lang/String;)V

    :goto_31
    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, -0x1

    goto :goto_30

    :cond_4c
    move-object/from16 v0, p0

    iget-object v14, v0, Lb/a/a/e;->c:[I

    aget v10, v14, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v6, v7, v8, v10}, Lb/a/a/p;->a(Lb/a/a/o;Lb/a/a/o;Lb/a/a/o;Ljava/lang/String;)V

    goto :goto_31

    :cond_4d
    const/16 v32, 0x0

    const/16 v31, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v34, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v33, 0x0

    const/16 v26, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v30, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x2

    move/from16 v36, v4

    move/from16 v37, v5

    :goto_32
    if-lez v36, :cond_56

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v47

    const-string v4, "LocalVariableTable"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    if-nez v40, :cond_83

    add-int/lit8 v4, v37, 0x6

    add-int/lit8 v5, v37, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v5

    add-int/lit8 v6, v37, 0x8

    :goto_33
    if-lez v5, :cond_84

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lb/a/a/e;->b(I)I

    move-result v14

    aget-object v15, v20, v14

    if-nez v15, :cond_4e

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    move-result-object v15

    iget v0, v15, Lb/a/a/o;->a:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lb/a/a/o;->a:I

    :cond_4e
    add-int/lit8 v15, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lb/a/a/e;->b(I)I

    move-result v15

    add-int/2addr v14, v15

    aget-object v15, v20, v14

    if-nez v15, :cond_4f

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    move-result-object v14

    iget v15, v14, Lb/a/a/o;->a:I

    or-int/lit8 v15, v15, 0x1

    iput v15, v14, Lb/a/a/o;->a:I

    :cond_4f
    add-int/lit8 v6, v6, 0xa

    add-int/lit8 v5, v5, -0x1

    goto :goto_33

    :cond_50
    const-string v4, "LocalVariableTypeTable"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    add-int/lit8 v4, v37, 0x6

    move v5, v7

    move v6, v8

    move v7, v10

    move v8, v4

    move/from16 v4, v30

    move/from16 v10, v32

    :goto_34
    add-int/lit8 v14, v37, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lb/a/a/e;->d(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x6

    add-int v15, v37, v14

    add-int/lit8 v14, v36, -0x1

    move/from16 v30, v4

    move/from16 v31, v8

    move/from16 v32, v10

    move/from16 v36, v14

    move/from16 v37, v15

    move v8, v6

    move v10, v7

    move v7, v5

    goto/16 :goto_32

    :cond_51
    const-string v4, "LineNumberTable"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    if-nez v40, :cond_83

    add-int/lit8 v4, v37, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v37, 0x8

    :goto_35
    if-lez v4, :cond_83

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v6

    aget-object v14, v20, v6

    if-nez v14, :cond_52

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    move-result-object v14

    iget v15, v14, Lb/a/a/o;->a:I

    or-int/lit8 v15, v15, 0x1

    iput v15, v14, Lb/a/a/o;->a:I

    :cond_52
    aget-object v6, v20, v6

    add-int/lit8 v14, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lb/a/a/e;->b(I)I

    move-result v14

    iput v14, v6, Lb/a/a/o;->b:I

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, -0x1

    goto :goto_35

    :cond_53
    const-string v4, "StackMapTable"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    and-int/lit8 v4, p3, 0x4

    if-nez v4, :cond_83

    add-int/lit8 v6, v37, 0x8

    add-int/lit8 v4, v37, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v5

    add-int/lit8 v4, v37, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    move v7, v6

    move/from16 v8, v31

    move/from16 v10, v32

    move v6, v5

    move v5, v4

    move/from16 v4, v30

    goto/16 :goto_34

    :cond_54
    const-string v4, "StackMap"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    and-int/lit8 v4, p3, 0x4

    if-nez v4, :cond_83

    add-int/lit8 v7, v37, 0x8

    add-int/lit8 v4, v37, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v6

    add-int/lit8 v4, v37, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v5

    const/4 v4, 0x0

    move/from16 v8, v31

    move/from16 v10, v32

    goto/16 :goto_34

    :cond_55
    const/4 v4, 0x0

    move v6, v4

    move-object/from16 v5, v29

    :goto_36
    move-object/from16 v0, p2

    array-length v4, v0

    if-ge v6, v4, :cond_86

    aget-object v4, p2, v6

    iget-object v4, v4, Lb/a/a/c;->a:Ljava/lang/String;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    aget-object v14, p2, v6

    add-int/lit8 v16, v37, 0x6

    add-int/lit8 v4, v37, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v17

    add-int/lit8 v19, v35, -0x8

    move-object/from16 v15, p0

    move-object/from16 v18, v9

    invoke-virtual/range {v14 .. v20}, Lb/a/a/c;->a(Lb/a/a/e;II[CI[Lb/a/a/o;)Lb/a/a/c;

    move-result-object v4

    if-eqz v4, :cond_85

    iput-object v5, v4, Lb/a/a/c;->c:Lb/a/a/c;

    :goto_37
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v4

    goto :goto_36

    :cond_56
    if-eqz v10, :cond_82

    move/from16 v0, v44

    new-array v14, v0, [Ljava/lang/Object;

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v27, :cond_81

    const/4 v5, 0x0

    and-int/lit8 v4, v21, 0x8

    if-nez v4, :cond_80

    const-string v4, "<init>"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    const/4 v4, 0x1

    sget-object v6, Lb/a/a/r;->g:Ljava/lang/Integer;

    aput-object v6, v14, v5

    :goto_38
    const/4 v5, 0x1

    move v6, v5

    :goto_39
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_3a
    const/4 v5, -0x1

    move v6, v10

    :goto_3b
    add-int v12, v10, v8

    add-int/lit8 v12, v12, -0x2

    if-ge v6, v12, :cond_5d

    aget-byte v12, v42, v6

    const/16 v13, 0x8

    if-ne v12, v13, :cond_57

    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lb/a/a/e;->b(I)I

    move-result v12

    if-ltz v12, :cond_57

    move/from16 v0, v45

    if-ge v12, v0, :cond_57

    add-int v13, v35, v12

    aget-byte v13, v42, v13

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0xbb

    if-ne v13, v15, :cond_57

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    :cond_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_58
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lb/a/a/e;->b:I

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v5

    goto :goto_38

    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lb/a/a/r;->b:Ljava/lang/Integer;

    aput-object v6, v14, v4

    move v4, v5

    move v6, v12

    goto :goto_39

    :sswitch_1
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lb/a/a/r;->c:Ljava/lang/Integer;

    aput-object v6, v14, v4

    move v4, v5

    move v6, v12

    goto :goto_39

    :sswitch_2
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lb/a/a/r;->e:Ljava/lang/Integer;

    aput-object v6, v14, v4

    move v4, v5

    move v6, v12

    goto :goto_39

    :sswitch_3
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lb/a/a/r;->d:Ljava/lang/Integer;

    aput-object v6, v14, v4

    move v4, v5

    move v6, v12

    goto :goto_39

    :goto_3c
    :sswitch_4
    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v15, 0x5b

    if-ne v5, v15, :cond_59

    add-int/lit8 v12, v12, 0x1

    goto :goto_3c

    :cond_59
    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v15, 0x4c

    if-ne v5, v15, :cond_5b

    add-int/lit8 v5, v12, 0x1

    :goto_3d
    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v15, 0x3b

    if-eq v12, v15, :cond_5a

    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_5a
    move v12, v5

    :cond_5b
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v13, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v4

    move v4, v5

    move v6, v12

    goto/16 :goto_39

    :goto_3e
    :sswitch_5
    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v15, 0x3b

    if-eq v5, v15, :cond_5c

    add-int/lit8 v12, v12, 0x1

    goto :goto_3e

    :cond_5c
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v15, v6, 0x1

    add-int/lit8 v6, v12, 0x1

    invoke-virtual {v13, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v4

    move v4, v5

    goto/16 :goto_39

    :cond_5d
    move/from16 v22, v4

    move-object v4, v14

    :goto_3f
    move-object v14, v4

    move/from16 v15, v26

    move/from16 v23, v33

    move/from16 v13, v22

    move v8, v10

    move/from16 v22, v34

    move v4, v7

    move v7, v5

    move/from16 v34, v35

    :goto_40
    move/from16 v0, v34

    move/from16 v1, v46

    if-ge v0, v1, :cond_76

    sub-int v36, v34, v35

    aget-object v5, v20, v36

    if-eqz v5, :cond_5e

    invoke-virtual {v11, v5}, Lb/a/a/p;->a(Lb/a/a/o;)V

    if-nez v40, :cond_5e

    iget v6, v5, Lb/a/a/o;->b:I

    if-lez v6, :cond_5e

    iget v6, v5, Lb/a/a/o;->b:I

    invoke-virtual {v11, v6, v5}, Lb/a/a/p;->b(ILb/a/a/o;)V

    :cond_5e
    move/from16 v33, v4

    :goto_41
    if-eqz v14, :cond_6e

    move/from16 v0, v36

    if-eq v7, v0, :cond_5f

    const/4 v4, -0x1

    if-ne v7, v4, :cond_6e

    :cond_5f
    if-eqz v30, :cond_60

    if-eqz v27, :cond_62

    :cond_60
    const/4 v12, -0x1

    invoke-virtual/range {v11 .. v16}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_61
    :goto_42
    if-lez v33, :cond_6d

    if-eqz v30, :cond_63

    add-int/lit8 v18, v8, 0x1

    aget-byte v4, v42, v8

    and-int/lit16 v12, v4, 0xff

    move/from16 v22, v7

    :goto_43
    const/4 v6, 0x0

    const/16 v4, 0x40

    if-ge v12, v4, :cond_64

    const/4 v5, 0x3

    const/4 v4, 0x0

    move v7, v5

    move v5, v4

    move v4, v12

    :goto_44
    add-int/lit8 v4, v4, 0x1

    add-int v4, v4, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lb/a/a/e;->a(I[Lb/a/a/o;)Lb/a/a/o;

    add-int/lit8 v8, v33, -0x1

    move v15, v5

    move/from16 v23, v6

    move/from16 v22, v7

    move/from16 v33, v8

    move v7, v4

    move/from16 v8, v18

    goto :goto_41

    :cond_62
    const/4 v4, -0x1

    if-eq v7, v4, :cond_61

    move-object/from16 v21, v11

    move-object/from16 v24, v14

    move/from16 v25, v15

    move-object/from16 v26, v16

    invoke-virtual/range {v21 .. v26}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_42

    :cond_63
    const/16 v12, 0xff

    const/4 v4, -0x1

    move/from16 v22, v4

    move/from16 v18, v8

    goto :goto_43

    :cond_64
    const/16 v4, 0x80

    if-ge v12, v4, :cond_65

    add-int/lit8 v4, v12, -0x40

    const/16 v17, 0x0

    move-object/from16 v15, p0

    move-object/from16 v19, v9

    invoke-direct/range {v15 .. v20}, Lb/a/a/e;->a([Ljava/lang/Object;II[C[Lb/a/a/o;)I

    move-result v18

    const/4 v7, 0x4

    const/4 v5, 0x1

    goto :goto_44

    :cond_65
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v21

    add-int/lit8 v18, v18, 0x2

    const/16 v4, 0xf7

    if-ne v12, v4, :cond_66

    const/16 v17, 0x0

    move-object/from16 v15, p0

    move-object/from16 v19, v9

    invoke-direct/range {v15 .. v20}, Lb/a/a/e;->a([Ljava/lang/Object;II[C[Lb/a/a/o;)I

    move-result v18

    const/4 v5, 0x4

    const/4 v4, 0x1

    move v7, v5

    move v5, v4

    move/from16 v4, v21

    goto :goto_44

    :cond_66
    const/16 v4, 0xf8

    if-lt v12, v4, :cond_67

    const/16 v4, 0xfb

    if-ge v12, v4, :cond_67

    const/4 v6, 0x2

    rsub-int v5, v12, 0xfb

    sub-int/2addr v13, v5

    const/4 v4, 0x0

    move v7, v6

    move v6, v5

    move v5, v4

    move/from16 v4, v21

    goto :goto_44

    :cond_67
    const/16 v4, 0xfb

    if-ne v12, v4, :cond_68

    const/4 v5, 0x3

    const/4 v4, 0x0

    move v7, v5

    move v5, v4

    move/from16 v4, v21

    goto :goto_44

    :cond_68
    const/16 v4, 0xff

    if-ge v12, v4, :cond_6b

    if-eqz v27, :cond_69

    move v4, v13

    :goto_45
    add-int/lit16 v5, v12, -0xfb

    move/from16 v8, v18

    move v7, v4

    move v4, v5

    :goto_46
    if-lez v4, :cond_6a

    add-int/lit8 v15, v7, 0x1

    move-object/from16 v5, p0

    move-object v6, v14

    move-object/from16 v10, v20

    invoke-direct/range {v5 .. v10}, Lb/a/a/e;->a([Ljava/lang/Object;II[C[Lb/a/a/o;)I

    move-result v8

    add-int/lit8 v4, v4, -0x1

    move v7, v15

    goto :goto_46

    :cond_69
    const/4 v4, 0x0

    goto :goto_45

    :cond_6a
    const/4 v6, 0x1

    add-int/lit16 v5, v12, -0xfb

    add-int/2addr v13, v5

    const/4 v4, 0x0

    move v7, v6

    move/from16 v18, v8

    move v6, v5

    move v5, v4

    move/from16 v4, v21

    goto/16 :goto_44

    :cond_6b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v12

    add-int/lit8 v8, v18, 0x2

    const/4 v7, 0x0

    move v4, v12

    :goto_47
    if-lez v4, :cond_6c

    add-int/lit8 v15, v7, 0x1

    move-object/from16 v5, p0

    move-object v6, v14

    move-object/from16 v10, v20

    invoke-direct/range {v5 .. v10}, Lb/a/a/e;->a([Ljava/lang/Object;II[C[Lb/a/a/o;)I

    move-result v8

    add-int/lit8 v4, v4, -0x1

    move v7, v15

    goto :goto_47

    :cond_6c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v18, v8, 0x2

    const/16 v17, 0x0

    move v5, v4

    :goto_48
    if-lez v5, :cond_7f

    add-int/lit8 v6, v17, 0x1

    move-object/from16 v15, p0

    move-object/from16 v19, v9

    invoke-direct/range {v15 .. v20}, Lb/a/a/e;->a([Ljava/lang/Object;II[C[Lb/a/a/o;)I

    move-result v18

    add-int/lit8 v5, v5, -0x1

    move/from16 v17, v6

    goto :goto_48

    :cond_6d
    const/4 v14, 0x0

    goto/16 :goto_41

    :cond_6e
    aget-byte v4, v42, v34

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lb/a/a/g;->c:[B

    aget-byte v5, v5, v4

    packed-switch v5, :pswitch_data_1

    :pswitch_a
    add-int/lit8 v4, v34, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v34, 0x3

    aget-byte v5, v42, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v11, v4, v5}, Lb/a/a/p;->a(Ljava/lang/String;I)V

    add-int/lit8 v5, v34, 0x4

    :goto_49
    move/from16 v4, v33

    move/from16 v34, v5

    goto/16 :goto_40

    :pswitch_b
    invoke-virtual {v11, v4}, Lb/a/a/p;->a(I)V

    add-int/lit8 v5, v34, 0x1

    goto :goto_49

    :pswitch_c
    const/16 v5, 0x36

    if-le v4, v5, :cond_6f

    add-int/lit8 v4, v4, -0x3b

    shr-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x36

    and-int/lit8 v4, v4, 0x3

    invoke-virtual {v11, v5, v4}, Lb/a/a/p;->b(II)V

    :goto_4a
    add-int/lit8 v5, v34, 0x1

    goto :goto_49

    :cond_6f
    add-int/lit8 v4, v4, -0x1a

    shr-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x15

    and-int/lit8 v4, v4, 0x3

    invoke-virtual {v11, v5, v4}, Lb/a/a/p;->b(II)V

    goto :goto_4a

    :pswitch_d
    add-int/lit8 v5, v34, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->c(I)S

    move-result v5

    add-int v5, v5, v36

    aget-object v5, v20, v5

    invoke-virtual {v11, v4, v5}, Lb/a/a/p;->a(ILb/a/a/o;)V

    add-int/lit8 v5, v34, 0x3

    goto :goto_49

    :pswitch_e
    add-int/lit8 v4, v4, -0x21

    add-int/lit8 v5, v34, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->d(I)I

    move-result v5

    add-int v5, v5, v36

    aget-object v5, v20, v5

    invoke-virtual {v11, v4, v5}, Lb/a/a/p;->a(ILb/a/a/o;)V

    add-int/lit8 v5, v34, 0x5

    goto :goto_49

    :pswitch_f
    add-int/lit8 v4, v34, 0x1

    aget-byte v4, v42, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x84

    if-ne v4, v5, :cond_70

    add-int/lit8 v4, v34, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, v34, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->c(I)S

    move-result v5

    invoke-virtual {v11, v4, v5}, Lb/a/a/p;->c(II)V

    add-int/lit8 v5, v34, 0x6

    goto :goto_49

    :cond_70
    add-int/lit8 v5, v34, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v5

    invoke-virtual {v11, v4, v5}, Lb/a/a/p;->b(II)V

    add-int/lit8 v5, v34, 0x4

    goto :goto_49

    :pswitch_10
    add-int/lit8 v4, v34, 0x4

    and-int/lit8 v5, v36, 0x3

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v5

    add-int v6, v36, v5

    add-int/lit8 v5, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->d(I)I

    move-result v10

    add-int/lit8 v5, v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->d(I)I

    move-result v12

    add-int/lit8 v5, v4, 0xc

    sub-int v4, v12, v10

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Lb/a/a/o;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    :goto_4b
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_71

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->d(I)I

    move-result v18

    add-int v18, v18, v36

    aget-object v18, v20, v18

    aput-object v18, v17, v4

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_71
    aget-object v4, v20, v6

    move-object/from16 v0, v17

    invoke-virtual {v11, v10, v12, v4, v0}, Lb/a/a/p;->a(IILb/a/a/o;[Lb/a/a/o;)V

    goto/16 :goto_49

    :pswitch_11
    add-int/lit8 v4, v34, 0x4

    and-int/lit8 v5, v36, 0x3

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->d(I)I

    move-result v5

    add-int v6, v36, v5

    add-int/lit8 v5, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->d(I)I

    move-result v10

    add-int/lit8 v5, v4, 0x8

    new-array v12, v10, [I

    new-array v10, v10, [Lb/a/a/o;

    const/4 v4, 0x0

    :goto_4c
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->d(I)I

    move-result v17

    aput v17, v12, v4

    add-int/lit8 v17, v5, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lb/a/a/e;->d(I)I

    move-result v17

    add-int v17, v17, v36

    aget-object v17, v20, v17

    aput-object v17, v10, v4

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_72
    aget-object v4, v20, v6

    invoke-virtual {v11, v4, v12, v10}, Lb/a/a/p;->a(Lb/a/a/o;[I[Lb/a/a/o;)V

    goto/16 :goto_49

    :pswitch_12
    add-int/lit8 v5, v34, 0x1

    aget-byte v5, v42, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v11, v4, v5}, Lb/a/a/p;->b(II)V

    add-int/lit8 v5, v34, 0x2

    goto/16 :goto_49

    :pswitch_13
    add-int/lit8 v5, v34, 0x1

    aget-byte v5, v42, v5

    invoke-virtual {v11, v4, v5}, Lb/a/a/p;->a(II)V

    add-int/lit8 v5, v34, 0x2

    goto/16 :goto_49

    :pswitch_14
    add-int/lit8 v5, v34, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->c(I)S

    move-result v5

    invoke-virtual {v11, v4, v5}, Lb/a/a/p;->a(II)V

    add-int/lit8 v5, v34, 0x3

    goto/16 :goto_49

    :pswitch_15
    add-int/lit8 v4, v34, 0x1

    aget-byte v4, v42, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v4}, Lb/a/a/p;->a(Ljava/lang/Object;)V

    add-int/lit8 v5, v34, 0x2

    goto/16 :goto_49

    :pswitch_16
    add-int/lit8 v4, v34, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v4}, Lb/a/a/p;->a(Ljava/lang/Object;)V

    add-int/lit8 v5, v34, 0x3

    goto/16 :goto_49

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lb/a/a/e;->c:[I

    add-int/lit8 v6, v34, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lb/a/a/e;->b(I)I

    move-result v6

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lb/a/a/e;->c:[I

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v5

    aget v5, v10, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0xb6

    if-ge v4, v12, :cond_73

    invoke-virtual {v11, v4, v6, v10, v5}, Lb/a/a/p;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    const/16 v5, 0xb9

    if-ne v4, v5, :cond_74

    add-int/lit8 v5, v34, 0x5

    goto/16 :goto_49

    :cond_73
    invoke-virtual {v11, v4, v6, v10, v5}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :cond_74
    add-int/lit8 v5, v34, 0x3

    goto/16 :goto_49

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lb/a/a/e;->c:[I

    add-int/lit8 v5, v34, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v5

    aget v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v5

    aget v5, v28, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lb/a/a/e;->c:[I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/e;->b(I)I

    move-result v4

    aget v4, v6, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lb/a/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/a/a/l;

    add-int/lit8 v6, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lb/a/a/e;->b(I)I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    add-int/lit8 v6, v5, 0x4

    const/4 v5, 0x0

    :goto_4e
    move/from16 v0, v17

    if-ge v5, v0, :cond_75

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lb/a/a/e;->b(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lb/a/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v18, v5

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    :cond_75
    move-object/from16 v0, v18

    invoke-virtual {v11, v10, v12, v4, v0}, Lb/a/a/p;->a(Ljava/lang/String;Ljava/lang/String;Lb/a/a/l;[Ljava/lang/Object;)V

    add-int/lit8 v5, v34, 0x5

    goto/16 :goto_49

    :pswitch_19
    add-int/lit8 v5, v34, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Lb/a/a/p;->a(ILjava/lang/String;)V

    add-int/lit8 v5, v34, 0x3

    goto/16 :goto_49

    :pswitch_1a
    add-int/lit8 v4, v34, 0x1

    aget-byte v4, v42, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v34, 0x2

    aget-byte v5, v42, v5

    invoke-virtual {v11, v4, v5}, Lb/a/a/p;->c(II)V

    add-int/lit8 v5, v34, 0x3

    goto/16 :goto_49

    :cond_76
    sub-int v4, v46, v35

    aget-object v4, v20, v4

    if-eqz v4, :cond_77

    invoke-virtual {v11, v4}, Lb/a/a/p;->a(Lb/a/a/o;)V

    :cond_77
    if-nez v40, :cond_7b

    if-eqz v32, :cond_7b

    const/4 v4, 0x0

    if-eqz v31, :cond_78

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v6, v31, 0x2

    new-array v4, v5, [I

    :goto_4f
    if-lez v5, :cond_78

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v7, v6, 0x6

    aput v7, v4, v5

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v7, v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lb/a/a/e;->b(I)I

    move-result v7

    aput v7, v4, v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lb/a/a/e;->b(I)I

    move-result v7

    aput v7, v4, v5

    add-int/lit8 v6, v6, 0xa

    goto :goto_4f

    :cond_78
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(I)I

    move-result v5

    add-int/lit8 v6, v32, 0x2

    move v7, v6

    move v6, v5

    :goto_50
    if-lez v6, :cond_7b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lb/a/a/e;->b(I)I

    move-result v8

    add-int/lit8 v5, v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v10

    add-int/lit8 v5, v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lb/a/a/e;->b(I)I

    move-result v17

    const/4 v14, 0x0

    if-eqz v4, :cond_79

    const/4 v5, 0x0

    :goto_51
    array-length v12, v4

    if-ge v5, v12, :cond_79

    aget v12, v4, v5

    if-ne v12, v8, :cond_7a

    add-int/lit8 v12, v5, 0x1

    aget v12, v4, v12

    move/from16 v0, v17

    if-ne v12, v0, :cond_7a

    add-int/lit8 v5, v5, 0x2

    aget v5, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v14

    :cond_79
    add-int/lit8 v5, v7, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v5, v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v13

    aget-object v15, v20, v8

    add-int v5, v8, v10

    aget-object v16, v20, v5

    invoke-virtual/range {v11 .. v17}, Lb/a/a/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/a/a/o;Lb/a/a/o;I)V

    add-int/lit8 v7, v7, 0xa

    add-int/lit8 v5, v6, -0x1

    move v6, v5

    goto :goto_50

    :cond_7a
    add-int/lit8 v5, v5, 0x3

    goto :goto_51

    :cond_7b
    :goto_52
    if-eqz v29, :cond_7c

    move-object/from16 v0, v29

    iget-object v4, v0, Lb/a/a/c;->c:Lb/a/a/c;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iput-object v5, v0, Lb/a/a/c;->c:Lb/a/a/c;

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lb/a/a/p;->a(Lb/a/a/c;)V

    move-object/from16 v29, v4

    goto :goto_52

    :cond_7c
    move/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Lb/a/a/p;->d(II)V

    :cond_7d
    if-eqz v11, :cond_3b

    invoke-virtual {v11}, Lb/a/a/p;->c()V

    goto/16 :goto_24

    :cond_7e
    invoke-virtual/range {p1 .. p1}, Lb/a/a/f;->a()V

    return-void

    :cond_7f
    move v5, v4

    move v6, v12

    move v7, v13

    move v13, v12

    move/from16 v4, v21

    goto/16 :goto_44

    :cond_80
    move v4, v5

    goto/16 :goto_38

    :cond_81
    move/from16 v4, v22

    goto/16 :goto_3a

    :cond_82
    move-object/from16 v16, v23

    move-object/from16 v4, v24

    move/from16 v5, v25

    goto/16 :goto_3f

    :cond_83
    move/from16 v4, v30

    move v5, v7

    move v6, v8

    move v7, v10

    move/from16 v8, v31

    move/from16 v10, v32

    goto/16 :goto_34

    :cond_84
    move v5, v7

    move v6, v8

    move v7, v10

    move/from16 v8, v31

    move v10, v4

    move/from16 v4, v30

    goto/16 :goto_34

    :cond_85
    move-object v4, v5

    goto/16 :goto_37

    :cond_86
    move/from16 v4, v30

    move v6, v8

    move-object/from16 v29, v5

    move/from16 v8, v31

    move v5, v7

    move v7, v10

    move/from16 v10, v32

    goto/16 :goto_34

    :cond_87
    move v5, v6

    goto/16 :goto_23

    :cond_88
    move-object v15, v6

    goto/16 :goto_22

    :cond_89
    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move v10, v15

    move/from16 v11, v19

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v22

    move/from16 v18, v23

    goto/16 :goto_21

    :cond_8a
    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_18

    :cond_8b
    move-object/from16 v4, v28

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v26

    goto/16 :goto_a

    :cond_8c
    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto/16 :goto_b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_3
        0x46 -> :sswitch_1
        0x49 -> :sswitch_0
        0x4a -> :sswitch_2
        0x4c -> :sswitch_5
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_c
        :pswitch_19
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_1a
        :pswitch_10
        :pswitch_11
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public b(I)I
    .locals 3

    iget-object v0, p0, Lb/a/a/e;->a:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public b(I[C)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a/a/e;->c:[I

    invoke-virtual {p0, p1}, Lb/a/a/e;->b(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I[C)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lb/a/a/e;->c:[I

    aget v1, v0, p1

    iget-object v0, p0, Lb/a/a/e;->a:[B

    add-int/lit8 v2, v1, -0x1

    aget-byte v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lb/a/a/e;->a(I)I

    move-result v2

    iget-object v0, p0, Lb/a/a/e;->c:[I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lb/a/a/e;->b(I)I

    move-result v1

    aget v1, v0, v1

    invoke-virtual {p0, v1, p2}, Lb/a/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lb/a/a/e;->b(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lb/a/a/l;

    invoke-direct {v0, v2, v3, v1, v4}, Lb/a/a/l;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lb/a/a/e;->d(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, v1}, Lb/a/a/e;->d(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, v1}, Lb/a/a/e;->e(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, v1}, Lb/a/a/e;->e(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v1, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/s;->b(Ljava/lang/String;)Lb/a/a/s;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v1, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v1, p2}, Lb/a/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/s;->c(Ljava/lang/String;)Lb/a/a/s;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public c(I)S
    .locals 3

    iget-object v0, p0, Lb/a/a/e;->a:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public d(I)I
    .locals 3

    iget-object v0, p0, Lb/a/a/e;->a:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public e(I)J
    .locals 6

    invoke-virtual {p0, p1}, Lb/a/a/e;->d(I)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lb/a/a/e;->d(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method
