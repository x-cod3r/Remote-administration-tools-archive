.class public final Landroid/support/v4/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/Loader;


# direct methods
.method public constructor <init>(Landroid/support/v4/content/Loader;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    .local p0, this:Landroid/support/v4/content/Loader$ForceLoadContentObserver;,"Landroid/support/v4/content/Loader<TD;>.ForceLoadContentObserver;"
    iput-object p1, p0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v4/content/Loader;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 53
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 57
    .local p0, this:Landroid/support/v4/content/Loader$ForceLoadContentObserver;,"Landroid/support/v4/content/Loader<TD;>.ForceLoadContentObserver;"
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 62
    .local p0, this:Landroid/support/v4/content/Loader$ForceLoadContentObserver;,"Landroid/support/v4/content/Loader<TD;>.ForceLoadContentObserver;"
    iget-object v0, p0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 63
    return-void
.end method
