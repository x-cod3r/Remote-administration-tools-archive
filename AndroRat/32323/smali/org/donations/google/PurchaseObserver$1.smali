.class Lorg/donations/google/PurchaseObserver$1;
.super Ljava/lang/Object;
.source "PurchaseObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/donations/google/PurchaseObserver;->postPurchaseStateChange(Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/donations/google/PurchaseObserver;

.field final synthetic val$developerPayload:Ljava/lang/String;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$purchaseState:Lorg/donations/google/Consts$PurchaseState;

.field final synthetic val$purchaseTime:J


# direct methods
.method constructor <init>(Lorg/donations/google/PurchaseObserver;Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lorg/donations/google/PurchaseObserver$1;->this$0:Lorg/donations/google/PurchaseObserver;

    iput-object p2, p0, Lorg/donations/google/PurchaseObserver$1;->val$purchaseState:Lorg/donations/google/Consts$PurchaseState;

    iput-object p3, p0, Lorg/donations/google/PurchaseObserver$1;->val$itemId:Ljava/lang/String;

    iput-object p4, p0, Lorg/donations/google/PurchaseObserver$1;->val$orderId:Ljava/lang/String;

    iput-wide p5, p0, Lorg/donations/google/PurchaseObserver$1;->val$purchaseTime:J

    iput-object p7, p0, Lorg/donations/google/PurchaseObserver$1;->val$developerPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 168
    iget-object v0, p0, Lorg/donations/google/PurchaseObserver$1;->this$0:Lorg/donations/google/PurchaseObserver;

    iget-object v1, p0, Lorg/donations/google/PurchaseObserver$1;->val$purchaseState:Lorg/donations/google/Consts$PurchaseState;

    iget-object v2, p0, Lorg/donations/google/PurchaseObserver$1;->val$itemId:Ljava/lang/String;

    iget-object v3, p0, Lorg/donations/google/PurchaseObserver$1;->val$orderId:Ljava/lang/String;

    iget-wide v4, p0, Lorg/donations/google/PurchaseObserver$1;->val$purchaseTime:J

    iget-object v6, p0, Lorg/donations/google/PurchaseObserver$1;->val$developerPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lorg/donations/google/PurchaseObserver;->onPurchaseStateChange(Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 170
    return-void
.end method
