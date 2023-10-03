.class Lorg/donations/DonationsFragment$DonatePurchaseObserver;
.super Lorg/donations/google/PurchaseObserver;
.source "DonationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/donations/DonationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DonatePurchaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/donations/DonationsFragment;


# direct methods
.method public constructor <init>(Lorg/donations/DonationsFragment;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/donations/DonationsFragment$DonatePurchaseObserver;->this$0:Lorg/donations/DonationsFragment;

    .line 78
    invoke-virtual {p1}, Lorg/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/donations/google/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 3
    .parameter "supported"

    .prologue
    .line 83
    const-string v0, "Donations Library"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez p1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/donations/DonationsFragment$DonatePurchaseObserver;->this$0:Lorg/donations/DonationsFragment;

    const/4 v1, 0x1

    #calls: Lorg/donations/DonationsFragment;->displayDialog(I)V
    invoke-static {v0, v1}, Lorg/donations/DonationsFragment;->access$000(Lorg/donations/DonationsFragment;I)V

    .line 87
    :cond_0
    return-void
.end method

.method public onPurchaseStateChange(Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .parameter "purchaseState"
    .parameter "itemId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 92
    const-string v0, "Donations Library"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPurchaseStateChange() itemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public onRequestPurchaseResponse(Lorg/donations/google/BillingService$RequestPurchase;Lorg/donations/google/Consts$ResponseCode;)V
    .locals 3
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 97
    const-string v0, "Donations Library"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/donations/google/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lorg/donations/google/Consts$ResponseCode;->RESULT_OK:Lorg/donations/google/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 99
    const-string v0, "Donations Library"

    const-string v1, "purchase was successfully sent to server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lorg/donations/DonationsFragment$DonatePurchaseObserver;->this$0:Lorg/donations/DonationsFragment;

    const/4 v1, 0x2

    #calls: Lorg/donations/DonationsFragment;->displayDialog(I)V
    invoke-static {v0, v1}, Lorg/donations/DonationsFragment;->access$000(Lorg/donations/DonationsFragment;I)V

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lorg/donations/google/Consts$ResponseCode;->RESULT_USER_CANCELED:Lorg/donations/google/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    .line 102
    const-string v0, "Donations Library"

    const-string v1, "user canceled purchase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_1
    const-string v0, "Donations Library"

    const-string v1, "purchase failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRestoreTransactionsResponse(Lorg/donations/google/BillingService$RestoreTransactions;Lorg/donations/google/Consts$ResponseCode;)V
    .locals 3
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 111
    sget-object v0, Lorg/donations/google/Consts$ResponseCode;->RESULT_OK:Lorg/donations/google/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 112
    const-string v0, "Donations Library"

    const-string v1, "completed RestoreTransactions request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "Donations Library"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreTransactions error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
