.class Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;
.super Ljava/lang/Object;
.source "ActivityNotFoundDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$appFDroidQuery:Ljava/lang/String;

.field final synthetic val$appGooglePlayUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;->this$0:Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;

    iput-object p2, p0, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;->val$appGooglePlayUri:Ljava/lang/String;

    iput-object p3, p0, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p4, p0, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;->val$appFDroidQuery:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 80
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v3, intentGooglePlay:Landroid/content/Intent;
    iget-object v4, p0, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;->val$appGooglePlayUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    :try_start_0
    iget-object v4, p0, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "AdAway"

    const-string v5, "No Google Play Store installed!, Trying FDroid..."

    invoke-static {v4, v5, v0}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, intentFDroid:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "org.fdroid.fdroid"

    const-string v6, "org.fdroid.fdroid.SearchResults"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    const-string v4, "query"

    iget-object v5, p0, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;->val$appFDroidQuery:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :try_start_1
    iget-object v4, p0, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 95
    :catch_1
    move-exception v1

    .line 96
    .local v1, e2:Landroid/content/ActivityNotFoundException;
    const-string v4, "AdAway"

    const-string v5, "No FDroid installed!"

    invoke-static {v4, v5, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
