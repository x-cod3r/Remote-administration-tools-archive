.class Lorg/donations/google/BillingService$GetPurchaseInformation;
.super Lorg/donations/google/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/donations/google/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field mNonce:J

.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lorg/donations/google/BillingService;


# direct methods
.method public constructor <init>(Lorg/donations/google/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 310
    iput-object p1, p0, Lorg/donations/google/BillingService$GetPurchaseInformation;->this$0:Lorg/donations/google/BillingService;

    .line 311
    invoke-direct {p0, p1, p2}, Lorg/donations/google/BillingService$BillingRequest;-><init>(Lorg/donations/google/BillingService;I)V

    .line 312
    iput-object p3, p0, Lorg/donations/google/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    .line 313
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 335
    invoke-super {p0, p1}, Lorg/donations/google/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 336
    iget-wide v0, p0, Lorg/donations/google/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-static {v0, v1}, Lorg/donations/google/Security;->removeNonce(J)V

    .line 337
    return-void
.end method

.method protected run()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {}, Lorg/donations/google/Security;->generateNonce()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/donations/google/BillingService$GetPurchaseInformation;->mNonce:J

    .line 319
    const-string v3, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v3}, Lorg/donations/google/BillingService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 320
    .local v1, request:Landroid/os/Bundle;
    const-string v3, "NONCE"

    iget-wide v4, p0, Lorg/donations/google/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 321
    const-string v3, "NOTIFY_IDS"

    iget-object v4, p0, Lorg/donations/google/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 323
    :try_start_0
    invoke-static {}, Lorg/donations/google/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 324
    .local v2, response:Landroid/os/Bundle;
    const-string v3, "getPurchaseInformation"

    invoke-virtual {p0, v3, v2}, Lorg/donations/google/BillingService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 325
    const-string v3, "REQUEST_ID"

    sget-wide v4, Lorg/donations/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 329
    .end local v2           #response:Landroid/os/Bundle;
    :goto_0
    return-wide v3

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v3, p0, Lorg/donations/google/BillingService$GetPurchaseInformation;->this$0:Lorg/donations/google/BillingService;

    #calls: Lorg/donations/google/BillingService;->initialiseMarket()V
    invoke-static {v3}, Lorg/donations/google/BillingService;->access$400(Lorg/donations/google/BillingService;)V

    .line 329
    sget-wide v3, Lorg/donations/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    goto :goto_0
.end method
