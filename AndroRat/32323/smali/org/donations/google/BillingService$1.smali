.class Lorg/donations/google/BillingService$1;
.super Ljava/lang/Object;
.source "BillingService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/donations/google/BillingService;->initialiseMarket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/donations/google/BillingService;


# direct methods
.method constructor <init>(Lorg/donations/google/BillingService;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lorg/donations/google/BillingService$1;->this$0:Lorg/donations/google/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 678
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://search"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 679
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lorg/donations/google/BillingService$1;->this$0:Lorg/donations/google/BillingService;

    invoke-virtual {v1, v0}, Lorg/donations/google/BillingService;->startActivity(Landroid/content/Intent;)V

    .line 680
    return-void
.end method
