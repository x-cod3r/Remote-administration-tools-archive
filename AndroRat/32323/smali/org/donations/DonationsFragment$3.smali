.class Lorg/donations/DonationsFragment$3;
.super Ljava/lang/Object;
.source "DonationsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/donations/DonationsFragment;->displayDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/donations/DonationsFragment;


# direct methods
.method constructor <init>(Lorg/donations/DonationsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lorg/donations/DonationsFragment$3;->this$0:Lorg/donations/DonationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 304
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 305
    return-void
.end method
