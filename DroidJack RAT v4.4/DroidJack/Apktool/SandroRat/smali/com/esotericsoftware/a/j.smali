.class public Lcom/esotericsoftware/a/j;
.super Ljava/io/Writer;


# instance fields
.field final a:Ljava/io/Writer;

.field private final b:Ljava/util/ArrayList;

.field private c:Lcom/esotericsoftware/a/k;

.field private d:Z

.field private e:Lcom/esotericsoftware/a/q;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/j;->b:Ljava/util/ArrayList;

    sget-object v0, Lcom/esotericsoftware/a/q;->a:Lcom/esotericsoftware/a/q;

    iput-object v0, p0, Lcom/esotericsoftware/a/j;->e:Lcom/esotericsoftware/a/q;

    iput-object p1, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public a()Lcom/esotericsoftware/a/j;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iget-boolean v0, v0, Lcom/esotericsoftware/a/k;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iget-boolean v0, v0, Lcom/esotericsoftware/a/k;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/esotericsoftware/a/k;->b:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/esotericsoftware/a/k;

    invoke-direct {v1, p0, v2}, Lcom/esotericsoftware/a/k;-><init>(Lcom/esotericsoftware/a/j;Z)V

    iput-object v1, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/esotericsoftware/a/j;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iget-boolean v0, v0, Lcom/esotericsoftware/a/k;->a:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-boolean v2, p0, Lcom/esotericsoftware/a/j;->d:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Lcom/esotericsoftware/a/j;
    .locals 6

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    long-to-double v4, v2

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iget-boolean v0, v0, Lcom/esotericsoftware/a/k;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iget-boolean v0, v0, Lcom/esotericsoftware/a/k;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/esotericsoftware/a/k;->b:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    iget-object v1, p0, Lcom/esotericsoftware/a/j;->e:Lcom/esotericsoftware/a/q;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/esotericsoftware/a/j;->d:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/a/j;->d:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/esotericsoftware/a/j;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iget-boolean v0, v0, Lcom/esotericsoftware/a/k;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current item must be an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iget-boolean v0, v0, Lcom/esotericsoftware/a/k;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iput-boolean v2, v0, Lcom/esotericsoftware/a/k;->b:Z

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    iget-object v1, p0, Lcom/esotericsoftware/a/j;->e:Lcom/esotericsoftware/a/q;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iput-boolean v2, p0, Lcom/esotericsoftware/a/j;->d:Z

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/esotericsoftware/a/j;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/Object;)Lcom/esotericsoftware/a/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/esotericsoftware/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/a/j;->e:Lcom/esotericsoftware/a/q;

    return-void
.end method

.method public b()Lcom/esotericsoftware/a/j;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iget-boolean v0, v0, Lcom/esotericsoftware/a/k;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iget-boolean v0, v0, Lcom/esotericsoftware/a/k;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iput-boolean v2, v0, Lcom/esotericsoftware/a/k;->b:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/esotericsoftware/a/k;

    invoke-direct {v1, p0, v2}, Lcom/esotericsoftware/a/k;-><init>(Lcom/esotericsoftware/a/j;Z)V

    iput-object v1, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/esotericsoftware/a/j;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    iget-boolean v0, v0, Lcom/esotericsoftware/a/k;->a:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/a/j;->d:Z

    goto :goto_0
.end method

.method public c()Lcom/esotericsoftware/a/j;
    .locals 2

    iget-boolean v0, p0, Lcom/esotericsoftware/a/j;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected an object, array, or value since a name was set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/k;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/k;->a()V

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/esotericsoftware/a/j;->c:Lcom/esotericsoftware/a/k;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/k;

    goto :goto_0
.end method

.method public close()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/a/j;->c()Lcom/esotericsoftware/a/j;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
