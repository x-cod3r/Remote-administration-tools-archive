.class public La/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:C

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, La/c;->a:C

    new-instance v0, Ljava/io/StringWriter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4

    invoke-static {p0, p1}, La/c;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, La/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    const/16 v0, 0x1000

    new-array v2, v0, [B

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0
.end method
