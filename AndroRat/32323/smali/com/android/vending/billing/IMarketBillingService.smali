.class public interface abstract Lcom/android/vending/billing/IMarketBillingService;
.super Ljava/lang/Object;
.source "IMarketBillingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/IMarketBillingService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
