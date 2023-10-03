.class public Lorg/adaway/service/BootService;
.super Landroid/app/IntentService;
.source "BootService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "AdAwayBootService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 39
    const-string v0, "AdAway"

    const-string v1, "BootService: onHandleIntent"

    invoke-static {v0, v1}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lorg/adaway/service/BootService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/adaway/util/WebserverUtils;->startWebserverOnBoot(Landroid/content/Context;)V

    .line 41
    return-void
.end method
