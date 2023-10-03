.class public Lmy/app/client/AndroratActivity;
.super Landroid/app/Activity;
.source "AndroratActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lmy/app/client/AndroratActivity;->setContentView(I)V

    .line 33
    return-void
.end method
