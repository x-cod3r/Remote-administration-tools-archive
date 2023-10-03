.class final Lb/a/a/j;
.super Lb/a/a/i;


# instance fields
.field private final c:Lb/a/a/g;

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:I

.field private h:I

.field private i:Lb/a/a/b;

.field private j:Lb/a/a/b;

.field private k:Lb/a/a/c;


# direct methods
.method constructor <init>(Lb/a/a/g;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lb/a/a/i;-><init>(I)V

    iget-object v0, p1, Lb/a/a/g;->r:Lb/a/a/j;

    if-nez v0, :cond_2

    iput-object p0, p1, Lb/a/a/g;->r:Lb/a/a/j;

    :goto_0
    iput-object p0, p1, Lb/a/a/g;->s:Lb/a/a/j;

    iput-object p1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    iput p2, p0, Lb/a/a/j;->d:I

    invoke-virtual {p1, p3}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lb/a/a/j;->e:I

    invoke-virtual {p1, p4}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lb/a/a/j;->f:I

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lb/a/a/j;->g:I

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p1, p6}, Lb/a/a/g;->a(Ljava/lang/Object;)Lb/a/a/n;

    move-result-object v0

    iget v0, v0, Lb/a/a/n;->a:I

    iput v0, p0, Lb/a/a/j;->h:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lb/a/a/g;->s:Lb/a/a/j;

    iput-object p0, v0, Lb/a/a/j;->b:Lb/a/a/i;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lb/a/a/a;
    .locals 6

    new-instance v3, Lb/a/a/d;

    invoke-direct {v3}, Lb/a/a/d;-><init>()V

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/g;

    invoke-virtual {v0, p1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    new-instance v0, Lb/a/a/b;

    iget-object v1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lb/a/a/b;-><init>(Lb/a/a/g;ZLb/a/a/d;Lb/a/a/d;I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lb/a/a/j;->i:Lb/a/a/b;

    iput-object v1, v0, Lb/a/a/b;->c:Lb/a/a/b;

    iput-object v0, p0, Lb/a/a/j;->i:Lb/a/a/b;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lb/a/a/j;->j:Lb/a/a/b;

    iput-object v1, v0, Lb/a/a/b;->c:Lb/a/a/b;

    iput-object v0, p0, Lb/a/a/j;->j:Lb/a/a/b;

    goto :goto_0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lb/a/a/c;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/j;->k:Lb/a/a/c;

    iput-object v0, p1, Lb/a/a/c;->c:Lb/a/a/c;

    iput-object p1, p0, Lb/a/a/j;->k:Lb/a/a/c;

    return-void
.end method

.method a(Lb/a/a/d;)V
    .locals 8

    const/16 v7, 0x31

    const/4 v6, 0x2

    const/4 v4, -0x1

    const/high16 v5, 0x40000

    const/4 v3, 0x0

    const/high16 v0, 0x60000

    iget v1, p0, Lb/a/a/j;->d:I

    and-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x40

    or-int/2addr v0, v1

    iget v1, p0, Lb/a/a/j;->d:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/j;->e:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/j;->f:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget v0, p0, Lb/a/a/j;->h:I

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lb/a/a/j;->d:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    iget v1, v1, Lb/a/a/g;->e:I

    const v2, 0xffff

    and-int/2addr v1, v2

    if-lt v1, v7, :cond_0

    iget v1, p0, Lb/a/a/j;->d:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v1, p0, Lb/a/a/j;->d:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v1, p0, Lb/a/a/j;->g:I

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v1, p0, Lb/a/a/j;->i:Lb/a/a/b;

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget-object v1, p0, Lb/a/a/j;->j:Lb/a/a/b;

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget-object v1, p0, Lb/a/a/j;->k:Lb/a/a/c;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lb/a/a/j;->k:Lb/a/a/c;

    invoke-virtual {v1}, Lb/a/a/c;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget v0, p0, Lb/a/a/j;->h:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    invoke-virtual {p1, v6}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/j;->h:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    :cond_7
    iget v0, p0, Lb/a/a/j;->d:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_9

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/g;

    iget v0, v0, Lb/a/a/g;->e:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-lt v0, v7, :cond_8

    iget v0, p0, Lb/a/a/j;->d:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lb/a/a/d;->c(I)Lb/a/a/d;

    :cond_9
    iget v0, p0, Lb/a/a/j;->d:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lb/a/a/d;->c(I)Lb/a/a/d;

    :cond_a
    iget v0, p0, Lb/a/a/j;->g:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    invoke-virtual {p1, v6}, Lb/a/a/d;->c(I)Lb/a/a/d;

    move-result-object v0

    iget v1, p0, Lb/a/a/j;->g:I

    invoke-virtual {v0, v1}, Lb/a/a/d;->b(I)Lb/a/a/d;

    :cond_b
    iget-object v0, p0, Lb/a/a/j;->i:Lb/a/a/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/j;->i:Lb/a/a/b;

    invoke-virtual {v0, p1}, Lb/a/a/b;->a(Lb/a/a/d;)V

    :cond_c
    iget-object v0, p0, Lb/a/a/j;->j:Lb/a/a/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/d;->b(I)Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/j;->j:Lb/a/a/b;

    invoke-virtual {v0, p1}, Lb/a/a/b;->a(Lb/a/a/d;)V

    :cond_d
    iget-object v0, p0, Lb/a/a/j;->k:Lb/a/a/c;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lb/a/a/j;->k:Lb/a/a/c;

    iget-object v1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const/4 v2, 0x0

    move v5, v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lb/a/a/c;->a(Lb/a/a/g;[BIIILb/a/a/d;)V

    :cond_e
    return-void

    :cond_f
    move v0, v3

    goto/16 :goto_0
.end method

.method b()I
    .locals 7

    const/4 v4, -0x1

    const/16 v0, 0x8

    iget v1, p0, Lb/a/a/j;->h:I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lb/a/a/g;->a(Ljava/lang/String;)I

    const/16 v0, 0x10

    :cond_0
    iget v1, p0, Lb/a/a/j;->d:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    iget v1, v1, Lb/a/a/g;->e:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-lt v1, v2, :cond_1

    iget v1, p0, Lb/a/a/j;->d:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_2
    iget v1, p0, Lb/a/a/j;->d:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_3
    iget v1, p0, Lb/a/a/j;->g:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_4
    iget-object v1, p0, Lb/a/a/j;->i:Lb/a/a/b;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lb/a/a/j;->i:Lb/a/a/b;

    invoke-virtual {v1}, Lb/a/a/b;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lb/a/a/j;->j:Lb/a/a/b;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lb/a/a/g;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lb/a/a/j;->j:Lb/a/a/b;

    invoke-virtual {v1}, Lb/a/a/b;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v6, v0

    :goto_0
    iget-object v0, p0, Lb/a/a/j;->k:Lb/a/a/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lb/a/a/j;->k:Lb/a/a/c;

    iget-object v1, p0, Lb/a/a/j;->c:Lb/a/a/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lb/a/a/c;->b(Lb/a/a/g;[BIII)I

    move-result v0

    add-int/2addr v6, v0

    :cond_6
    return v6

    :cond_7
    move v6, v0

    goto :goto_0
.end method
