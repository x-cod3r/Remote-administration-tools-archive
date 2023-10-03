.class public abstract Lcom/actionbarsherlock/view/Window;
.super Landroid/view/Window;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/view/Window$Callback;
    }
.end annotation


# static fields
.field public static final FEATURE_ACTION_BAR:J = 0x8L

.field public static final FEATURE_ACTION_BAR_OVERLAY:J = 0x9L

.field public static final FEATURE_ACTION_MODE_OVERLAY:J = 0xaL

.field public static final FEATURE_INDETERMINATE_PROGRESS:J = 0x5L

.field public static final FEATURE_NO_TITLE:J = 0x1L

.field public static final FEATURE_PROGRESS:J = 0x2L


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method
