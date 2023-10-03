.class Lorg/adaway/ui/BlacklistFragment$1$1;
.super Ljava/lang/Object;
.source "BlacklistFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adaway/ui/BlacklistFragment$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/adaway/ui/BlacklistFragment$1;


# direct methods
.method constructor <init>(Lorg/adaway/ui/BlacklistFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lorg/adaway/ui/BlacklistFragment$1$1;->this$1:Lorg/adaway/ui/BlacklistFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dlg"
    .parameter "sum"

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    return-void
.end method
