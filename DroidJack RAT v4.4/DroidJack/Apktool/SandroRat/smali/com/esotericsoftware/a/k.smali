.class Lcom/esotericsoftware/a/k;
.super Ljava/lang/Object;


# instance fields
.field final a:Z

.field b:Z

.field final synthetic c:Lcom/esotericsoftware/a/j;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/a/j;Z)V
    .locals 2

    iput-object p1, p0, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/esotericsoftware/a/k;->a:Z

    iget-object v1, p1, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    if-eqz p2, :cond_0

    const/16 v0, 0x5b

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_0
    const/16 v0, 0x7b

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/j;

    iget-object v1, v0, Lcom/esotericsoftware/a/j;->a:Ljava/io/Writer;

    iget-boolean v0, p0, Lcom/esotericsoftware/a/k;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_0
    const/16 v0, 0x7d

    goto :goto_0
.end method
