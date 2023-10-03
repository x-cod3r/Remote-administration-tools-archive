.class public Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ActivityNotFoundDialogFragment.java"


# static fields
.field private static final ARG_APP_FDROID_QUERY:Ljava/lang/String; = "app_fdroid_query"

.field private static final ARG_APP_GOOGLE_PLAY_URI:Ljava/lang/String; = "app_google_play_uri"

.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IILjava/lang/String;Ljava/lang/String;)Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "appGooglePlayUri"
    .parameter "appFDroidQuery"

    .prologue
    .line 51
    new-instance v1, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;

    invoke-direct {v1}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;-><init>()V

    .line 52
    .local v1, frag:Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v2, "app_google_play_uri"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "app_fdroid_query"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v0}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 71
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {p0}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "app_google_play_uri"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, appGooglePlayUri:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "app_fdroid_query"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, appFDroidQuery:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 74
    .local v5, title:I
    invoke-virtual {p0}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "message"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 76
    .local v4, message:I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x1080027

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 78
    const v6, 0x7f060027

    new-instance v7, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;

    invoke-direct {v7, p0, v2, v0, v1}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$1;-><init>(Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    const v6, 0x7f060028

    new-instance v7, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$2;

    invoke-direct {v7, p0}, Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment$2;-><init>(Lorg/adaway/ui/dialog/ActivityNotFoundDialogFragment;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
