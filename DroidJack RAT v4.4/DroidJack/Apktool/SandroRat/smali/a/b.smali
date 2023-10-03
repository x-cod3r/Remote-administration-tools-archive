.class public La/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/b;->a:Ljava/lang/String;

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, La/b;->b:C

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {p0}, La/b;->a(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, La/b;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
