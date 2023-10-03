.class Lorg/adaway/ui/PrefsActivity$2;
.super Ljava/lang/Object;
.source "PrefsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 112
    iput-object p1, p0, Lorg/adaway/ui/PrefsActivity$2;->this$0:Lorg/adaway/ui/PrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 117
    :try_start_0
    invoke-static {}, Lorg/rootcommands/Shell;->startRootShell()Lorg/rootcommands/Shell;

    move-result-object v1

    .line 119
    .local v1, rootShell:Lorg/rootcommands/Shell;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lorg/adaway/ui/PrefsActivity$2;->this$0:Lorg/adaway/ui/PrefsActivity;

    #getter for: Lorg/adaway/ui/PrefsActivity;->mActivity:Landroid/content/Context;
    invoke-static {v2}, Lorg/adaway/ui/PrefsActivity;->access$000(Lorg/adaway/ui/PrefsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/adaway/util/WebserverUtils;->startWebserver(Landroid/content/Context;Lorg/rootcommands/Shell;)V

    .line 127
    :goto_0
    invoke-virtual {v1}, Lorg/rootcommands/Shell;->close()V

    .line 132
    .end local v1           #rootShell:Lorg/rootcommands/Shell;
    :goto_1
    return v4

    .line 124
    .restart local v1       #rootShell:Lorg/rootcommands/Shell;
    :cond_0
    iget-object v2, p0, Lorg/adaway/ui/PrefsActivity$2;->this$0:Lorg/adaway/ui/PrefsActivity;

    #getter for: Lorg/adaway/ui/PrefsActivity;->mActivity:Landroid/content/Context;
    invoke-static {v2}, Lorg/adaway/ui/PrefsActivity;->access$000(Lorg/adaway/ui/PrefsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/adaway/util/WebserverUtils;->stopWebserver(Landroid/content/Context;Lorg/rootcommands/Shell;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v1           #rootShell:Lorg/rootcommands/Shell;
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AdAway"

    const-string v3, "Problem while starting/stopping webserver!"

    invoke-static {v2, v3, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
