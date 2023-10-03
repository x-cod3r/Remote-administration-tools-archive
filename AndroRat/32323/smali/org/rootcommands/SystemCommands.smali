.class public Lorg/rootcommands/SystemCommands;
.super Ljava/lang/Object;
.source "SystemCommands.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/rootcommands/SystemCommands;->context:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public getGPS()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/rootcommands/SystemCommands;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reboot()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Lorg/rootcommands/SystemCommands;->context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 65
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setGPS(Z)V
    .locals 2
    .parameter "value"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lorg/rootcommands/SystemCommands;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    .local v0, localContentResolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 57
    return-void
.end method
