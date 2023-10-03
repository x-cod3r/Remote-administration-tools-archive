.class public Lorg/donations/google/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/donations/google/BillingService$RestoreTransactions;,
        Lorg/donations/google/BillingService$GetPurchaseInformation;,
        Lorg/donations/google/BillingService$ConfirmNotifications;,
        Lorg/donations/google/BillingService$RequestPurchase;,
        Lorg/donations/google/BillingService$CheckBillingSupported;,
        Lorg/donations/google/BillingService$BillingRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/donations/google/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/donations/google/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/donations/google/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/donations/google/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 384
    return-void
.end method

.method static synthetic access$000(Lorg/donations/google/BillingService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/donations/google/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/donations/google/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/donations/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    sput-object p0, Lorg/donations/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/donations/google/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/donations/google/BillingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/donations/google/BillingService;->initialiseMarket()V

    return-void
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 464
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p0, v4}, Lorg/donations/google/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 468
    .local v0, bindResult:Z
    if-eqz v0, :cond_0

    .line 476
    .end local v0           #bindResult:Z
    :goto_0
    return v2

    .line 471
    .restart local v0       #bindResult:Z
    :cond_0
    const-string v2, "BillingService"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v0           #bindResult:Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkResponseCode(JLorg/donations/google/Consts$ResponseCode;)V
    .locals 3
    .parameter "requestId"
    .parameter "responseCode"

    .prologue
    .line 595
    sget-object v1, Lorg/donations/google/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/donations/google/BillingService$BillingRequest;

    .line 596
    .local v0, request:Lorg/donations/google/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0, p3}, Lorg/donations/google/BillingService$BillingRequest;->responseCodeReceived(Lorg/donations/google/Consts$ResponseCode;)V

    .line 602
    :cond_0
    sget-object v1, Lorg/donations/google/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 528
    new-instance v0, Lorg/donations/google/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lorg/donations/google/BillingService$ConfirmNotifications;-><init>(Lorg/donations/google/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/donations/google/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 545
    new-instance v0, Lorg/donations/google/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lorg/donations/google/BillingService$GetPurchaseInformation;-><init>(Lorg/donations/google/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/donations/google/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private initialiseMarket()V
    .locals 3

    .prologue
    .line 674
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Android Market"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Open Market!"

    new-instance v2, Lorg/donations/google/BillingService$1;

    invoke-direct {v2, p0}, Lorg/donations/google/BillingService$1;-><init>(Lorg/donations/google/BillingService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Android Market not initialised. Please accept EULA and restart."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 683
    return-void
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "startId"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    .line 562
    invoke-static {p0, p2, p3}, Lorg/donations/google/Security;->verifyPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 563
    .local v10, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/donations/google/Security$VerifiedPurchase;>;"
    if-nez v10, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v9, notifyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/donations/google/Security$VerifiedPurchase;

    .line 569
    .local v11, vp:Lorg/donations/google/Security$VerifiedPurchase;
    iget-object v0, v11, Lorg/donations/google/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, v11, Lorg/donations/google/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_2
    iget-object v1, v11, Lorg/donations/google/Security$VerifiedPurchase;->purchaseState:Lorg/donations/google/Consts$PurchaseState;

    iget-object v2, v11, Lorg/donations/google/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    iget-object v3, v11, Lorg/donations/google/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v11, Lorg/donations/google/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v6, v11, Lorg/donations/google/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lorg/donations/google/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 575
    .end local v11           #vp:Lorg/donations/google/Security$VerifiedPurchase;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 577
    .local v8, notifyIds:[Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lorg/donations/google/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 610
    const/4 v0, -0x1

    .line 612
    .local v0, maxStartId:I
    :cond_0
    :goto_0
    sget-object v2, Lorg/donations/google/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/donations/google/BillingService$BillingRequest;

    .local v1, request:Lorg/donations/google/BillingService$BillingRequest;
    if-eqz v1, :cond_3

    .line 613
    invoke-virtual {v1}, Lorg/donations/google/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    sget-object v2, Lorg/donations/google/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 619
    invoke-virtual {v1}, Lorg/donations/google/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 620
    invoke-virtual {v1}, Lorg/donations/google/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 625
    :cond_1
    invoke-direct {p0}, Lorg/donations/google/BillingService;->bindToMarketBillingService()Z

    .line 639
    :cond_2
    :goto_1
    return-void

    .line 633
    :cond_3
    if-ltz v0, :cond_2

    .line 637
    invoke-virtual {p0, v0}, Lorg/donations/google/BillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 485
    new-instance v0, Lorg/donations/google/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lorg/donations/google/BillingService$CheckBillingSupported;-><init>(Lorg/donations/google/BillingService;)V

    invoke-virtual {v0}, Lorg/donations/google/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, action:Ljava/lang/String;
    const-string v9, "com.example.dungeons.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 435
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, notifyIds:[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lorg/donations/google/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    .line 452
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #notifyIds:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 437
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v9, "com.example.dungeons.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 438
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, notifyId:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lorg/donations/google/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 440
    .end local v1           #notifyId:Ljava/lang/String;
    :cond_2
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 441
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 442
    .local v8, signedData:Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, signature:Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lorg/donations/google/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    .end local v7           #signature:Ljava/lang/String;
    .end local v8           #signedData:Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 445
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 446
    .local v3, requestId:J
    const-string v9, "response_code"

    sget-object v10, Lorg/donations/google/Consts$ResponseCode;->RESULT_ERROR:Lorg/donations/google/Consts$ResponseCode;

    invoke-virtual {v10}, Lorg/donations/google/Consts$ResponseCode;->ordinal()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 448
    .local v6, responseCodeIndex:I
    invoke-static {v6}, Lorg/donations/google/Consts$ResponseCode;->valueOf(I)Lorg/donations/google/Consts$ResponseCode;

    move-result-object v5

    .line 449
    .local v5, responseCode:Lorg/donations/google/Consts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lorg/donations/google/BillingService;->checkResponseCode(JLorg/donations/google/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 649
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lorg/donations/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 650
    invoke-direct {p0}, Lorg/donations/google/BillingService;->runPendingRequests()V

    .line 651
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 657
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x0

    sput-object v0, Lorg/donations/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 659
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 400
    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p0, p1, p2}, Lorg/donations/google/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 403
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    invoke-virtual {p0, p3}, Lorg/donations/google/BillingService;->stopSelfResult(I)Z

    .line 415
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 413
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/donations/google/BillingService;->handleCommand(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "productId"
    .parameter "developerPayload"

    .prologue
    .line 501
    new-instance v0, Lorg/donations/google/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lorg/donations/google/BillingService$RequestPurchase;-><init>(Lorg/donations/google/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/donations/google/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 512
    new-instance v0, Lorg/donations/google/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lorg/donations/google/BillingService$RestoreTransactions;-><init>(Lorg/donations/google/BillingService;)V

    invoke-virtual {v0}, Lorg/donations/google/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lorg/donations/google/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 388
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 667
    :try_start_0
    invoke-virtual {p0, p0}, Lorg/donations/google/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v0

    goto :goto_0
.end method
