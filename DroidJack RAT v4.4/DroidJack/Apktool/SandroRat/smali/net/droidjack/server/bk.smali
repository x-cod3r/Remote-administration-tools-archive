.class public Lnet/droidjack/server/bk;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnet/droidjack/server/bk;->a:F

    iput v0, p0, Lnet/droidjack/server/bk;->b:F

    double-to-float v0, p1

    iput v0, p0, Lnet/droidjack/server/bk;->b:F

    double-to-float v0, p3

    iput v0, p0, Lnet/droidjack/server/bk;->a:F

    return-void
.end method
