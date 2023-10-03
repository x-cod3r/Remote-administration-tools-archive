.class public Lorg/donations/google/BillingService$RestoreTransactions;
.super Lorg/donations/google/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/donations/google/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lorg/donations/google/BillingService;


# direct methods
.method public constructor <init>(Lorg/donations/google/BillingService;)V
    .locals 1
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lorg/donations/google/BillingService$RestoreTransactions;->this$0:Lorg/donations/google/BillingService;

    .line 350
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/donations/google/BillingService$BillingRequest;-><init>(Lorg/donations/google/BillingService;I)V

    .line 351
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lorg/donations/google/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 372
    invoke-super {p0, p1}, Lorg/donations/google/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 373
    iget-wide v0, p0, Lorg/donations/google/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lorg/donations/google/Security;->removeNonce(J)V

    .line 374
    return-void
.end method

.method protected responseCodeReceived(Lorg/donations/google/Consts$ResponseCode;)V
    .locals 1
    .parameter "responseCode"

    .prologue
    .line 378
    iget-object v0, p0, Lorg/donations/google/BillingService$RestoreTransactions;->this$0:Lorg/donations/google/BillingService;

    invoke-static {v0, p0, p1}, Lorg/donations/google/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lorg/donations/google/BillingService$RestoreTransactions;Lorg/donations/google/Consts$ResponseCode;)V

    .line 379
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
    .line 355
    invoke-static {}, Lorg/donations/google/Security;->generateNonce()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/donations/google/BillingService$RestoreTransactions;->mNonce:J

    .line 357
    const-string v3, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v3}, Lorg/donations/google/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 358
    .local v1, request:Landroid/os/Bundle;
    const-string v3, "NONCE"

    iget-wide v4, p0, Lorg/donations/google/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 360
    :try_start_0
    invoke-static {}, Lorg/donations/google/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 361
    .local v2, response:Landroid/os/Bundle;
    const-string v3, "restoreTransactions"

    invoke-virtual {p0, v3, v2}, Lorg/donations/google/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 362
    const-string v3, "REQUEST_ID"

    sget-wide v4, Lorg/donations/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 366
    .end local v2           #response:Landroid/os/Bundle;
    :goto_0
    return-wide v3

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v3, p0, Lorg/donations/google/BillingService$RestoreTransactions;->this$0:Lorg/donations/google/BillingService;

    #calls: Lorg/donations/google/BillingService;->initialiseMarket()V
    invoke-static {v3}, Lorg/donations/google/BillingService;->access$400(Lorg/donations/google/BillingService;)V

    .line 366
    sget-wide v3, Lorg/donations/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    goto :goto_0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lorg/donations/google/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lorg/donations/google/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
