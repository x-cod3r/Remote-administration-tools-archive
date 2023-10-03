.class public Lmy/app/client/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# instance fields
.field Client:Landroid/content/Intent;

.field ClientAlt:Landroid/content/Intent;

.field btnStart:Landroid/widget/Button;

.field btnStop:Landroid/widget/Button;

.field ipfield:Landroid/widget/EditText;

.field myIp:Ljava/lang/String;

.field myPort:I

.field portfield:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const-string v0, "REPLACEIPHERE"

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->myIp:Ljava/lang/String;

    .line 40
    const/16 v0, 0x1e2a

    iput v0, p0, Lmy/app/client/LauncherActivity;->myPort:I

    .line 33
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->setContentView(I)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmy/app/client/Client;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    const-class v1, Lmy/app/client/LauncherActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->btnStart:Landroid/widget/Button;

    .line 89
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->btnStop:Landroid/widget/Button;

    .line 90
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->ipfield:Landroid/widget/EditText;

    .line 91
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->portfield:Landroid/widget/EditText;

    .line 93
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->myIp:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->ipfield:Landroid/widget/EditText;

    const-string v1, "REPLACEIPHERE"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->portfield:Landroid/widget/EditText;

    const-string v1, "REPLACEPORTHERE"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    const-string v1, "IP"

    iget-object v2, p0, Lmy/app/client/LauncherActivity;->ipfield:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    const-string v1, "PORT"

    iget-object v2, p0, Lmy/app/client/LauncherActivity;->portfield:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    :goto_0
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->btnStart:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->btnStop:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->ipfield:Landroid/widget/EditText;

    iget-object v1, p0, Lmy/app/client/LauncherActivity;->myIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->portfield:Landroid/widget/EditText;

    iget v1, p0, Lmy/app/client/LauncherActivity;->myPort:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    const-string v1, "IP"

    iget-object v2, p0, Lmy/app/client/LauncherActivity;->myIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    const-string v1, "PORT"

    iget v2, p0, Lmy/app/client/LauncherActivity;->myPort:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->setContentView(I)V

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmy/app/client/Client;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    const-class v1, Lmy/app/client/LauncherActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->btnStart:Landroid/widget/Button;

    .line 57
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->btnStop:Landroid/widget/Button;

    .line 58
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->ipfield:Landroid/widget/EditText;

    .line 59
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmy/app/client/LauncherActivity;->portfield:Landroid/widget/EditText;

    .line 61
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->myIp:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->ipfield:Landroid/widget/EditText;

    const-string v1, "REPLACEIPHERE"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->portfield:Landroid/widget/EditText;

    const-string v1, "REPLACEPORTHERE"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    const-string v1, "IP"

    iget-object v2, p0, Lmy/app/client/LauncherActivity;->ipfield:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    const-string v1, "PORT"

    iget-object v2, p0, Lmy/app/client/LauncherActivity;->portfield:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    :goto_0
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmy/app/client/LauncherActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->btnStart:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->btnStop:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->ipfield:Landroid/widget/EditText;

    iget-object v1, p0, Lmy/app/client/LauncherActivity;->myIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->portfield:Landroid/widget/EditText;

    iget v1, p0, Lmy/app/client/LauncherActivity;->myPort:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    const-string v1, "IP"

    iget-object v2, p0, Lmy/app/client/LauncherActivity;->myIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lmy/app/client/LauncherActivity;->Client:Landroid/content/Intent;

    const-string v1, "PORT"

    iget v2, p0, Lmy/app/client/LauncherActivity;->myPort:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 45
    invoke-virtual {p0}, Lmy/app/client/LauncherActivity;->onResume()V

    .line 46
    return-void
.end method
