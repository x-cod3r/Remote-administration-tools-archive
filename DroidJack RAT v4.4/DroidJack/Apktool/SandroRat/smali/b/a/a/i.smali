.class public abstract Lb/a/a/i;
.super Ljava/lang/Object;


# instance fields
.field protected final a:I

.field protected b:Lb/a/a/i;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/a/a/i;-><init>(ILb/a/a/i;)V

    return-void
.end method

.method public constructor <init>(ILb/a/a/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/a/i;->a:I

    iput-object p2, p0, Lb/a/a/i;->b:Lb/a/a/i;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lb/a/a/a;
    .locals 1

    iget-object v0, p0, Lb/a/a/i;->b:Lb/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/i;->b:Lb/a/a/i;

    invoke-virtual {v0, p1, p2}, Lb/a/a/i;->a(Ljava/lang/String;Z)Lb/a/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lb/a/a/i;->b:Lb/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/i;->b:Lb/a/a/i;

    invoke-virtual {v0}, Lb/a/a/i;->a()V

    :cond_0
    return-void
.end method

.method public a(Lb/a/a/c;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/i;->b:Lb/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/i;->b:Lb/a/a/i;

    invoke-virtual {v0, p1}, Lb/a/a/i;->a(Lb/a/a/c;)V

    :cond_0
    return-void
.end method
