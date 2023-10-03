.class Landroid/support/v4/view/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/PagerTabStrip;


# direct methods
.method constructor <init>(Landroid/support/v4/view/PagerTabStrip;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ag;->a:Landroid/support/v4/view/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ag;->a:Landroid/support/v4/view/PagerTabStrip;

    iget-object v0, v0, Landroid/support/v4/view/PagerTabStrip;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/v4/view/ag;->a:Landroid/support/v4/view/PagerTabStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTabStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
