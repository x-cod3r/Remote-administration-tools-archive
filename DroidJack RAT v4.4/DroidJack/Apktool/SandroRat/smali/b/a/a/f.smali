.class public abstract Lb/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field protected final a:I

.field protected b:Lb/a/a/f;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/a/a/f;-><init>(ILb/a/a/f;)V

    return-void
.end method

.method public constructor <init>(ILb/a/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/a/f;->a:I

    iput-object p2, p0, Lb/a/a/f;->b:Lb/a/a/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lb/a/a/a;
    .locals 1

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    invoke-virtual {v0, p1, p2}, Lb/a/a/f;->a(Ljava/lang/String;Z)Lb/a/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/i;
    .locals 6

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lb/a/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;
    .locals 6

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lb/a/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    invoke-virtual {v0}, Lb/a/a/f;->a()V

    :cond_0
    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lb/a/a/f;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lb/a/a/c;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    invoke-virtual {v0, p1}, Lb/a/a/f;->a(Lb/a/a/c;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    invoke-virtual {v0, p1, p2}, Lb/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/f;->b:Lb/a/a/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
