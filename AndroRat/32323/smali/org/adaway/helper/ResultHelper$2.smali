.class final Lorg/adaway/helper/ResultHelper$2;
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
    .line 202
    iput-object p1, p0, Lorg/adaway/helper/ResultHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 204
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    iget-object v0, p0, Lorg/adaway/helper/ResultHelper$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/adaway/ui/BaseActivity;->updateStatusDisabled(Landroid/content/Context;)V

    .line 207
    return-void
.end method
