.class Lb/a/a/m;
.super Ljava/lang/Object;


# instance fields
.field a:Lb/a/a/o;

.field b:Lb/a/a/o;

.field c:Lb/a/a/o;

.field d:Ljava/lang/String;

.field e:I

.field f:Lb/a/a/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lb/a/a/m;Lb/a/a/o;Lb/a/a/o;)Lb/a/a/m;
    .locals 4

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lb/a/a/m;->f:Lb/a/a/m;

    invoke-static {v0, p1, p2}, Lb/a/a/m;->a(Lb/a/a/m;Lb/a/a/o;Lb/a/a/o;)Lb/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/m;->f:Lb/a/a/m;

    iget-object v0, p0, Lb/a/a/m;->a:Lb/a/a/o;

    iget v1, v0, Lb/a/a/o;->c:I

    iget-object v0, p0, Lb/a/a/m;->b:Lb/a/a/o;

    iget v2, v0, Lb/a/a/o;->c:I

    iget v3, p1, Lb/a/a/o;->c:I

    if-nez p2, :cond_2

    const v0, 0x7fffffff

    :goto_1
    if-ge v3, v2, :cond_0

    if-le v0, v1, :cond_0

    if-gt v3, v1, :cond_4

    if-lt v0, v2, :cond_3

    iget-object p0, p0, Lb/a/a/m;->f:Lb/a/a/m;

    goto :goto_0

    :cond_2
    iget v0, p2, Lb/a/a/o;->c:I

    goto :goto_1

    :cond_3
    iput-object p2, p0, Lb/a/a/m;->a:Lb/a/a/o;

    goto :goto_0

    :cond_4
    if-lt v0, v2, :cond_5

    iput-object p1, p0, Lb/a/a/m;->b:Lb/a/a/o;

    goto :goto_0

    :cond_5
    new-instance v0, Lb/a/a/m;

    invoke-direct {v0}, Lb/a/a/m;-><init>()V

    iput-object p2, v0, Lb/a/a/m;->a:Lb/a/a/o;

    iget-object v1, p0, Lb/a/a/m;->b:Lb/a/a/o;

    iput-object v1, v0, Lb/a/a/m;->b:Lb/a/a/o;

    iget-object v1, p0, Lb/a/a/m;->c:Lb/a/a/o;

    iput-object v1, v0, Lb/a/a/m;->c:Lb/a/a/o;

    iget-object v1, p0, Lb/a/a/m;->d:Ljava/lang/String;

    iput-object v1, v0, Lb/a/a/m;->d:Ljava/lang/String;

    iget v1, p0, Lb/a/a/m;->e:I

    iput v1, v0, Lb/a/a/m;->e:I

    iget-object v1, p0, Lb/a/a/m;->f:Lb/a/a/m;

    iput-object v1, v0, Lb/a/a/m;->f:Lb/a/a/m;

    iput-object p1, p0, Lb/a/a/m;->b:Lb/a/a/o;

    iput-object v0, p0, Lb/a/a/m;->f:Lb/a/a/m;

    goto :goto_0
.end method
