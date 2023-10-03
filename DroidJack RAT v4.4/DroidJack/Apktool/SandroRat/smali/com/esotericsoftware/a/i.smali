.class public final enum Lcom/esotericsoftware/a/i;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/esotericsoftware/a/i;

.field public static final enum b:Lcom/esotericsoftware/a/i;

.field public static final enum c:Lcom/esotericsoftware/a/i;

.field public static final enum d:Lcom/esotericsoftware/a/i;

.field public static final enum e:Lcom/esotericsoftware/a/i;

.field public static final enum f:Lcom/esotericsoftware/a/i;

.field public static final enum g:Lcom/esotericsoftware/a/i;

.field private static final synthetic h:[Lcom/esotericsoftware/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/esotericsoftware/a/i;

    const-string v1, "object"

    invoke-direct {v0, v1, v3}, Lcom/esotericsoftware/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/a/i;->a:Lcom/esotericsoftware/a/i;

    new-instance v0, Lcom/esotericsoftware/a/i;

    const-string v1, "array"

    invoke-direct {v0, v1, v4}, Lcom/esotericsoftware/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/i;

    new-instance v0, Lcom/esotericsoftware/a/i;

    const-string v1, "stringValue"

    invoke-direct {v0, v1, v5}, Lcom/esotericsoftware/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    new-instance v0, Lcom/esotericsoftware/a/i;

    const-string v1, "doubleValue"

    invoke-direct {v0, v1, v6}, Lcom/esotericsoftware/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/a/i;->d:Lcom/esotericsoftware/a/i;

    new-instance v0, Lcom/esotericsoftware/a/i;

    const-string v1, "longValue"

    invoke-direct {v0, v1, v7}, Lcom/esotericsoftware/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/a/i;->e:Lcom/esotericsoftware/a/i;

    new-instance v0, Lcom/esotericsoftware/a/i;

    const-string v1, "booleanValue"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/a/i;->f:Lcom/esotericsoftware/a/i;

    new-instance v0, Lcom/esotericsoftware/a/i;

    const-string v1, "nullValue"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/a/i;->g:Lcom/esotericsoftware/a/i;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/esotericsoftware/a/i;

    sget-object v1, Lcom/esotericsoftware/a/i;->a:Lcom/esotericsoftware/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/esotericsoftware/a/i;->d:Lcom/esotericsoftware/a/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/esotericsoftware/a/i;->e:Lcom/esotericsoftware/a/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/esotericsoftware/a/i;->f:Lcom/esotericsoftware/a/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/esotericsoftware/a/i;->g:Lcom/esotericsoftware/a/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/esotericsoftware/a/i;->h:[Lcom/esotericsoftware/a/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/esotericsoftware/a/i;
    .locals 1

    const-class v0, Lcom/esotericsoftware/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/i;

    return-object v0
.end method

.method public static values()[Lcom/esotericsoftware/a/i;
    .locals 1

    sget-object v0, Lcom/esotericsoftware/a/i;->h:[Lcom/esotericsoftware/a/i;

    invoke-virtual {v0}, [Lcom/esotericsoftware/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/a/i;

    return-object v0
.end method
