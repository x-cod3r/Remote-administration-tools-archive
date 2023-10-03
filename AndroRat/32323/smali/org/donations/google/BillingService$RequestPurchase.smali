.class public Lorg/donations/google/BillingService$RequestPurchase;
.super Lorg/donations/google/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/donations/google/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field final synthetic this$0:Lorg/donations/google/BillingService;


# direct methods
.method public constructor <init>(Lorg/donations/google/BillingService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "itemId"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/donations/google/BillingService$RequestPurchase;-><init>(Lorg/donations/google/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Lorg/donations/google/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "itemId"
    .parameter "developerPayload"

    .prologue
    .line 232
    iput-object p1, p0, Lorg/donations/google/BillingService$RequestPurchase;->this$0:Lorg/donations/google/BillingService;

    .line 236
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/donations/google/BillingService$BillingRequest;-><init>(Lorg/donations/google/BillingService;I)V

    .line 237
    iput-object p2, p0, Lorg/donations/google/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Lorg/donations/google/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 239
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lorg/donations/google/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected responseCodeReceived(Lorg/donations/google/Consts$ResponseCode;)V
    .locals 1
    .parameter "responseCode"

    .prologue
    .line 271
    iget-object v0, p0, Lorg/donations/google/BillingService$RequestPurchase;->this$0:Lorg/donations/google/BillingService;

    invoke-static {v0, p0, p1}, Lorg/donations/google/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lorg/donations/google/BillingService$RequestPurchase;Lorg/donations/google/Consts$ResponseCode;)V

    .line 272
    return-void
.end method

.method protected run()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    const-string v5, "REQUEST_PURCHASE"

    invoke-virtual {p0, v5}, Lorg/donations/google/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 244
    .local v3, request:Landroid/os/Bundle;
    const-string v5, "ITEM_ID"

    iget-object v6, p0, Lorg/donations/google/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v5, p0, Lorg/donations/google/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 247
    const-string v5, "DEVELOPER_PAYLOAD"

    iget-object v6, p0, Lorg/donations/google/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/donations/google/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 251
    .local v4, response:Landroid/os/Bundle;
    const-string v5, "PURCHASE_INTENT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 253
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    if-nez v2, :cond_1

    .line 254
    const-string v5, "BillingService"

    const-string v6, "Error with requestPurchase"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-wide v5, Lorg/donations/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 265
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    .end local v4           #response:Landroid/os/Bundle;
    :goto_0
    return-wide v5

    .line 258
    .restart local v2       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v4       #response:Landroid/os/Bundle;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v2, v1}, Lorg/donations/google/ResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 261
    const-string v5, "REQUEST_ID"

    sget-wide v6, Lorg/donations/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    goto :goto_0

    .line 263
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    .end local v4           #response:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v5, p0, Lorg/donations/google/BillingService$RequestPurchase;->this$0:Lorg/donations/google/BillingService;

    #calls: Lorg/donations/google/BillingService;->initialiseMarket()V
    invoke-static {v5}, Lorg/donations/google/BillingService;->access$400(Lorg/donations/google/BillingService;)V

    .line 265
    sget-wide v5, Lorg/donations/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    goto :goto_0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lorg/donations/google/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lorg/donations/google/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
