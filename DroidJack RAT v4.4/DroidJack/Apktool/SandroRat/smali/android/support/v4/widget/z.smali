.class Landroid/support/v4/widget/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/w;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/w;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/w;

    invoke-virtual {v0}, Landroid/support/v4/widget/w;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/w;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v4/widget/w;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/z;->a:Landroid/support/v4/widget/w;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/w;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
