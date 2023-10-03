.class public abstract Lorg/donations/google/PurchaseObserver;
.super Ljava/lang/Object;
.source "PurchaseObserver.java"


# static fields
.field private static final START_INTENT_SENDER_SIG:[Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "PurchaseObserver"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mStartIntentSender:Ljava/lang/reflect/Method;

.field private mStartIntentSenderArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/donations/google/PurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "handler"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lorg/donations/google/PurchaseObserver;->mActivity:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lorg/donations/google/PurchaseObserver;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-direct {p0}, Lorg/donations/google/PurchaseObserver;->initCompatibilityLayer()V

    .line 55
    return-void
.end method

.method private initCompatibilityLayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    :try_start_0
    iget-object v1, p0, Lorg/donations/google/PurchaseObserver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startIntentSender"

    sget-object v3, Lorg/donations/google/PurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/SecurityException;
    iput-object v4, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/NoSuchMethodException;
    iput-object v4, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public abstract onBillingSupported(Z)V
.end method

.method public abstract onPurchaseStateChange(Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract onRequestPurchaseResponse(Lorg/donations/google/BillingService$RequestPurchase;Lorg/donations/google/Consts$ResponseCode;)V
.end method

.method public abstract onRestoreTransactionsResponse(Lorg/donations/google/BillingService$RestoreTransactions;Lorg/donations/google/Consts$ResponseCode;)V
.end method

.method postPurchaseStateChange(Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .parameter "purchaseState"
    .parameter "itemId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 166
    iget-object v8, p0, Lorg/donations/google/PurchaseObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lorg/donations/google/PurchaseObserver$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/donations/google/PurchaseObserver$1;-><init>(Lorg/donations/google/PurchaseObserver;Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 4
    .parameter "pendingIntent"
    .parameter "intent"

    .prologue
    .line 125
    iget-object v1, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    aput-object v3, v1, v2

    .line 133
    iget-object v1, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 134
    iget-object v1, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 135
    iget-object v1, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 136
    iget-object v1, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 137
    iget-object v1, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/donations/google/PurchaseObserver;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/donations/google/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PurchaseObserver"

    const-string v2, "error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 146
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/donations/google/PurchaseObserver;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "PurchaseObserver"

    const-string v2, "error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
