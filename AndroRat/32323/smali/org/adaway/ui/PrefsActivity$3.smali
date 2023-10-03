.class Lorg/adaway/ui/PrefsActivity$3;
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
    .line 149
    iput-object p1, p0, Lorg/adaway/ui/PrefsActivity$3;->this$0:Lorg/adaway/ui/PrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 152
    const-string v0, "customTarget"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/adaway/ui/PrefsActivity$3;->this$0:Lorg/adaway/ui/PrefsActivity;

    #getter for: Lorg/adaway/ui/PrefsActivity;->mCustomTarget:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lorg/adaway/ui/PrefsActivity;->access$100(Lorg/adaway/ui/PrefsActivity;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 157
    :goto_0
    return v2

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/adaway/ui/PrefsActivity$3;->this$0:Lorg/adaway/ui/PrefsActivity;

    #getter for: Lorg/adaway/ui/PrefsActivity;->mCustomTarget:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lorg/adaway/ui/PrefsActivity;->access$100(Lorg/adaway/ui/PrefsActivity;)Landroid/preference/EditTextPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_0
.end method
