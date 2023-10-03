.class public Lcom/esotericsoftware/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/esotericsoftware/a/i;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Double;

.field private f:J

.field private g:Lcom/esotericsoftware/a/g;

.field private h:Lcom/esotericsoftware/a/g;

.field private i:Lcom/esotericsoftware/a/g;


# direct methods
.method public constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/g;->a(D)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/g;->a(J)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/a/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Z)V

    return-void
.end method

.method private static a(ILjava/lang/StringBuilder;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/esotericsoftware/a/g;Ljava/lang/StringBuilder;Lcom/esotericsoftware/a/q;II)V
    .locals 8

    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->r()Lcom/esotericsoftware/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "{}"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/g;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move v6, v0

    :goto_2
    if-eqz v6, :cond_4

    const-string v0, "{\n"

    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->r()Lcom/esotericsoftware/a/g;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_7

    if-eqz v6, :cond_1

    invoke-static {p4, p2}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/StringBuilder;)V

    :cond_1
    invoke-virtual {v1}, Lcom/esotericsoftware/a/g;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/g;Ljava/lang/StringBuilder;Lcom/esotericsoftware/a/q;II)V

    invoke-virtual {v1}, Lcom/esotericsoftware/a/g;->s()Lcom/esotericsoftware/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v6, :cond_5

    const/16 v0, 0xa

    :goto_5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v6, :cond_6

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v7

    if-le v0, p5, :cond_6

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    move v6, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v0, "{ "

    goto :goto_3

    :cond_5
    const/16 v0, 0x20

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Lcom/esotericsoftware/a/g;->s()Lcom/esotericsoftware/a/g;

    move-result-object v1

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_8

    add-int/lit8 v0, p4, -0x1

    invoke-static {v0, p2}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/StringBuilder;)V

    :cond_8
    const/16 v0, 0x7d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->h()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->r()Lcom/esotericsoftware/a/g;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "[]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    invoke-static {p1}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/g;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move v6, v0

    :goto_7
    if-eqz v6, :cond_e

    const-string v0, "[\n"

    :goto_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->r()Lcom/esotericsoftware/a/g;

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_11

    if-eqz v6, :cond_b

    invoke-static {p4, p2}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/StringBuilder;)V

    :cond_b
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/g;Ljava/lang/StringBuilder;Lcom/esotericsoftware/a/q;II)V

    invoke-virtual {v1}, Lcom/esotericsoftware/a/g;->s()Lcom/esotericsoftware/a/g;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v6, :cond_f

    const/16 v0, 0xa

    :goto_a
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v6, :cond_10

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v7

    if-le v0, p5, :cond_10

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    move v6, v0

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    :cond_e
    const-string v0, "[ "

    goto :goto_8

    :cond_f
    const/16 v0, 0x20

    goto :goto_a

    :cond_10
    invoke-virtual {v1}, Lcom/esotericsoftware/a/g;->s()Lcom/esotericsoftware/a/g;

    move-result-object v1

    goto :goto_9

    :cond_11
    if-eqz v6, :cond_12

    add-int/lit8 v0, p4, -0x1

    invoke-static {v0, p2}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/StringBuilder;)V

    :cond_12
    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->l()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->d()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->e()J

    move-result-wide v2

    long-to-double v4, v2

    cmpl-double v4, v0, v4

    if-nez v4, :cond_15

    long-to-double v0, v2

    :cond_15
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->e()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->n()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->g()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p1}, Lcom/esotericsoftware/a/g;->o()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_19
    new-instance v0, Lcom/esotericsoftware/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lcom/esotericsoftware/a/g;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/esotericsoftware/a/g;->r()Lcom/esotericsoftware/a/g;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->i()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->s()Lcom/esotericsoftware/a/g;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v1, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/g;

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/esotericsoftware/a/g;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/g;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/esotericsoftware/a/q;I)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/g;Ljava/lang/StringBuilder;Lcom/esotericsoftware/a/q;II)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->b()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public a(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    double-to-long v0, p1

    iput-wide v0, p0, Lcom/esotericsoftware/a/g;->f:J

    sget-object v0, Lcom/esotericsoftware/a/i;->d:Lcom/esotericsoftware/a/i;

    iput-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    return-void
.end method

.method public a(J)V
    .locals 3

    iput-wide p1, p0, Lcom/esotericsoftware/a/g;->f:J

    long-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    sget-object v0, Lcom/esotericsoftware/a/i;->e:Lcom/esotericsoftware/a/i;

    iput-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    return-void
.end method

.method public a(Lcom/esotericsoftware/a/g;)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/g;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/g;

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    :cond_1
    iget-object v1, v0, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    if-nez v1, :cond_0

    iput-object p1, v0, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    iput-object v0, p1, Lcom/esotericsoftware/a/g;->i:Lcom/esotericsoftware/a/g;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    sget-object v0, Lcom/esotericsoftware/a/i;->f:Lcom/esotericsoftware/a/i;

    iput-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/esotericsoftware/a/g;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/g;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v1, Lcom/esotericsoftware/a/g;->i:Lcom/esotericsoftware/a/g;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    iput-object v2, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/g;

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/g;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/g;

    iput-object v0, v2, Lcom/esotericsoftware/a/g;->i:Lcom/esotericsoftware/a/g;

    :cond_1
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/esotericsoftware/a/g;->i:Lcom/esotericsoftware/a/g;

    iget-object v2, v1, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    iput-object v2, v0, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    iget-object v0, v1, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    iget-object v2, v1, Lcom/esotericsoftware/a/g;->i:Lcom/esotericsoftware/a/g;

    iput-object v2, v0, Lcom/esotericsoftware/a/g;->i:Lcom/esotericsoftware/a/g;

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/esotericsoftware/a/g;->f:J

    long-to-double v2, v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/esotericsoftware/a/g;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->g:Lcom/esotericsoftware/a/i;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()F
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to float: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method public d()D
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to double: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    if-nez p1, :cond_0

    sget-object v0, Lcom/esotericsoftware/a/i;->g:Lcom/esotericsoftware/a/i;

    :goto_0
    iput-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    return-void

    :cond_0
    sget-object v0, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    goto :goto_0
.end method

.method public e()J
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/esotericsoftware/a/g;->f:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()I
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/esotericsoftware/a/g;->f:J

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Z
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->e:Ljava/lang/Double;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/esotericsoftware/a/g;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->c:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->a:Lcom/esotericsoftware/a/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->d:Lcom/esotericsoftware/a/i;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->e:Lcom/esotericsoftware/a/i;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->d:Lcom/esotericsoftware/a/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->e:Lcom/esotericsoftware/a/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->f:Lcom/esotericsoftware/a/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->g:Lcom/esotericsoftware/a/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    sget-object v0, Lcom/esotericsoftware/a/h;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/a/g;->b:Lcom/esotericsoftware/a/i;

    invoke-virtual {v1}, Lcom/esotericsoftware/a/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public r()Lcom/esotericsoftware/a/g;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/g;

    return-object v0
.end method

.method public s()Lcom/esotericsoftware/a/g;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->h:Lcom/esotericsoftware/a/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/esotericsoftware/a/q;->c:Lcom/esotericsoftware/a/q;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/q;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
