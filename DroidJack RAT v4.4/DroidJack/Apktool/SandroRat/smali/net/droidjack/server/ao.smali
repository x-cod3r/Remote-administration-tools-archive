.class Lnet/droidjack/server/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lnet/droidjack/server/an;


# direct methods
.method constructor <init>(Lnet/droidjack/server/an;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/ao;->a:Lnet/droidjack/server/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method
