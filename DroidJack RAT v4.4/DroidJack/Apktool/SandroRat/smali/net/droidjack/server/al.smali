.class public final enum Lnet/droidjack/server/al;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lnet/droidjack/server/al;

.field private static final synthetic c:[Lnet/droidjack/server/al;


# instance fields
.field b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lnet/droidjack/server/al;

    const-string v1, "check_su_binary"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/system/xbin/which"

    aput-object v3, v2, v4

    const-string v3, "su"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Lnet/droidjack/server/al;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lnet/droidjack/server/al;->a:Lnet/droidjack/server/al;

    new-array v0, v5, [Lnet/droidjack/server/al;

    sget-object v1, Lnet/droidjack/server/al;->a:Lnet/droidjack/server/al;

    aput-object v1, v0, v4

    sput-object v0, Lnet/droidjack/server/al;->c:[Lnet/droidjack/server/al;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/droidjack/server/al;->b:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/droidjack/server/al;
    .locals 1

    const-class v0, Lnet/droidjack/server/al;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/droidjack/server/al;

    return-object v0
.end method

.method public static values()[Lnet/droidjack/server/al;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lnet/droidjack/server/al;->c:[Lnet/droidjack/server/al;

    array-length v1, v0

    new-array v2, v1, [Lnet/droidjack/server/al;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
