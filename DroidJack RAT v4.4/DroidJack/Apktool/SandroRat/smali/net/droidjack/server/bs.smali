.class public Lnet/droidjack/server/bs;
.super Ljava/lang/Object;


# direct methods
.method protected static a()Z
    .locals 1

    invoke-static {}, Lnet/droidjack/server/bs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/droidjack/server/bs;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/droidjack/server/bs;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Z
    .locals 2

    new-instance v0, Lnet/droidjack/server/ak;

    invoke-direct {v0}, Lnet/droidjack/server/ak;-><init>()V

    sget-object v1, Lnet/droidjack/server/al;->a:Lnet/droidjack/server/al;

    invoke-virtual {v0, v1}, Lnet/droidjack/server/ak;->a(Lnet/droidjack/server/al;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
