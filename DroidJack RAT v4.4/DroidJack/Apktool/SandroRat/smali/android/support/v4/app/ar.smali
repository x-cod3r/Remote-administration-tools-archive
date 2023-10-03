.class Landroid/support/v4/app/ar;
.super Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/support/v4/app/ar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ar;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/support/v4/app/ar;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/ar;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/ar;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method
