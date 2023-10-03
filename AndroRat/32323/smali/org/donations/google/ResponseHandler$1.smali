.class final Lorg/donations/google/ResponseHandler$1;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/donations/google/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$developerPayload:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$purchaseState:Lorg/donations/google/Consts$PurchaseState;

.field final synthetic val$purchaseTime:J


# direct methods
.method constructor <init>(Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lorg/donations/google/ResponseHandler$1;->val$purchaseState:Lorg/donations/google/Consts$PurchaseState;

    iput-object p2, p0, Lorg/donations/google/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iput-object p3, p0, Lorg/donations/google/ResponseHandler$1;->val$orderId:Ljava/lang/String;

    iput-wide p4, p0, Lorg/donations/google/ResponseHandler$1;->val$purchaseTime:J

    iput-object p6, p0, Lorg/donations/google/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 140
    const-class v7, Lorg/donations/google/ResponseHandler;

    monitor-enter v7

    .line 141
    :try_start_0
    invoke-static {}, Lorg/donations/google/ResponseHandler;->access$000()Lorg/donations/google/PurchaseObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lorg/donations/google/ResponseHandler;->access$000()Lorg/donations/google/PurchaseObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/donations/google/ResponseHandler$1;->val$purchaseState:Lorg/donations/google/Consts$PurchaseState;

    iget-object v2, p0, Lorg/donations/google/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iget-object v3, p0, Lorg/donations/google/ResponseHandler$1;->val$orderId:Ljava/lang/String;

    iget-wide v4, p0, Lorg/donations/google/ResponseHandler$1;->val$purchaseTime:J

    iget-object v6, p0, Lorg/donations/google/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lorg/donations/google/PurchaseObserver;->postPurchaseStateChange(Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 145
    :cond_0
    monitor-exit v7

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
