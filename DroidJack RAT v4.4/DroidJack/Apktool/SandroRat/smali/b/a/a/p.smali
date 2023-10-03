.class public abstract Lb/a/a/p;
.super Ljava/lang/Object;


# instance fields
.field protected final a:I

.field protected b:Lb/a/a/p;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/a/a/p;-><init>(ILb/a/a/p;)V

    return-void
.end method

.method public constructor <init>(ILb/a/a/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/a/p;->a:I

    iput-object p2, p0, Lb/a/a/p;->b:Lb/a/a/p;

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a;
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0}, Lb/a/a/p;->a()Lb/a/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Z)Lb/a/a/a;
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/p;->a(ILjava/lang/String;Z)Lb/a/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Lb/a/a/a;
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2}, Lb/a/a/p;->a(Ljava/lang/String;Z)Lb/a/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1}, Lb/a/a/p;->a(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2}, Lb/a/a/p;->a(II)V

    :cond_0
    return-void
.end method

.method public varargs a(IILb/a/a/o;[Lb/a/a/o;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/p;->a(IILb/a/a/o;[Lb/a/a/o;)V

    :cond_0
    return-void
.end method

.method public a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(ILb/a/a/o;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2}, Lb/a/a/p;->a(ILb/a/a/o;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/p;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lb/a/a/c;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1}, Lb/a/a/p;->a(Lb/a/a/c;)V

    :cond_0
    return-void
.end method

.method public a(Lb/a/a/o;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1}, Lb/a/a/p;->a(Lb/a/a/o;)V

    :cond_0
    return-void
.end method

.method public a(Lb/a/a/o;Lb/a/a/o;Lb/a/a/o;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/p;->a(Lb/a/a/o;Lb/a/a/o;Lb/a/a/o;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lb/a/a/o;[I[Lb/a/a/o;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/p;->a(Lb/a/a/o;[I[Lb/a/a/o;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1}, Lb/a/a/p;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2}, Lb/a/a/p;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Lb/a/a/l;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/p;->a(Ljava/lang/String;Ljava/lang/String;Lb/a/a/l;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/a/a/o;Lb/a/a/o;I)V
    .locals 7

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lb/a/a/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/a/a/o;Lb/a/a/o;I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0}, Lb/a/a/p;->b()V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2}, Lb/a/a/p;->b(II)V

    :cond_0
    return-void
.end method

.method public b(ILb/a/a/o;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2}, Lb/a/a/p;->b(ILb/a/a/o;)V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0}, Lb/a/a/p;->c()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2}, Lb/a/a/p;->c(II)V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/p;->b:Lb/a/a/p;

    invoke-virtual {v0, p1, p2}, Lb/a/a/p;->d(II)V

    :cond_0
    return-void
.end method
