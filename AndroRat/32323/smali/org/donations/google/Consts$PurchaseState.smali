.class public final enum Lorg/donations/google/Consts$PurchaseState;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/donations/google/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/donations/google/Consts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/donations/google/Consts$PurchaseState;

.field public static final enum CANCELED:Lorg/donations/google/Consts$PurchaseState;

.field public static final enum PURCHASED:Lorg/donations/google/Consts$PurchaseState;

.field public static final enum REFUNDED:Lorg/donations/google/Consts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lorg/donations/google/Consts$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lorg/donations/google/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/donations/google/Consts$PurchaseState;->PURCHASED:Lorg/donations/google/Consts$PurchaseState;

    .line 44
    new-instance v0, Lorg/donations/google/Consts$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lorg/donations/google/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/donations/google/Consts$PurchaseState;->CANCELED:Lorg/donations/google/Consts$PurchaseState;

    .line 45
    new-instance v0, Lorg/donations/google/Consts$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lorg/donations/google/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/donations/google/Consts$PurchaseState;->REFUNDED:Lorg/donations/google/Consts$PurchaseState;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/donations/google/Consts$PurchaseState;

    sget-object v1, Lorg/donations/google/Consts$PurchaseState;->PURCHASED:Lorg/donations/google/Consts$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/donations/google/Consts$PurchaseState;->CANCELED:Lorg/donations/google/Consts$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/donations/google/Consts$PurchaseState;->REFUNDED:Lorg/donations/google/Consts$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lorg/donations/google/Consts$PurchaseState;->$VALUES:[Lorg/donations/google/Consts$PurchaseState;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lorg/donations/google/Consts$PurchaseState;
    .locals 2
    .parameter "index"

    .prologue
    .line 49
    invoke-static {}, Lorg/donations/google/Consts$PurchaseState;->values()[Lorg/donations/google/Consts$PurchaseState;

    move-result-object v0

    .line 50
    .local v0, values:[Lorg/donations/google/Consts$PurchaseState;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 51
    :cond_0
    sget-object v1, Lorg/donations/google/Consts$PurchaseState;->CANCELED:Lorg/donations/google/Consts$PurchaseState;

    .line 53
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/donations/google/Consts$PurchaseState;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lorg/donations/google/Consts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/donations/google/Consts$PurchaseState;

    return-object v0
.end method

.method public static values()[Lorg/donations/google/Consts$PurchaseState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/donations/google/Consts$PurchaseState;->$VALUES:[Lorg/donations/google/Consts$PurchaseState;

    invoke-virtual {v0}, [Lorg/donations/google/Consts$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/donations/google/Consts$PurchaseState;

    return-object v0
.end method
