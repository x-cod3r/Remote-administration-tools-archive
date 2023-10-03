.class public LPacket/AdvancedInformationPacket;
.super Ljava/lang/Object;
.source "AdvancedInformationPacket.java"

# interfaces
.implements LPacket/Packet;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x9d8d10157142aeL


# instance fields
.field IMEI:Ljava/lang/String;

.field androidSdk:I

.field androidVersion:Ljava/lang/String;

.field batteryHealth:I

.field batteryLevel:I

.field batteryPlugged:I

.field batteryPresent:Z

.field batteryScale:I

.field batteryStatus:I

.field batteryTechnology:Ljava/lang/String;

.field batteryTemperature:I

.field batteryVoltage:I

.field countryCode:Ljava/lang/String;

.field mobileNetworkAvailable:Z

.field mobileNetworkConnectedOrConnecting:Z

.field mobileNetworkExtraInfos:Ljava/lang/String;

.field mobileNetworkName:Ljava/lang/String;

.field mobileNetworkReason:Ljava/lang/String;

.field operatorCode:Ljava/lang/String;

.field operatorName:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field sensors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field simCountryCode:Ljava/lang/String;

.field simOperatorCode:Ljava/lang/String;

.field simOperatorName:Ljava/lang/String;

.field simSerial:Ljava/lang/String;

.field softwareVersion:Ljava/lang/String;

.field wifiAvailable:Z

.field wifiConnectedOrConnecting:Z

.field wifiExtraInfos:Ljava/lang/String;

