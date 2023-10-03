.class Lnet/droidjack/server/ay;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Long;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/droidjack/server/ay;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/droidjack/server/ay;->a:Ljava/lang/String;

    return-object v0
.end method
