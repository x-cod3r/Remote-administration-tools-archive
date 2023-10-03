.class Lorg/adaway/ui/PrefsActivity$1;
.super Ljava/lang/Object;
.source "PrefsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adaway/ui/PrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/adaway/ui/PrefsActivity;


# direct methods
.method constructor <init>(Lorg/adaway/ui/PrefsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lorg/adaway/ui/PrefsActivity$1;->this$0:Lorg/adaway/ui/PrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lorg/adaway/ui/PrefsActivity$1;->this$0:Lorg/adaway/ui/PrefsActivity;

    #getter for: Lorg/adaway/ui/PrefsActivity;->mActivity:Landroid/content/Context;
    invoke-static {v0}, Lorg/adaway/ui/PrefsActivity;->access$000(Lorg/adaway/ui/PrefsActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/adaway/helper/PreferenceHelper;->getUpdateCheckDaily(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lorg/adaway/service/DailyListener;

    invoke-direct {v0}, Lorg/adaway/service/DailyListener;-><init>()V

    iget-object v1, p0, Lorg/adaway/ui/PrefsActivity$1;->this$0:Lorg/adaway/ui/PrefsActivity;

    #getter for: Lorg/adaway/ui/PrefsActivity;->mActivity:Landroid/content/Context;
    invoke-static {v1}, Lorg/adaway/ui/PrefsActivity;->access$000(Lorg/adaway/ui/PrefsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->scheduleAlarms(Lcom/commonsware/cwac/wakeful/WakefulIntentService$AlarmListener;Landroid/content/Context;Z)V

    .line 105
    :goto_0
    return v2

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/adaway/ui/PrefsActivity$1;->this$0:Lorg/adaway/ui/PrefsActivity;

    #getter for: Lorg/adaway/ui/PrefsActivity;->mActivity:Landroid/content/Context;
    invoke-static {v0}, Lorg/adaway/ui/PrefsActivity;->access$000(Lorg/adaway/ui/PrefsActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->cancelAlarms(Landroid/content/Context;)V

    goto :goto_0
.end method