.field wifiReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()[B
    .locals 4

    .prologue
    .line 72
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 74
    .local v2, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 77
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v3

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAndroidSdk()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, LPacket/AdvancedInformationPacket;->androidSdk:I

    return v0
.end method

.method public getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryHealth()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, LPacket/AdvancedInformationPacket;->batteryHealth:I

    return v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, LPacket/AdvancedInformationPacket;->batteryLevel:I

    return v0
.end method

.method public getBatteryPlugged()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, LPacket/AdvancedInformationPacket;->batteryPlugged:I

    return v0
.end method

.method public getBatteryScale()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, LPacket/AdvancedInformationPacket;->batteryScale:I

    return v0
.end method

.method public getBatteryStatus()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, LPacket/AdvancedInformationPacket;->batteryStatus:I

    return v0
.end method

.method public getBatteryTechnology()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->batteryTechnology:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryTemperature()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, LPacket/AdvancedInformationPacket;->batteryTemperature:I

    return v0
.end method

.method public getBatteryVoltage()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, LPacket/AdvancedInformationPacket;->batteryVoltage:I

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->IMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNetworkExtraInfos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->mobileNetworkExtraInfos:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->mobileNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNetworkReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->mobileNetworkReason:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->operatorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->operatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSensors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->sensors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->simCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->simOperatorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->simOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->simSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->softwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiExtraInfos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->wifiExtraInfos:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, LPacket/AdvancedInformationPacket;->wifiReason:Ljava/lang/String;

    return-object v0
.end method

.method public isBatteryPresent()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, LPacket/AdvancedInformationPacket;->batteryPresent:Z

    return v0
.end method

.method public isMobileNetworkAvailable()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, LPacket/AdvancedInformationPacket;->mobileNetworkAvailable:Z

    return v0
.end method

.method public isMobileNetworkConnectedOrConnecting()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, LPacket/AdvancedInformationPacket;->mobileNetworkConnectedOrConnecting:Z

    return v0
.end method

.method public isWifiAvailable()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, LPacket/AdvancedInformationPacket;->wifiAvailable:Z

    return v0
.end method

.method public isWifiConnectedOrConnecting()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, LPacket/AdvancedInformationPacket;->wifiConnectedOrConnecting:Z

    return v0
.end method

.method public parse([B)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 82
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 85
    .local v1, bis:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v2, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPacket/AdvancedInformationPacket;

    .line 87
    .local v0, adv:LPacket/AdvancedInformationPacket;
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setPhoneNumber(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setIMEI(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setSoftwareVersion(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setCountryCode(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getOperatorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setOperatorCode(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setOperatorName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getSimOperatorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setSimOperatorCode(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setSimOperatorName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getSimCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setSimCountryCode(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getSimSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setSimSerial(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->isWifiAvailable()Z

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setWifiAvailable(Z)V

    .line 98
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->isWifiConnectedOrConnecting()Z

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setWifiConnectedOrConnecting(Z)V

    .line 99
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getWifiExtraInfos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setWifiExtraInfos(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getWifiReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setWifiReason(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getMobileNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->isMobileNetworkAvailable()Z

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkAvailable(Z)V

    .line 103
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->isMobileNetworkConnectedOrConnecting()Z

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkConnectedOrConnecting(Z)V

    .line 104
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getMobileNetworkExtraInfos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkExtraInfos(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getMobileNetworkReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setMobileNetworkReason(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getAndroidVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setAndroidVersion(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getAndroidSdk()I

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setAndroidSdk(I)V

    .line 108
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getSensors()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setSensors(Ljava/util/ArrayList;)V

    .line 109
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getBatteryHealth()I

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setBatteryHealth(I)V

    .line 110
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getBatteryLevel()I

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setBatteryLevel(I)V

    .line 111
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getBatteryPlugged()I

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setBatteryPlugged(I)V

    .line 112
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->isBatteryPresent()Z

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setBatteryPresent(Z)V

    .line 113
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getBatteryScale()I

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setBatteryScale(I)V

    .line 114
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getBatteryStatus()I

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setBatteryStatus(I)V

    .line 115
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getBatteryTechnology()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setBatteryTechnology(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getBatteryTemperature()I

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setBatteryTemperature(I)V

    .line 117
    invoke-virtual {v0}, LPacket/AdvancedInformationPacket;->getBatteryVoltage()I

    move-result v3

    invoke-virtual {p0, v3}, LPacket/AdvancedInformationPacket;->setBatteryVoltage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0           #adv:LPacket/AdvancedInformationPacket;
    .end local v2           #in:Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setAndroidSdk(I)V
    .locals 0
    .parameter "androidSdk"

    .prologue
    .line 288
    iput p1, p0, LPacket/AdvancedInformationPacket;->androidSdk:I

    .line 289
    return-void
.end method

.method public setAndroidVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "androidVersion"

    .prologue
    .line 280
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->androidVersion:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setBatteryHealth(I)V
    .locals 0
    .parameter "batteryHealth"

    .prologue
    .line 304
    iput p1, p0, LPacket/AdvancedInformationPacket;->batteryHealth:I

    .line 305
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .parameter "batteryLevel"

    .prologue
    .line 312
    iput p1, p0, LPacket/AdvancedInformationPacket;->batteryLevel:I

    .line 313
    return-void
.end method

.method public setBatteryPlugged(I)V
    .locals 0
    .parameter "batteryPlugged"

    .prologue
    .line 320
    iput p1, p0, LPacket/AdvancedInformationPacket;->batteryPlugged:I

    .line 321
    return-void
.end method

.method public setBatteryPresent(Z)V
    .locals 0
    .parameter "batteryPresent"

    .prologue
    .line 328
    iput-boolean p1, p0, LPacket/AdvancedInformationPacket;->batteryPresent:Z

    .line 329
    return-void
.end method

.method public setBatteryScale(I)V
    .locals 0
    .parameter "batteryScale"

    .prologue
    .line 336
    iput p1, p0, LPacket/AdvancedInformationPacket;->batteryScale:I

    .line 337
    return-void
.end method

.method public setBatteryStatus(I)V
    .locals 0
    .parameter "batteryStatus"

    .prologue
    .line 344
    iput p1, p0, LPacket/AdvancedInformationPacket;->batteryStatus:I

    .line 345
    return-void
.end method

.method public setBatteryTechnology(Ljava/lang/String;)V
    .locals 0
    .parameter "batteryTechnology"

    .prologue
    .line 352
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->batteryTechnology:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setBatteryTemperature(I)V
    .locals 0
    .parameter "batteryTemperature"

    .prologue
    .line 360
    iput p1, p0, LPacket/AdvancedInformationPacket;->batteryTemperature:I

    .line 361
    return-void
.end method

.method public setBatteryVoltage(I)V
    .locals 0
    .parameter "batteryVoltage"

    .prologue
    .line 368
    iput p1, p0, LPacket/AdvancedInformationPacket;->batteryVoltage:I

    .line 369
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .parameter "countryCode"

    .prologue
    .line 159
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->countryCode:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0
    .parameter "iMEI"

    .prologue
    .line 143
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->IMEI:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setMobileNetworkAvailable(Z)V
    .locals 0
    .parameter "mobileNetworkAvailable"

    .prologue
    .line 247
    iput-boolean p1, p0, LPacket/AdvancedInformationPacket;->mobileNetworkAvailable:Z

    .line 248
    return-void
.end method

.method public setMobileNetworkConnectedOrConnecting(Z)V
    .locals 0
    .parameter "mobileNetworkConnectedOrConnecting"

    .prologue
    .line 256
    iput-boolean p1, p0, LPacket/AdvancedInformationPacket;->mobileNetworkConnectedOrConnecting:Z

    .line 257
    return-void
.end method

.method public setMobileNetworkExtraInfos(Ljava/lang/String;)V
    .locals 0
    .parameter "mobileNetworkExtraInfos"

    .prologue
    .line 264
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->mobileNetworkExtraInfos:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setMobileNetworkName(Ljava/lang/String;)V
    .locals 0
    .parameter "mobileNetworkName"

    .prologue
    .line 239
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->mobileNetworkName:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setMobileNetworkReason(Ljava/lang/String;)V
    .locals 0
    .parameter "mobileNetworkReason"

    .prologue
    .line 272
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->mobileNetworkReason:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setOperatorCode(Ljava/lang/String;)V
    .locals 0
    .parameter "operatorCode"

    .prologue
    .line 167
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->operatorCode:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;)V
    .locals 0
    .parameter "operatorName"

    .prologue
    .line 175
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->operatorName:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 135
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->phoneNumber:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setSensors(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, sensors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->sensors:Ljava/util/ArrayList;

    .line 297
    return-void
.end method

.method public setSimCountryCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 131
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->simCountryCode:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setSimOperatorCode(Ljava/lang/String;)V
    .locals 0
    .parameter "simOperatorCode"

    .prologue
    .line 183
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->simOperatorCode:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setSimOperatorName(Ljava/lang/String;)V
    .locals 0
    .parameter "simOperatorName"

    .prologue
    .line 191
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->simOperatorName:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setSimSerial(Ljava/lang/String;)V
    .locals 0
    .parameter "simSerial"

    .prologue
    .line 199
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->simSerial:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setSoftwareVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "softwareVersion"

    .prologue
    .line 151
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->softwareVersion:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setWifiAvailable(Z)V
    .locals 0
    .parameter "wifiAvailable"

    .prologue
    .line 207
    iput-boolean p1, p0, LPacket/AdvancedInformationPacket;->wifiAvailable:Z

    .line 208
    return-void
.end method

.method public setWifiConnectedOrConnecting(Z)V
    .locals 0
    .parameter "wifiConnectedOrConnecting"

    .prologue
    .line 215
    iput-boolean p1, p0, LPacket/AdvancedInformationPacket;->wifiConnectedOrConnecting:Z

    .line 216
    return-void
.end method

.method public setWifiExtraInfos(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiExtraInfos"

    .prologue
    .line 223
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->wifiExtraInfos:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setWifiReason(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiReason"

    .prologue
    .line 231
    iput-object p1, p0, LPacket/AdvancedInformationPacket;->wifiReason:Ljava/lang/String;

    .line 232
    return-void
.end method
