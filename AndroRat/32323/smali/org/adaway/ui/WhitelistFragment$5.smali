.class Lorg/adaway/ui/WhitelistFragment$5;
.super Ljava/lang/Object;
.source "WhitelistFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adaway/ui/WhitelistFragment;->addEntry(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/adaway/ui/WhitelistFragment;


# direct methods
.method constructor <init>(Lorg/adaway/ui/WhitelistFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lorg/adaway/ui/WhitelistFragment$5;->this$0:Lorg/adaway/ui/WhitelistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dlg"
    .parameter "sum"

    .prologue
    .line 281
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 282
    return-void
.end method
