.class public Lb/a/a/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/a/a/s;

.field public static final b:Lb/a/a/s;

.field public static final c:Lb/a/a/s;

.field public static final d:Lb/a/a/s;

.field public static final e:Lb/a/a/s;

.field public static final f:Lb/a/a/s;

.field public static final g:Lb/a/a/s;

.field public static final h:Lb/a/a/s;

.field public static final i:Lb/a/a/s;


# instance fields
.field private final j:I

.field private final k:[C

.field private final l:I

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lb/a/a/s;

    const/4 v1, 0x0

    const/high16 v2, 0x56050000

    invoke-direct {v0, v1, v4, v2, v3}, Lb/a/a/s;-><init>(I[CII)V

    sput-object v0, Lb/a/a/s;->a:Lb/a/a/s;

    new-instance v0, Lb/a/a/s;

    const v1, 0x5a000501

    invoke-direct {v0, v3, v4, v1, v3}, Lb/a/a/s;-><init>(I[CII)V

    sput-object v0, Lb/a/a/s;->b:Lb/a/a/s;

    new-instance v0, Lb/a/a/s;

    const/4 v1, 0x2

    const v2, 0x43000601

    invoke-direct {v0, v1, v4, v2, v3}, Lb/a/a/s;-><init>(I[CII)V

    sput-object v0, Lb/a/a/s;->c:Lb/a/a/s;

    new-instance v0, Lb/a/a/s;

    const/4 v1, 0x3

    const v2, 0x42000501

    invoke-direct {v0, v1, v4, v2, v3}, Lb/a/a/s;-><init>(I[CII)V

    sput-object v0, Lb/a/a/s;->d:Lb/a/a/s;

    new-instance v0, Lb/a/a/s;

    const/4 v1, 0x4

    const v2, 0x53000701

    invoke-direct {v0, v1, v4, v2, v3}, Lb/a/a/s;-><init>(I[CII)V

    sput-object v0, Lb/a/a/s;->e:Lb/a/a/s;

    new-instance v0, Lb/a/a/s;

    const/4 v1, 0x5

    const v2, 0x49000001

    invoke-direct {v0, v1, v4, v2, v3}, Lb/a/a/s;-><init>(I[CII)V

    sput-object v0, Lb/a/a/s;->f:Lb/a/a/s;

    new-instance v0, Lb/a/a/s;

    const/4 v1, 0x6

    const v2, 0x46020201

    invoke-direct {v0, v1, v4, v2, v3}, Lb/a/a/s;-><init>(I[CII)V

    sput-object v0, Lb/a/a/s;->g:Lb/a/a/s;

    new-instance v0, Lb/a/a/s;

    const/4 v1, 0x7

    const v2, 0x4a010102    # 2113600.5f

    invoke-direct {v0, v1, v4, v2, v3}, Lb/a/a/s;-><init>(I[CII)V

    sput-object v0, Lb/a/a/s;->h:Lb/a/a/s;

    new-instance v0, Lb/a/a/s;

    const/16 v1, 0x8

    const v2, 0x44030302

    invoke-direct {v0, v1, v4, v2, v3}, Lb/a/a/s;-><init>(I[CII)V

    sput-object v0, Lb/a/a/s;->i:Lb/a/a/s;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/a/s;->j:I

    iput-object p2, p0, Lb/a/a/s;->k:[C

    iput p3, p0, Lb/a/a/s;->l:I

    iput p4, p0, Lb/a/a/s;->m:I

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lb/a/a/s;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    sget-object v0, Lb/a/a/s;->f:Lb/a/a/s;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    sget-object v0, Lb/a/a/s;->a:Lb/a/a/s;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    sget-object v0, Lb/a/a/s;->b:Lb/a/a/s;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    sget-object v0, Lb/a/a/s;->d:Lb/a/a/s;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    sget-object v0, Lb/a/a/s;->c:Lb/a/a/s;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    sget-object v0, Lb/a/a/s;->e:Lb/a/a/s;

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    sget-object v0, Lb/a/a/s;->i:Lb/a/a/s;

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    sget-object v0, Lb/a/a/s;->g:Lb/a/a/s;

    goto :goto_0

    :cond_7
    sget-object v0, Lb/a/a/s;->h:Lb/a/a/s;

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lb/a/a/s;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/s;->a(Ljava/lang/String;)Lb/a/a/s;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lb/a/a/s;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/a/s;->a([CI)Lb/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method private static a([CI)Lb/a/a/s;
    .locals 4

    const/16 v3, 0x3b

    const/4 v0, 0x1

    aget-char v1, p0, p1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lb/a/a/s;

    const/16 v1, 0xb

    const/4 v2, 0x0

    array-length v3, p0

    invoke-direct {v0, v1, p0, v2, v3}, Lb/a/a/s;-><init>(I[CII)V

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lb/a/a/s;->a:Lb/a/a/s;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lb/a/a/s;->b:Lb/a/a/s;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lb/a/a/s;->c:Lb/a/a/s;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lb/a/a/s;->d:Lb/a/a/s;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lb/a/a/s;->e:Lb/a/a/s;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lb/a/a/s;->f:Lb/a/a/s;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lb/a/a/s;->g:Lb/a/a/s;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lb/a/a/s;->h:Lb/a/a/s;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lb/a/a/s;->i:Lb/a/a/s;

    goto :goto_0

    :goto_1
    :pswitch_a
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    new-instance v1, Lb/a/a/s;

    const/16 v2, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v0}, Lb/a/a/s;-><init>(I[CII)V

    move-object v0, v1

    goto :goto_0

    :goto_3
    :pswitch_b
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    new-instance v1, Lb/a/a/s;

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v2, p0, v3, v0}, Lb/a/a/s;-><init>(I[CII)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuffer;)V
    .locals 3

    iget-object v0, p0, Lb/a/a/s;->k:[C

    if-nez v0, :cond_0

    iget v0, p0, Lb/a/a/s;->l:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lb/a/a/s;->j:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lb/a/a/s;->k:[C

    iget v1, p0, Lb/a/a/s;->l:I

    iget v2, p0, Lb/a/a/s;->m:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/a/a/s;->k:[C

    iget v1, p0, Lb/a/a/s;->l:I

    iget v2, p0, Lb/a/a/s;->m:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V
    .locals 5

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x49

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    return-void

    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x56

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const/16 v0, 0x5a

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const/16 v0, 0x42

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const/16 v0, 0x43

    goto :goto_1

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const/16 v0, 0x53

    goto :goto_1

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const/16 v0, 0x44

    goto :goto_1

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    const/16 v0, 0x46

    goto :goto_1

    :cond_7
    const/16 v0, 0x4a

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_9
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_b

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_a

    const/16 v0, 0x2f

    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_b
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Lb/a/a/s;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Lb/a/a/s;

    aget-char v0, v1, v4

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_0

    const/16 v0, 0x9

    :goto_0
    array-length v3, v1

    invoke-direct {v2, v0, v1, v4, v3}, Lb/a/a/s;-><init>(I[CII)V

    return-object v2

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0}, Lb/a/a/s;->a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lb/a/a/s;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/a/s;->a([CI)Lb/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)[Lb/a/a/s;
    .locals 9

    const/16 v8, 0x29

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v0, v1

    move v2, v3

    :goto_0
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v5, v2

    if-ne v2, v8, :cond_0

    new-array v4, v0, [Lb/a/a/s;

    move v0, v1

    :goto_1
    aget-char v2, v5, v3

    if-eq v2, v8, :cond_4

    invoke-static {v5, v3}, Lb/a/a/s;->a([CI)Lb/a/a/s;

    move-result-object v2

    aput-object v2, v4, v0

    aget-object v2, v4, v0

    iget v6, v2, Lb/a/a/s;->m:I

    aget-object v2, v4, v0

    iget v2, v2, Lb/a/a/s;->j:I

    const/16 v7, 0xa

    if-ne v2, v7, :cond_3

    const/4 v2, 0x2

    :goto_2
    add-int/2addr v2, v6

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v6, 0x4c

    if-ne v2, v6, :cond_2

    move v2, v4

    :goto_3
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v5, v2

    const/16 v6, 0x3b

    if-eq v2, v6, :cond_1

    move v2, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_2
    const/16 v6, 0x5b

    if-eq v2, v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    return-object v4

    :cond_5
    move v2, v4

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 8

    const/16 v7, 0x5b

    const/16 v6, 0x4a

    const/16 v5, 0x44

    const/4 v1, 0x1

    move v0, v1

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x29

    if-ne v0, v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v2, v2, 0x2

    const/16 v3, 0x56

    if-ne v0, v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_1
    or-int v0, v2, v1

    return v0

    :cond_1
    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_5

    move v0, v3

    :goto_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    :cond_5
    if-ne v0, v7, :cond_8

    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    if-eq v0, v5, :cond_7

    if-ne v0, v6, :cond_b

    :cond_7
    add-int/lit8 v2, v2, -0x1

    move v0, v3

    goto :goto_0

    :cond_8
    if-eq v0, v5, :cond_9

    if-ne v0, v6, :cond_a

    :cond_9
    add-int/lit8 v2, v2, 0x2

    move v0, v3

    goto :goto_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    :cond_b
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb/a/a/s;->j:I

    return v0
.end method

.method public b()I
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lb/a/a/s;->k:[C

    iget v2, p0, Lb/a/a/s;->l:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public c()Lb/a/a/s;
    .locals 3

    iget-object v0, p0, Lb/a/a/s;->k:[C

    iget v1, p0, Lb/a/a/s;->l:I

    invoke-virtual {p0}, Lb/a/a/s;->b()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lb/a/a/s;->a([CI)Lb/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lb/a/a/s;->j:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "void"

    goto :goto_0

    :pswitch_1
    const-string v0, "boolean"

    goto :goto_0

    :pswitch_2
    const-string v0, "char"

    goto :goto_0

    :pswitch_3
    const-string v0, "byte"

    goto :goto_0

    :pswitch_4
    const-string v0, "short"

    goto :goto_0

    :pswitch_5
    const-string v0, "int"

    goto :goto_0

    :pswitch_6
    const-string v0, "float"

    goto :goto_0

    :pswitch_7
    const-string v0, "long"

    goto :goto_0

    :pswitch_8
    const-string v0, "double"

    goto :goto_0

    :pswitch_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lb/a/a/s;->c()Lb/a/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/a/a/s;->b()I

    move-result v0

    :goto_1
    if-lez v0, :cond_0

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/a/a/s;->k:[C

    iget v2, p0, Lb/a/a/s;->l:I

    iget v3, p0, Lb/a/a/s;->m:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/a/a/s;->k:[C

    iget v2, p0, Lb/a/a/s;->l:I

    iget v3, p0, Lb/a/a/s;->m:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lb/a/a/s;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lb/a/a/s;

    iget v2, p0, Lb/a/a/s;->j:I

    iget v3, p1, Lb/a/a/s;->j:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lb/a/a/s;->j:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    iget v2, p0, Lb/a/a/s;->m:I

    iget v3, p1, Lb/a/a/s;->m:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v3, p0, Lb/a/a/s;->l:I

    iget v2, p1, Lb/a/a/s;->l:I

    iget v4, p0, Lb/a/a/s;->m:I

    add-int/2addr v4, v3

    :goto_1
    if-ge v3, v4, :cond_0

    iget-object v5, p0, Lb/a/a/s;->k:[C

    aget-char v5, v5, v3

    iget-object v6, p1, Lb/a/a/s;->k:[C

    aget-char v6, v6, v2

    if-eq v5, v6, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lb/a/a/s;->a(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lb/a/a/s;->j:I

    mul-int/lit8 v0, v0, 0xd

    iget v1, p0, Lb/a/a/s;->j:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    iget v1, p0, Lb/a/a/s;->l:I

    iget v2, p0, Lb/a/a/s;->m:I

    add-int v3, v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v2, p0, Lb/a/a/s;->k:[C

    aget-char v2, v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x11

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb/a/a/s;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
