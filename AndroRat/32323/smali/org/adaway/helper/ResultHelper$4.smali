.class final Lorg/adaway/helper/ResultHelper$4;
.super Ljava/lang/Object;
.source "ResultHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adaway/helper/ResultHelper;->showDialogBasedOnResult(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lorg/adaway/helper/ResultHelper$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 226
    iget-object v0, p0, Lorg/adaway/helper/ResultHelper$4;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/adaway/helper/ResultHelper$4;->val$context:Landroid/content/Context;

    const-class v3, Lorg/adaway/ui/HelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
    return-void
.end method
