.class Landroid/support/v4/app/ActivityCompatHoneycomb;
.super Ljava/lang/Object;
.source "ActivityCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dump(Landroid/app/Activity;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static invalidateOptionsMenu(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 31
    return-void
.end method

.method static startActivities(Landroid/app/Activity;[Landroid/content/Intent;)V
    .locals 0
    .parameter "activity"
    .parameter "intents"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    .line 35
    return-void
.end method
