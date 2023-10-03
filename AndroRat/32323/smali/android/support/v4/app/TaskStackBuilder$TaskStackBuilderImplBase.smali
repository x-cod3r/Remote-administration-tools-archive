.class Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"

# interfaces
.implements Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/TaskStackBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskStackBuilderImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;II)Landroid/app/PendingIntent;
    .locals 2
    .parameter "context"
    .parameter "intents"
    .parameter "requestCode"
    .parameter "flags"

    .prologue
    .line 77
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, p2, v1

    .line 78
    .local v0, topIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-static {p1, p3, v0, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method
