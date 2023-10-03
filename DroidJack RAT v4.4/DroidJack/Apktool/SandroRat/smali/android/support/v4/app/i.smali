.class public Landroid/support/v4/app/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/support/v4/c/a;

.field public b:Ljava/util/ArrayList;

.field public c:Landroid/support/v4/app/al;

.field public d:Landroid/view/View;

.field final synthetic e:Landroid/support/v4/app/d;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/d;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/i;->e:Landroid/support/v4/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->a:Landroid/support/v4/c/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/app/al;

    invoke-direct {v0}, Landroid/support/v4/app/al;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->c:Landroid/support/v4/app/al;

    return-void
.end method
