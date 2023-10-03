.class public final enum Lorg/donations/google/Consts$ResponseCode;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/donations/google/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/donations/google/Consts$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/donations/google/Consts$ResponseCode;

.field public static final enum RESULT_BILLING_UNAVAILABLE:Lorg/donations/google/Consts$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lorg/donations/google/Consts$ResponseCode;

.field public static final enum RESULT_ERROR:Lorg/donations/google/Consts$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lorg/donations/google/Consts$ResponseCode;

.field public static final enum RESULT_OK:Lorg/donations/google/Consts$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lorg/donations/google/Consts$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lorg/donations/google/Consts$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lorg/donations/google/Consts$ResponseCode;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lorg/donations/google/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/donations/google/Consts$ResponseCode;->RESULT_OK:Lorg/donations/google/Consts$ResponseCode;

    new-instance v0, Lorg/donations/google/Consts$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lorg/donations/google/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/donations/google/Consts$ResponseCode;->RESULT_USER_CANCELED:Lorg/donations/google/Consts$ResponseCode;

    new-instance v0, Lorg/donations/google/Consts$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lorg/donations/google/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/donations/google/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lorg/donations/google/Consts$ResponseCode;

    new-instance v0, Lorg/donations/google/Consts$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lorg/donations/google/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/donations/google/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lorg/donations/google/Consts$ResponseCode;

    new-instance v0, Lorg/donations/google/Consts$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lorg/donations/google/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/donations/google/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lorg/donations/google/Consts$ResponseCode;

    new-instance v0, Lorg/donations/google/Consts$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/donations/google/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/donations/google/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lorg/donations/google/Consts$ResponseCode;

    new-instance v0, Lorg/donations/google/Consts$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/donations/google/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/donations/google/Consts$ResponseCode;->RESULT_ERROR:Lorg/donations/google/Consts$ResponseCode;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/donations/google/Consts$ResponseCode;

    sget-object v1, Lorg/donations/google/Consts$ResponseCode;->RESULT_OK:Lorg/donations/google/Consts$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/donations/google/Consts$ResponseCode;->RESULT_USER_CANCELED:Lorg/donations/google/Consts$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/donations/google/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lorg/donations/google/Consts$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/donations/google/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lorg/donations/google/Consts$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/donations/google/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lorg/donations/google/Consts$ResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/donations/google/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lorg/donations/google/Consts$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/donations/google/Consts$ResponseCode;->RESULT_ERROR:Lorg/donations/google/Consts$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/donations/google/Consts$ResponseCode;->$VALUES:[Lorg/donations/google/Consts$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lorg/donations/google/Consts$ResponseCode;
    .locals 2
    .parameter "index"

    .prologue
    .line 32
    invoke-static {}, Lorg/donations/google/Consts$ResponseCode;->values()[Lorg/donations/google/Consts$ResponseCode;

    move-result-object v0

    .line 33
    .local v0, values:[Lorg/donations/google/Consts$ResponseCode;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 34
    :cond_0
    sget-object v1, Lorg/donations/google/Consts$ResponseCode;->RESULT_ERROR:Lorg/donations/google/Consts$ResponseCode;

    .line 36
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/donations/google/Consts$ResponseCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 27
    const-class v0, Lorg/donations/google/Consts$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/donations/google/Consts$ResponseCode;

    return-object v0
.end method

.method public static values()[Lorg/donations/google/Consts$ResponseCode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/donations/google/Consts$ResponseCode;->$VALUES:[Lorg/donations/google/Consts$ResponseCode;

    invoke-virtual {v0}, [Lorg/donations/google/Consts$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/donations/google/Consts$ResponseCode;

    return-object v0
.end method
