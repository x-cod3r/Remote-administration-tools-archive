.class Lorg/adaway/ui/RedirectionListFragment$1;
.super Ljava/lang/Object;
.source "RedirectionListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adaway/ui/RedirectionListFragment;->menuEditEntry(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/adaway/ui/RedirectionListFragment;

.field final synthetic val$hostnameEditText:Landroid/widget/EditText;

.field final synthetic val$ipEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/adaway/ui/RedirectionListFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lorg/adaway/ui/RedirectionListFragment$1;->this$0:Lorg/adaway/ui/RedirectionListFragment;

    iput-object p2, p0, Lorg/adaway/ui/RedirectionListFragment$1;->val$hostnameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/adaway/ui/RedirectionListFragment$1;->val$ipEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v6, 0x7f060026

    const v5, 0x1080027

    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 156
    iget-object v3, p0, Lorg/adaway/ui/RedirectionListFragment$1;->val$hostnameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, hostname:Ljava/lang/String;
    iget-object v3, p0, Lorg/adaway/ui/RedirectionListFragment$1;->val$ipEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, ip:Ljava/lang/String;
    invoke-static {v1}, Lorg/adaway/util/RegexUtils;->isValidHostname(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-static {v2}, Lorg/adaway/util/RegexUtils;->isValidIP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lorg/adaway/ui/RedirectionListFragment$1;->this$0:Lorg/adaway/ui/RedirectionListFragment;

    #getter for: Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v3}, Lorg/adaway/ui/RedirectionListFragment;->access$000(Lorg/adaway/ui/RedirectionListFragment;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lorg/adaway/ui/RedirectionListFragment$1;->this$0:Lorg/adaway/ui/RedirectionListFragment;

    #getter for: Lorg/adaway/ui/RedirectionListFragment;->mCurrentRowId:J
    invoke-static {v4}, Lorg/adaway/ui/RedirectionListFragment;->access$100(Lorg/adaway/ui/RedirectionListFragment;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v1, v2}, Lorg/adaway/provider/ProviderHelper;->updateRedirectionListItemHostnameAndIp(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/adaway/ui/RedirectionListFragment$1;->this$0:Lorg/adaway/ui/RedirectionListFragment;

    #getter for: Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v4}, Lorg/adaway/ui/RedirectionListFragment;->access$000(Lorg/adaway/ui/RedirectionListFragment;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 167
    const v3, 0x7f060089

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 168
    iget-object v3, p0, Lorg/adaway/ui/RedirectionListFragment$1;->this$0:Lorg/adaway/ui/RedirectionListFragment;

    const v4, 0x7f060088

    invoke-virtual {v3, v4}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, p0, Lorg/adaway/ui/RedirectionListFragment$1;->this$0:Lorg/adaway/ui/RedirectionListFragment;

    invoke-virtual {v3, v6}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/adaway/ui/RedirectionListFragment$1$1;

    invoke-direct {v4, p0}, Lorg/adaway/ui/RedirectionListFragment$1$1;-><init>(Lorg/adaway/ui/RedirectionListFragment$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 178
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/adaway/ui/RedirectionListFragment$1;->this$0:Lorg/adaway/ui/RedirectionListFragment;

    #getter for: Lorg/adaway/ui/RedirectionListFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v4}, Lorg/adaway/ui/RedirectionListFragment;->access$000(Lorg/adaway/ui/RedirectionListFragment;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 179
    .restart local v0       #alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 180
    const v3, 0x7f060087

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 181
    iget-object v3, p0, Lorg/adaway/ui/RedirectionListFragment$1;->this$0:Lorg/adaway/ui/RedirectionListFragment;

    const v4, 0x7f060086

    invoke-virtual {v3, v4}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, p0, Lorg/adaway/ui/RedirectionListFragment$1;->this$0:Lorg/adaway/ui/RedirectionListFragment;

    invoke-virtual {v3, v6}, Lorg/adaway/ui/RedirectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/adaway/ui/RedirectionListFragment$1$2;

    invoke-direct {v4, p0}, Lorg/adaway/ui/RedirectionListFragment$1$2;-><init>(Lorg/adaway/ui/RedirectionListFragment$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
