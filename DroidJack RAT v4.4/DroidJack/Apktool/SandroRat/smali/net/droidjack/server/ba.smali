.class Lnet/droidjack/server/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/droidjack/server/GPSLocation;


# direct methods
.method constructor <init>(Lnet/droidjack/server/GPSLocation;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/ba;->a:Lnet/droidjack/server/GPSLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Getting GPS"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/droidjack/server/ba;->a:Lnet/droidjack/server/GPSLocation;

    invoke-static {v0}, Lnet/droidjack/server/GPSLocation;->a(Lnet/droidjack/server/GPSLocation;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/droidjack/server/bb;

    invoke-direct {v1, p0}, Lnet/droidjack/server/bb;-><init>(Lnet/droidjack/server/ba;)V

    invoke-static {v0, v1}, Lnet/droidjack/server/bh;->a(Landroid/content/Context;Lnet/droidjack/server/bl;)V

    return-void
.end method
