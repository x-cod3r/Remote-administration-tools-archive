.class public Lorg/donations/DonationsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DonationsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Lorg/donations/R$layout;->donations__activity:I

    invoke-virtual {p0, v0}, Lorg/donations/DonationsActivity;->setContentView(I)V

    .line 32
    return-void
.end method
