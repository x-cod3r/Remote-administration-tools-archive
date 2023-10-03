.class public Lmy/app/client/Preference;
.super Landroid/preference/PreferenceActivity;
.source "Preference.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lmy/app/client/Preference;->addPreferencesFromResource(I)V

    .line 42
    return-void
.end method
