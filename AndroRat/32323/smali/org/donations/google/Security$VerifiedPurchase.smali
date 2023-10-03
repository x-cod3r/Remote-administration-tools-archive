.class public Lorg/donations/google/Security$VerifiedPurchase;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/donations/google/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedPurchase"
.end annotation


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lorg/donations/google/Consts$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "purchaseState"
    .parameter "notificationId"
    .parameter "productId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/donations/google/Security$VerifiedPurchase;->purchaseState:Lorg/donations/google/Consts$PurchaseState;

    .line 80
    iput-object p2, p0, Lorg/donations/google/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lorg/donations/google/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lorg/donations/google/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 83
    iput-wide p5, p0, Lorg/donations/google/Security$VerifiedPurchase;->purchaseTime:J

    .line 84
    iput-object p7, p0, Lorg/donations/google/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 85
    return-void
.end method
