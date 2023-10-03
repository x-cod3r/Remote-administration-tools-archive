.class Lorg/adaway/ui/BaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adaway/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/adaway/ui/BaseActivity;


# direct methods
.method constructor <init>(Lorg/adaway/ui/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lorg/adaway/ui/BaseActivity$1;->this$0:Lorg/adaway/ui/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 131
    .local v1, extras:Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "org.adaway.UPDATE_STATUS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    if-eqz v1, :cond_0

    .line 133
    const-string v5, "org.adaway.UPDATE_STATUS.TITLE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "org.adaway.UPDATE_STATUS.TEXT"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "org.adaway.UPDATE_STATUS.ICON"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    const-string v5, "org.adaway.UPDATE_STATUS.TITLE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, title:Ljava/lang/String;
    const-string v5, "org.adaway.UPDATE_STATUS.TEXT"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, text:Ljava/lang/String;
    const-string v5, "org.adaway.UPDATE_STATUS.ICON"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 141
    .local v2, status:I
    iget-object v5, p0, Lorg/adaway/ui/BaseActivity$1;->this$0:Lorg/adaway/ui/BaseActivity;

    iget-object v5, v5, Lorg/adaway/ui/BaseActivity;->mBaseFragment:Lorg/adaway/ui/BaseFragment;

    invoke-virtual {v5, v4, v3, v2}, Lorg/adaway/ui/BaseFragment;->setStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    .end local v2           #status:I
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "org.adaway.BUTTONS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    if-eqz v1, :cond_1

    .line 147
    const-string v5, "org.adaway.BUTTONS.ENABLED"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    const-string v5, "org.adaway.BUTTONS.ENABLED"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 151
    .local v0, buttonsDisabled:Z
    iget-object v5, p0, Lorg/adaway/ui/BaseActivity$1;->this$0:Lorg/adaway/ui/BaseActivity;

    iget-object v5, v5, Lorg/adaway/ui/BaseActivity;->mBaseFragment:Lorg/adaway/ui/BaseFragment;

    invoke-virtual {v5, v0}, Lorg/adaway/ui/BaseFragment;->setButtonsDisabled(Z)V

    .line 155
    .end local v0           #buttonsDisabled:Z
    :cond_1
    return-void
.end method
