.class Lorg/donations/google/BillingService$CheckBillingSupported;
.super Lorg/donations/google/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/donations/google/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/donations/google/BillingService;


# direct methods
.method public constructor <init>(Lorg/donations/google/BillingService;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lorg/donations/google/BillingService$CheckBillingSupported;->this$0:Lorg/donations/google/BillingService;

    .line 193
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/donations/google/BillingService$BillingRequest;-><init>(Lorg/donations/google/BillingService;I)V

    .line 194
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v5, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v5}, Lorg/donations/google/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 200
    .local v2, request:Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Lorg/donations/google/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 203
    .local v3, response:Landroid/os/Bundle;
    const-string v5, "RESPONSE_CODE"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "RESPONSE_CODE"

    const/16 v6, -0x7b

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 211
    .local v4, responseCode:I
    :goto_0
    sget-object v5, Lorg/donations/google/Consts$ResponseCode;->RESULT_OK:Lorg/donations/google/Consts$ResponseCode;

    invoke-virtual {v5}, Lorg/donations/google/Consts$ResponseCode;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 212
    .local v0, billingSupported:Z
    :goto_1
    invoke-static {v0}, Lorg/donations/google/ResponseHandler;->checkBillingSupportedResponse(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0           #billingSupported:Z
    .end local v3           #response:Landroid/os/Bundle;
    .end local v4           #responseCode:I
    :goto_2
    sget-wide v5, Lorg/donations/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v5

    .line 203
    .restart local v3       #response:Landroid/os/Bundle;
    :cond_0
    :try_start_1
    sget-object v5, Lorg/donations/google/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lorg/donations/google/Consts$ResponseCode;

    invoke-virtual {v5}, Lorg/donations/google/Consts$ResponseCode;->ordinal()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0

    .line 211
    .restart local v4       #responseCode:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 213
    .end local v3           #response:Landroid/os/Bundle;
    .end local v4           #responseCode:I
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Ljava/lang/NullPointerException;
    iget-object v5, p0, Lorg/donations/google/BillingService$CheckBillingSupported;->this$0:Lorg/donations/google/BillingService;

    #calls: Lorg/donations/google/BillingService;->initialiseMarket()V
    invoke-static {v5}, Lorg/donations/google/BillingService;->access$400(Lorg/donations/google/BillingService;)V

    goto :goto_2
.end method
