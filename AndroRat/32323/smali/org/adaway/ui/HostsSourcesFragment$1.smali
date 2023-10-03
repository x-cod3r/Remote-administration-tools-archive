.class Lorg/adaway/ui/HostsSourcesFragment$1;
.super Ljava/lang/Object;
.source "HostsSourcesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adaway/ui/HostsSourcesFragment;->menuEditEntry(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/adaway/ui/HostsSourcesFragment;

.field final synthetic val$inputEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/adaway/ui/HostsSourcesFragment;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lorg/adaway/ui/HostsSourcesFragment$1;->this$0:Lorg/adaway/ui/HostsSourcesFragment;

    iput-object p2, p0, Lorg/adaway/ui/HostsSourcesFragment$1;->val$inputEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 150
    iget-object v2, p0, Lorg/adaway/ui/HostsSourcesFragment$1;->val$inputEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Lorg/adaway/util/RegexUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lorg/adaway/ui/HostsSourcesFragment$1;->this$0:Lorg/adaway/ui/HostsSourcesFragment;

    #getter for: Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/adaway/ui/HostsSourcesFragment;->access$000(Lorg/adaway/ui/HostsSourcesFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/adaway/ui/HostsSourcesFragment$1;->this$0:Lorg/adaway/ui/HostsSourcesFragment;

    #getter for: Lorg/adaway/ui/HostsSourcesFragment;->mCurrentRowId:J
    invoke-static {v3}, Lorg/adaway/ui/HostsSourcesFragment;->access$100(Lorg/adaway/ui/HostsSourcesFragment;)J

    move-result-wide v3

    invoke-static {v2, v3, v4, v1}, Lorg/adaway/provider/ProviderHelper;->updateHostsSourceUrl(Landroid/content/Context;JLjava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/adaway/ui/HostsSourcesFragment$1;->this$0:Lorg/adaway/ui/HostsSourcesFragment;

    #getter for: Lorg/adaway/ui/HostsSourcesFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lorg/adaway/ui/HostsSourcesFragment;->access$000(Lorg/adaway/ui/HostsSourcesFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 157
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 158
    const v2, 0x7f060084

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 159
    iget-object v2, p0, Lorg/adaway/ui/HostsSourcesFragment$1;->this$0:Lorg/adaway/ui/HostsSourcesFragment;

    const v3, 0x7f060083

    invoke-virtual {v2, v3}, Lorg/adaway/ui/HostsSourcesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, p0, Lorg/adaway/ui/HostsSourcesFragment$1;->this$0:Lorg/adaway/ui/HostsSourcesFragment;

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Lorg/adaway/ui/HostsSourcesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/adaway/ui/HostsSourcesFragment$1$1;

    invoke-direct {v3, p0}, Lorg/adaway/ui/HostsSourcesFragment$1$1;-><init>(Lorg/adaway/ui/HostsSourcesFragment$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
