.class Lcom/esotericsoftware/a/o;
.super Ljava/lang/Object;


# instance fields
.field public b:Z

.field final c:Lcom/esotericsoftware/a/l;

.field d:I

.field e:I


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/a/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/a/o;->c:Lcom/esotericsoftware/a/l;

    invoke-virtual {p0}, Lcom/esotericsoftware/a/o;->b()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/a/o;->e:I

    iput v0, p0, Lcom/esotericsoftware/a/o;->d:I

    invoke-virtual {p0}, Lcom/esotericsoftware/a/o;->c()V

    return-void
.end method

.method c()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/a/o;->b:Z

    iget-object v0, p0, Lcom/esotericsoftware/a/o;->c:Lcom/esotericsoftware/a/l;

    iget-object v0, v0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/a/o;->c:Lcom/esotericsoftware/a/l;

    iget v1, v1, Lcom/esotericsoftware/a/l;->d:I

    iget-object v2, p0, Lcom/esotericsoftware/a/o;->c:Lcom/esotericsoftware/a/l;

    iget v2, v2, Lcom/esotericsoftware/a/l;->e:I

    add-int/2addr v1, v2

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/a/o;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/esotericsoftware/a/o;->d:I

    if-ge v2, v1, :cond_1

    iget v2, p0, Lcom/esotericsoftware/a/o;->d:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/a/o;->b:Z

    :cond_1
    return-void
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/esotericsoftware/a/o;->e:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/o;->e:I

    iget-object v1, p0, Lcom/esotericsoftware/a/o;->c:Lcom/esotericsoftware/a/l;

    iget v1, v1, Lcom/esotericsoftware/a/l;->d:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/o;->c:Lcom/esotericsoftware/a/l;

    iget v1, p0, Lcom/esotericsoftware/a/o;->e:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/l;->a(I)V

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/a/o;->e:I

    iget-object v0, p0, Lcom/esotericsoftware/a/o;->c:Lcom/esotericsoftware/a/l;

    iget v1, v0, Lcom/esotericsoftware/a/l;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/esotericsoftware/a/l;->a:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/o;->c:Lcom/esotericsoftware/a/l;

    iget-object v0, v0, Lcom/esotericsoftware/a/l;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/a/o;->e:I

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/a/o;->c:Lcom/esotericsoftware/a/l;

    iget-object v0, v0, Lcom/esotericsoftware/a/l;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/a/o;->e:I

    aput-object v2, v0, v1

    goto :goto_0
.end method
