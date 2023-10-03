.class public interface abstract Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;
.super Ljava/lang/Object;
.source "WakefulIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/cwac/wakeful/WakefulIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AlarmListener"
.end annotation


# virtual methods
.method public abstract getMaxAge()J
.end method

.method public abstract scheduleAlarms(Landroid/app/AlarmManager;Landroid/app/PendingIntent;Landroid/content/Context;)V
.end method

.method public abstract sendWakefulWork(Landroid/content/Context;)V
.end method
