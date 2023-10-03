.class Landroid/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;
.source "MenuCompat.java"

# interfaces
.implements Landroid/support/v4/view/MenuCompat$MenuVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombMenuVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setShowAsAction(Landroid/view/MenuItem;I)Z
    .locals 1
    .parameter "item"
    .parameter "actionEnum"

    .prologue
    .line 50
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method
