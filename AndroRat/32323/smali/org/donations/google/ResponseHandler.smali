.class public Lorg/donations/google/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"

.field private static sPurchaseObserver:Lorg/donations/google/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/donations/google/PurchaseObserver;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;

    return-object v0
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"

    .prologue
    .line 94
    sget-object v0, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v0, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lorg/donations/google/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .parameter "supported"

    .prologue
    .line 76
    sget-object v0, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;

    invoke-virtual {v0, p0}, Lorg/donations/google/PurchaseObserver;->onBillingSupported(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "purchaseState"
    .parameter "productId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 131
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lorg/donations/google/ResponseHandler$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/donations/google/ResponseHandler$1;-><init>(Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method public static declared-synchronized register(Lorg/donations/google/PurchaseObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 55
    const-class v0, Lorg/donations/google/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lorg/donations/google/BillingService$RequestPurchase;Lorg/donations/google/Consts$ResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 166
    sget-object v0, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lorg/donations/google/PurchaseObserver;->onRequestPurchaseResponse(Lorg/donations/google/BillingService$RequestPurchase;Lorg/donations/google/Consts$ResponseCode;)V

    .line 169
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lorg/donations/google/BillingService$RestoreTransactions;Lorg/donations/google/Consts$ResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 184
    sget-object v0, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lorg/donations/google/PurchaseObserver;->onRestoreTransactionsResponse(Lorg/donations/google/BillingService$RestoreTransactions;Lorg/donations/google/Consts$ResponseCode;)V

    .line 187
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lorg/donations/google/PurchaseObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 65
    const-class v0, Lorg/donations/google/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lorg/donations/google/ResponseHandler;->sPurchaseObserver:Lorg/donations/google/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v0

    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
