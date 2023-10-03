.class public abstract Lb/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:I

.field protected b:Lb/a/a/a;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/a/a/a;-><init>(ILb/a/a/a;)V

    return-void
.end method

.method public constructor <init>(ILb/a/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/a/a;->a:I

    iput-object p2, p0, Lb/a/a/a;->b:Lb/a/a/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lb/a/a/a;
    .locals 1

    iget-object v0, p0, Lb/a/a/a;->b:Lb/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a;->b:Lb/a/a/a;

    invoke-virtual {v0, p1}, Lb/a/a/a;->a(Ljava/lang/String;)Lb/a/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lb/a/a/a;
    .locals 1

    iget-object v0, p0, Lb/a/a/a;->b:Lb/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a;->b:Lb/a/a/a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/a/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lb/a/a/a;->b:Lb/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a;->b:Lb/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a;->b:Lb/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a;->b:Lb/a/a/a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a;->b:Lb/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a;->b:Lb/a/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
