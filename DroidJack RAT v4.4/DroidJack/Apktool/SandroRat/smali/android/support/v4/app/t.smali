.class final Landroid/support/v4/app/t;
.super Landroid/support/v4/app/r;

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field static final A:Landroid/view/animation/Interpolator;

.field static final B:Landroid/view/animation/Interpolator;

.field static final C:Landroid/view/animation/Interpolator;

.field static a:Z

.field static final b:Z

.field static final z:Landroid/view/animation/Interpolator;


# instance fields
.field c:Ljava/util/ArrayList;

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;

.field g:Ljava/util/ArrayList;

.field h:Ljava/util/ArrayList;

.field i:Ljava/util/ArrayList;

.field j:Ljava/util/ArrayList;

.field k:Ljava/util/ArrayList;

.field l:Ljava/util/ArrayList;

.field m:Ljava/util/ArrayList;

.field n:I

.field o:Landroid/support/v4/app/o;

.field p:Landroid/support/v4/app/q;

.field q:Landroid/support/v4/app/l;

.field r:Z

.field s:Z

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Landroid/os/Bundle;

.field x:Landroid/util/SparseArray;

.field y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    sput-boolean v0, Landroid/support/v4/app/t;->a:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/t;->b:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/t;->z:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/t;->A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/t;->B:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/t;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/r;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/t;->n:I

    iput-object v1, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;

    new-instance v0, Landroid/support/v4/app/u;

    invoke-direct {v0, p0}, Landroid/support/v4/app/u;-><init>(Landroid/support/v4/app/t;)V

    iput-object v0, p0, Landroid/support/v4/app/t;->y:Ljava/lang/Runnable;

    return-void
.end method

.method static a(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Landroid/support/v4/app/t;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method static a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 10

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v1, Landroid/support/v4/app/t;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Landroid/support/v4/app/t;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v9
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 5

    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v4/c/e;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/c/e;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    const-string v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/o;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    throw p1

    :catch_0
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/t;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(IZ)I
    .locals 1

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method public static c(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x2002

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1001

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private u()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/t;->s:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/t;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/t;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/d;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Landroid/support/v4/app/t;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    :goto_0
    return v0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Landroid/support/v4/app/t;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Landroid/support/v4/app/af;
    .locals 1

    new-instance v0, Landroid/support/v4/app/d;

    invoke-direct {v0, p0}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/t;)V

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/l;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/l;->x:I

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/l;->x:I

    if-eq v2, p1, :cond_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/l;
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/l;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/l;->z:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/l;->z:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Landroid/support/v4/app/l;IZI)Landroid/view/animation/Animation;
    .locals 6

    const v5, 0x3f79999a    # 0.975f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget v0, p1, Landroid/support/v4/app/l;->H:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/l;->a(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v0, p1, Landroid/support/v4/app/l;->H:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget v2, p1, Landroid/support/v4/app/l;->H:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    if-nez p2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p2, p3}, Landroid/support/v4/app/t;->b(IZ)I

    move-result v0

    if-gez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    packed-switch v0, :pswitch_data_0

    if-nez p4, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_5
    if-nez p4, :cond_6

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    const/high16 v1, 0x3f900000    # 1.125f

    invoke-static {v0, v1, v3, v4, v3}, Landroid/support/v4/app/t;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-static {v0, v3, v5, v3, v4}, Landroid/support/v4/app/t;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-static {v0, v5, v3, v4, v3}, Landroid/support/v4/app/t;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    const v1, 0x3f89999a    # 1.075f

    invoke-static {v0, v3, v1, v3, v4}, Landroid/support/v4/app/t;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-static {v0, v4, v3}, Landroid/support/v4/app/t;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-static {v0, v3, v4}, Landroid/support/v4/app/t;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method a(IIIZ)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/app/t;->n:I

    if-ne v0, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Landroid/support/v4/app/t;->n:I

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v6, v5

    move v7, v5

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/l;

    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IIIZ)V

    iget-object v0, v1, Landroid/support/v4/app/l;->N:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/support/v4/app/l;->N:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->a()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/app/t;->d()V

    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/t;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/t;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->d()V

    iput-boolean v5, p0, Landroid/support/v4/app/t;->r:Z

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method public a(ILandroid/support/v4/app/d;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    :cond_3
    sget-boolean v1, Landroid/support/v4/app/t;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/t;->a(IIIZ)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->a(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/l;)V
    .locals 3

    iget v0, p3, Landroid/support/v4/app/l;->g:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V

    :cond_0
    iget v0, p3, Landroid/support/v4/app/l;->g:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Landroid/support/v4/app/x;

    iget-object v0, p1, Landroid/support/v4/app/x;->a:[Landroid/support/v4/app/z;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    sget-boolean v3, Landroid/support/v4/app/t;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: re-attaching retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p1, Landroid/support/v4/app/x;->a:[Landroid/support/v4/app/z;

    iget v4, v0, Landroid/support/v4/app/l;->g:I

    aget-object v3, v3, v4

    iput-object v0, v3, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iput-object v7, v0, Landroid/support/v4/app/l;->f:Landroid/util/SparseArray;

    iput v2, v0, Landroid/support/v4/app/l;->s:I

    iput-boolean v2, v0, Landroid/support/v4/app/l;->q:Z

    iput-boolean v2, v0, Landroid/support/v4/app/l;->m:Z

    iput-object v7, v0, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    iget-object v4, v3, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-virtual {v5}, Landroid/support/v4/app/o;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v4, v3, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v4/app/l;->f:Landroid/util/SparseArray;

    iget-object v3, v3, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    iput-object v3, v0, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/x;->a:[Landroid/support/v4/app/z;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move v0, v2

    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/x;->a:[Landroid/support/v4/app/z;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    iget-object v1, p1, Landroid/support/v4/app/x;->a:[Landroid/support/v4/app/z;

    aget-object v1, v1, v0

    if-eqz v1, :cond_7

    iget-object v3, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget-object v4, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/o;Landroid/support/v4/app/l;)Landroid/support/v4/app/l;

    move-result-object v3

    sget-boolean v4, Landroid/support/v4/app/t;->a:Z

    if-eqz v4, :cond_6

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreAllState: active #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v7, v1, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    :cond_8
    sget-boolean v1, Landroid/support/v4/app/t;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: avail #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    if-eqz p2, :cond_d

    move v3, v2

    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    iget v1, v0, Landroid/support/v4/app/l;->k:I

    if-ltz v1, :cond_b

    iget v1, v0, Landroid/support/v4/app/l;->k:I

    iget-object v4, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    iget-object v1, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/l;->k:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/l;

    iput-object v1, v0, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    :cond_b
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_c
    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-attaching retained fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/support/v4/app/l;->k:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, v0, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    goto :goto_5

    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/x;->b:[I

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/x;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    move v1, v2

    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/x;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/x;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-nez v0, :cond_e

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No instantiated fragment for index #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/x;->b:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V

    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/l;->m:Z

    sget-boolean v3, Landroid/support/v4/app/t;->a:Z

    if-eqz v3, :cond_f

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: added #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v3, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v3, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_11
    iput-object v7, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/x;->c:[Landroid/support/v4/app/j;

    if-eqz v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/x;->c:[Landroid/support/v4/app/j;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    move v0, v2

    :goto_7
    iget-object v1, p1, Landroid/support/v4/app/x;->c:[Landroid/support/v4/app/j;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Landroid/support/v4/app/x;->c:[Landroid/support/v4/app/j;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/t;)Landroid/support/v4/app/d;

    move-result-object v1

    sget-boolean v3, Landroid/support/v4/app/t;->a:Z

    if-eqz v3, :cond_13

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: back stack #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/support/v4/app/d;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/support/v4/c/e;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/c/e;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/d;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    :cond_13
    iget-object v3, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v1, Landroid/support/v4/app/d;->o:I

    if-ltz v3, :cond_14

    iget v3, v1, Landroid/support/v4/app/d;->o:I

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/d;)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    iput-object v7, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public a(Landroid/support/v4/app/l;)V
    .locals 6

    const/4 v3, 0x0

    iget-boolean v0, p1, Landroid/support/v4/app/l;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/t;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/t;->v:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/app/l;->L:Z

    iget v2, p0, Landroid/support/v4/app/t;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IIIZ)V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/l;II)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/l;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/l;->a()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iget-boolean v2, p1, Landroid/support/v4/app/l;->B:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v2, p1, Landroid/support/v4/app/l;->E:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/support/v4/app/l;->F:Z

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Landroid/support/v4/app/t;->r:Z

    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/l;->m:Z

    iput-boolean v1, p1, Landroid/support/v4/app/l;->n:Z

    if-eqz v0, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IIIZ)V

    :cond_4
    return-void

    :cond_5
    move v0, v5

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method a(Landroid/support/v4/app/l;IIIZ)V
    .locals 9

    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p1, Landroid/support/v4/app/l;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/l;->B:Z

    if-eqz v0, :cond_1

    :cond_0
    if-le p2, v5, :cond_1

    move p2, v5

    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/l;->n:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/l;->b:I

    if-le p2, v0, :cond_2

    iget p2, p1, Landroid/support/v4/app/l;->b:I

    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/l;->L:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/support/v4/app/l;->b:I

    if-ge v0, v8, :cond_3

    if-le p2, v6, :cond_3

    move p2, v6

    :cond_3
    iget v0, p1, Landroid/support/v4/app/l;->b:I

    if-ge v0, p2, :cond_1d

    iget-boolean v0, p1, Landroid/support/v4/app/l;->p:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/l;->q:Z

    if-nez v0, :cond_4

    :goto_0
    return-void

    :cond_4
    iget-object v0, p1, Landroid/support/v4/app/l;->c:Landroid/view/View;

    if-eqz v0, :cond_5

    iput-object v7, p1, Landroid/support/v4/app/l;->c:Landroid/view/View;

    iget v2, p1, Landroid/support/v4/app/l;->d:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IIIZ)V

    :cond_5
    iget v0, p1, Landroid/support/v4/app/l;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    iput p2, p1, Landroid/support/v4/app/l;->b:I

    goto :goto_0

    :pswitch_0
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/l;->f:Landroid/util/SparseArray;

    iget-object v0, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/l;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    iget-object v0, p1, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/l;->l:I

    :cond_8
    iget-object v0, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/l;->M:Z

    iget-boolean v0, p1, Landroid/support/v4/app/l;->M:Z

    if-nez v0, :cond_9

    iput-boolean v5, p1, Landroid/support/v4/app/l;->L:Z

    if-le p2, v6, :cond_9

    move p2, v6

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iput-object v0, p1, Landroid/support/v4/app/l;->u:Landroid/support/v4/app/o;

    iget-object v0, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    iput-object v0, p1, Landroid/support/v4/app/l;->w:Landroid/support/v4/app/l;

    iget-object v0, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->v:Landroid/support/v4/app/t;

    :goto_2
    iput-object v0, p1, Landroid/support/v4/app/l;->t:Landroid/support/v4/app/t;

    iput-boolean v3, p1, Landroid/support/v4/app/l;->G:Z

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/l;->a(Landroid/app/Activity;)V

    iget-boolean v0, p1, Landroid/support/v4/app/l;->G:Z

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v4/app/at;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/at;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    goto :goto_2

    :cond_b
    iget-object v0, p1, Landroid/support/v4/app/l;->w:Landroid/support/v4/app/l;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/l;)V

    :cond_c
    iget-boolean v0, p1, Landroid/support/v4/app/l;->D:Z

    if-nez v0, :cond_d

    iget-object v0, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/l;->g(Landroid/os/Bundle;)V

    :cond_d
    iput-boolean v3, p1, Landroid/support/v4/app/l;->D:Z

    iget-boolean v0, p1, Landroid/support/v4/app/l;->p:Z

    if-eqz v0, :cond_f

    iget-object v0, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/l;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/l;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/l;->K:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/ar;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    iget-boolean v0, p1, Landroid/support/v4/app/l;->A:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/l;->a(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_f
    :goto_3
    :pswitch_1
    if-le p2, v5, :cond_17

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_10

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/l;->p:Z

    if-nez v0, :cond_15

    iget v0, p1, Landroid/support/v4/app/l;->y:I

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;

    iget v1, p1, Landroid/support/v4/app/l;->y:I

    invoke-interface {v0, v1}, Landroid/support/v4/app/q;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_11

    iget-boolean v1, p1, Landroid/support/v4/app/l;->r:Z

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/l;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/l;->c()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/support/v4/app/l;->y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V

    :cond_11
    :goto_4
    iput-object v0, p1, Landroid/support/v4/app/l;->I:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/l;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/l;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v1, :cond_1c

    iget-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/l;->K:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/ar;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v0, :cond_13

    invoke-virtual {p0, p1, p3, v5, p4}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v2, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_12
    iget-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_13
    iget-boolean v0, p1, Landroid/support/v4/app/l;->A:Z

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/l;->a(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_15
    :goto_5
    iget-object v0, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/l;->h(Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/l;->a(Landroid/os/Bundle;)V

    :cond_16
    iput-object v7, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    :cond_17
    :pswitch_2
    if-le p2, v6, :cond_19

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-virtual {p1}, Landroid/support/v4/app/l;->A()V

    :cond_19
    :pswitch_3
    if-le p2, v8, :cond_6

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iput-boolean v5, p1, Landroid/support/v4/app/l;->o:Z

    invoke-virtual {p1}, Landroid/support/v4/app/l;->B()V

    iput-object v7, p1, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    iput-object v7, p1, Landroid/support/v4/app/l;->f:Landroid/util/SparseArray;

    goto/16 :goto_1

    :cond_1b
    iput-object v7, p1, Landroid/support/v4/app/l;->K:Landroid/view/View;

    goto/16 :goto_3

    :cond_1c
    iput-object v7, p1, Landroid/support/v4/app/l;->K:Landroid/view/View;

    goto :goto_5

    :cond_1d
    iget v0, p1, Landroid/support/v4/app/l;->b:I

    if-le v0, p2, :cond_6

    iget v0, p1, Landroid/support/v4/app/l;->b:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :cond_1e
    :goto_6
    :pswitch_4
    if-ge p2, v5, :cond_6

    iget-boolean v0, p0, Landroid/support/v4/app/t;->t:Z

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/support/v4/app/l;->c:Landroid/view/View;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/support/v4/app/l;->c:Landroid/view/View;

    iput-object v7, p1, Landroid/support/v4/app/l;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1f
    iget-object v0, p1, Landroid/support/v4/app/l;->c:Landroid/view/View;

    if-eqz v0, :cond_2a

    iput p2, p1, Landroid/support/v4/app/l;->d:I

    move p2, v5

    goto/16 :goto_1

    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_21

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-virtual {p1}, Landroid/support/v4/app/l;->D()V

    iput-boolean v3, p1, Landroid/support/v4/app/l;->o:Z

    :cond_21
    :pswitch_6
    if-ge p2, v8, :cond_23

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_22

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {p1}, Landroid/support/v4/app/l;->E()V

    :cond_23
    :pswitch_7
    if-ge p2, v6, :cond_25

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_24

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STOPPED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/l;->F()V

    :cond_25
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1e

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_26

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p1, Landroid/support/v4/app/l;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    invoke-virtual {p0, p1}, Landroid/support/v4/app/t;->e(Landroid/support/v4/app/l;)V

    :cond_27
    invoke-virtual {p1}, Landroid/support/v4/app/l;->G()V

    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/support/v4/app/l;->I:Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    iget v0, p0, Landroid/support/v4/app/t;->n:I

    if-lez v0, :cond_2f

    iget-boolean v0, p0, Landroid/support/v4/app/t;->t:Z

    if-nez v0, :cond_2f

    invoke-virtual {p0, p1, p3, v3, p4}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_28

    iget-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/l;->c:Landroid/view/View;

    iput p2, p1, Landroid/support/v4/app/l;->d:I

    new-instance v1, Landroid/support/v4/app/v;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/app/v;-><init>(Landroid/support/v4/app/t;Landroid/support/v4/app/l;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_28
    iget-object v0, p1, Landroid/support/v4/app/l;->I:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_29
    iput-object v7, p1, Landroid/support/v4/app/l;->I:Landroid/view/ViewGroup;

    iput-object v7, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    iput-object v7, p1, Landroid/support/v4/app/l;->K:Landroid/view/View;

    goto/16 :goto_6

    :cond_2a
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_2b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-boolean v0, p1, Landroid/support/v4/app/l;->D:Z

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Landroid/support/v4/app/l;->H()V

    :cond_2c
    iput-boolean v3, p1, Landroid/support/v4/app/l;->G:Z

    invoke-virtual {p1}, Landroid/support/v4/app/l;->p()V

    iget-boolean v0, p1, Landroid/support/v4/app/l;->G:Z

    if-nez v0, :cond_2d

    new-instance v0, Landroid/support/v4/app/at;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/at;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    if-nez p5, :cond_6

    iget-boolean v0, p1, Landroid/support/v4/app/l;->D:Z

    if-nez v0, :cond_2e

    invoke-virtual {p0, p1}, Landroid/support/v4/app/t;->d(Landroid/support/v4/app/l;)V

    goto/16 :goto_1

    :cond_2e
    iput-object v7, p1, Landroid/support/v4/app/l;->u:Landroid/support/v4/app/o;

    iput-object v7, p1, Landroid/support/v4/app/l;->w:Landroid/support/v4/app/l;

    iput-object v7, p1, Landroid/support/v4/app/l;->t:Landroid/support/v4/app/t;

    iput-object v7, p1, Landroid/support/v4/app/l;->v:Landroid/support/v4/app/t;

    goto/16 :goto_1

    :cond_2f
    move-object v0, v7

    goto/16 :goto_7

    :cond_30
    move-object v0, v7

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public a(Landroid/support/v4/app/l;Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/t;->c(Landroid/support/v4/app/l;)V

    iget-boolean v0, p1, Landroid/support/v4/app/l;->B:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p1, Landroid/support/v4/app/l;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/l;->n:Z

    iget-boolean v0, p1, Landroid/support/v4/app/l;->E:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/l;->F:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Landroid/support/v4/app/t;->r:Z

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/l;)V

    :cond_4
    return-void
.end method

.method public a(Landroid/support/v4/app/o;Landroid/support/v4/app/q;Landroid/support/v4/app/l;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iput-object p2, p0, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;

    iput-object p3, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .locals 2

    if-nez p2, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/t;->u()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/t;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/t;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/t;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/l;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/l;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/d;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/d;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/d;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/d;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    if-ge v1, v2, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/t;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->r:Z

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/t;->u:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->u:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method a(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 11

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-nez p2, :cond_2

    if-gez p3, :cond_2

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/d;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/support/v4/app/d;->a(ZLandroid/support/v4/app/i;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/i;

    invoke-virtual {p0}, Landroid/support/v4/app/t;->f()V

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    if-nez p2, :cond_3

    if-ltz p3, :cond_a

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/d;

    if-eqz p2, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    if-ltz v1, :cond_0

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/d;

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    if-ltz p3, :cond_9

    iget v0, v0, Landroid/support/v4/app/d;->o:I

    if-ne p3, v0, :cond_9

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    if-ltz p3, :cond_8

    iget v0, v0, Landroid/support/v4/app/d;->o:I

    if-eq p3, v0, :cond_4

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_9
    move v0, v1

    :cond_a
    iget-object v1, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-le v1, v0, :cond_b

    iget-object v5, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v1, v3

    :goto_5
    if-gt v1, v7, :cond_c

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/d;

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/app/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_c
    move-object v5, v4

    move v4, v3

    :goto_6
    if-gt v4, v7, :cond_f

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Popping back stack state: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/d;

    if-ne v4, v7, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {v0, v1, v5, v8, v9}, Landroid/support/v4/app/d;->a(ZLandroid/support/v4/app/i;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/i;

    move-result-object v1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v5, v1

    goto :goto_6

    :cond_e
    move v1, v3

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/app/t;->f()V

    goto/16 :goto_1
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->c(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v0

    :cond_2
    return v2
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v3, v4

    move v2, v4

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/l;->b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/l;->q()V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iput-object v1, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;

    return v2
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->c(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Landroid/support/v4/app/d;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/support/v4/app/t;->f()V

    return-void
.end method

.method b(Landroid/support/v4/app/l;)V
    .locals 6

    const/4 v3, 0x0

    iget v2, p0, Landroid/support/v4/app/t;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IIIZ)V

    return-void
.end method

.method public b(Landroid/support/v4/app/l;II)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/l;->A:Z

    if-nez v0, :cond_4

    iput-boolean v3, p1, Landroid/support/v4/app/l;->A:Z

    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/l;->m:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/l;->E:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/l;->F:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Landroid/support/v4/app/t;->r:Z

    :cond_3
    invoke-virtual {p1, v3}, Landroid/support/v4/app/l;->a(Z)V

    :cond_4
    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->d(Landroid/view/Menu;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/t;->e()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->d(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method c(Landroid/support/v4/app/l;)V
    .locals 3

    iget v0, p1, Landroid/support/v4/app/l;->g:I

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/l;->a(ILandroid/support/v4/app/l;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/l;->a(ILandroid/support/v4/app/l;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/l;->g:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public c(Landroid/support/v4/app/l;II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/l;->A:Z

    if-eqz v0, :cond_4

    iput-boolean v3, p1, Landroid/support/v4/app/l;->A:Z

    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/l;->m:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/l;->E:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/l;->F:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Landroid/support/v4/app/t;->r:Z

    :cond_3
    invoke-virtual {p1, v3}, Landroid/support/v4/app/l;->a(Z)V

    :cond_4
    return-void
.end method

.method public c()Z
    .locals 4

    invoke-direct {p0}, Landroid/support/v4/app/t;->u()V

    invoke-virtual {p0}, Landroid/support/v4/app/t;->b()Z

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/t;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method d()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method d(Landroid/support/v4/app/l;)V
    .locals 3

    iget v0, p1, Landroid/support/v4/app/l;->g:I

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/l;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/l;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget-object v1, p1, Landroid/support/v4/app/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/l;->o()V

    goto :goto_0
.end method

.method public d(Landroid/support/v4/app/l;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/l;->B:Z

    if-nez v0, :cond_4

    iput-boolean v2, p1, Landroid/support/v4/app/l;->B:Z

    iget-boolean v0, p1, Landroid/support/v4/app/l;->m:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/l;->E:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/l;->F:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Landroid/support/v4/app/t;->r:Z

    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/l;->m:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IIIZ)V

    :cond_4
    return-void
.end method

.method e(Landroid/support/v4/app/l;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/l;->K:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;

    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/l;->K:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/l;->f:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public e(Landroid/support/v4/app/l;II)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/l;->B:Z

    if-eqz v0, :cond_5

    iput-boolean v5, p1, Landroid/support/v4/app/l;->B:Z

    iget-boolean v0, p1, Landroid/support/v4/app/l;->m:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p1, Landroid/support/v4/app/l;->m:Z

    iget-boolean v0, p1, Landroid/support/v4/app/l;->E:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/l;->F:Z

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Landroid/support/v4/app/t;->r:Z

    :cond_4
    iget v2, p0, Landroid/support/v4/app/t;->n:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IIIZ)V

    :cond_5
    return-void
.end method

.method public e()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/t;->e:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget-object v3, v3, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/support/v4/app/t;->v:Z

    if-eqz v0, :cond_9

    move v3, v2

    move v4, v2

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/support/v4/app/l;->N:Landroid/support/v4/app/ap;

    if-eqz v5, :cond_3

    iget-object v0, v0, Landroid/support/v4/app/l;->N:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->a()Z

    move-result v0

    or-int/2addr v4, v0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v1, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6

    :cond_5
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;

    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget-object v1, v1, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/v4/app/t;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Landroid/support/v4/app/t;->e:Z

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_7

    iget-object v4, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    iget-object v4, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    iput-boolean v2, p0, Landroid/support/v4/app/t;->e:Z

    move v1, v0

    goto :goto_0

    :cond_8
    if-nez v4, :cond_9

    iput-boolean v2, p0, Landroid/support/v4/app/t;->v:Z

    invoke-virtual {p0}, Landroid/support/v4/app/t;->d()V

    :cond_9
    return v1
.end method

.method f(Landroid/support/v4/app/l;)Landroid/os/Bundle;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/l;->i(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;

    :goto_0
    iget-object v1, p1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/t;->e(Landroid/support/v4/app/l;)V

    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/l;->f:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_2
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/l;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_3
    iget-boolean v1, p1, Landroid/support/v4/app/l;->M:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_4
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/l;->M:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method f()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/t;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/t;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    invoke-interface {v0}, Landroid/support/v4/app/s;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method g()Ljava/util/ArrayList;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/support/v4/app/l;->C:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/l;->D:Z

    iget-object v2, v0, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    iget v2, v2, Landroid/support/v4/app/l;->g:I

    :goto_1
    iput v2, v0, Landroid/support/v4/app/l;->k:I

    sget-boolean v2, Landroid/support/v4/app/t;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retainNonConfig: keeping retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method h()Landroid/os/Parcelable;
    .locals 11

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v4/app/t;->e()Z

    sget-boolean v0, Landroid/support/v4/app/t;->b:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/app/t;->s:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Landroid/support/v4/app/z;

    move v5, v4

    move v2, v4

    :goto_1
    if-ge v5, v6, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_11

    iget v2, v0, Landroid/support/v4/app/l;->g:I

    if-gez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/app/l;->g:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V

    :cond_3
    new-instance v2, Landroid/support/v4/app/z;

    invoke-direct {v2, v0}, Landroid/support/v4/app/z;-><init>(Landroid/support/v4/app/l;)V

    aput-object v2, v7, v5

    iget v8, v0, Landroid/support/v4/app/l;->b:I

    if-lez v8, :cond_8

    iget-object v8, v2, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    if-nez v8, :cond_8

    invoke-virtual {p0, v0}, Landroid/support/v4/app/t;->f(Landroid/support/v4/app/l;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    iget-object v8, v0, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    if-eqz v8, :cond_6

    iget-object v8, v0, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    iget v8, v8, Landroid/support/v4/app/l;->g:I

    if-gez v8, :cond_4

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V

    :cond_4
    iget-object v8, v2, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    if-nez v8, :cond_5

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    :cond_5
    iget-object v8, v2, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/l;->j:Landroid/support/v4/app/l;

    invoke-virtual {p0, v8, v9, v10}, Landroid/support/v4/app/t;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/l;)V

    iget v8, v0, Landroid/support/v4/app/l;->l:I

    if-eqz v8, :cond_6

    iget-object v8, v2, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/l;->l:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    :goto_2
    sget-boolean v8, Landroid/support/v4/app/t;->a:Z

    if-eqz v8, :cond_7

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v1

    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto/16 :goto_1

    :cond_8
    iget-object v8, v0, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    iput-object v8, v2, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    new-array v1, v5, [I

    move v2, v4

    :goto_4
    if-ge v2, v5, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    iget v0, v0, Landroid/support/v4/app/l;->g:I

    aput v0, v1, v2

    aget v0, v1, v2

    if-gez v0, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure saving state: active "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V

    :cond_b
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding fragment #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_d
    move-object v1, v3

    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_10

    new-array v3, v5, [Landroid/support/v4/app/j;

    move v2, v4

    :goto_5
    if-ge v2, v5, :cond_10

    new-instance v4, Landroid/support/v4/app/j;

    iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/d;

    invoke-direct {v4, p0, v0}, Landroid/support/v4/app/j;-><init>(Landroid/support/v4/app/t;Landroid/support/v4/app/d;)V

    aput-object v4, v3, v2

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_f

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_10
    new-instance v0, Landroid/support/v4/app/x;

    invoke-direct {v0}, Landroid/support/v4/app/x;-><init>()V

    iput-object v7, v0, Landroid/support/v4/app/x;->a:[Landroid/support/v4/app/z;

    iput-object v1, v0, Landroid/support/v4/app/x;->b:[I

    iput-object v3, v0, Landroid/support/v4/app/x;->c:[Landroid/support/v4/app/j;

    move-object v3, v0

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_3
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/t;->s:Z

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/t;->s:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(IZ)V

    return-void
.end method

.method public k()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/t;->s:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(IZ)V

    return-void
.end method

.method public l()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/t;->s:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(IZ)V

    return-void
.end method

.method public m()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/t;->s:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(IZ)V

    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(IZ)V

    return-void
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/t;->s:Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(IZ)V

    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class"

    invoke-interface {p3, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/w;->a:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez v0, :cond_10

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-static {v0, v6}, Landroid/support/v4/app/l;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v1

    :goto_2
    if-ne v1, v5, :cond_3

    if-ne v7, v5, :cond_3

    if-nez v8, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    if-eq v7, v5, :cond_7

    invoke-virtual {p0, v7}, Landroid/support/v4/app/t;->a(I)Landroid/support/v4/app/l;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {p0, v8}, Landroid/support/v4/app/t;->a(Ljava/lang/String;)Landroid/support/v4/app/l;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    if-eq v1, v5, :cond_5

    invoke-virtual {p0, v1}, Landroid/support/v4/app/t;->a(I)Landroid/support/v4/app/l;

    move-result-object v0

    :cond_5
    sget-boolean v4, Landroid/support/v4/app/t;->a:Z

    if-eqz v4, :cond_6

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateView: id=0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " fname="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " existing="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v0, :cond_9

    invoke-static {p2, v6}, Landroid/support/v4/app/l;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/l;

    move-result-object v4

    iput-boolean v2, v4, Landroid/support/v4/app/l;->p:Z

    if-eqz v7, :cond_8

    move v0, v7

    :goto_4
    iput v0, v4, Landroid/support/v4/app/l;->x:I

    iput v1, v4, Landroid/support/v4/app/l;->y:I

    iput-object v8, v4, Landroid/support/v4/app/l;->z:Ljava/lang/String;

    iput-boolean v2, v4, Landroid/support/v4/app/l;->q:Z

    iput-object p0, v4, Landroid/support/v4/app/l;->t:Landroid/support/v4/app/t;

    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget-object v1, v4, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {v4, v0, p3, v1}, Landroid/support/v4/app/l;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;Z)V

    move-object v1, v4

    :goto_5
    iget v0, p0, Landroid/support/v4/app/t;->n:I

    if-ge v0, v2, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/app/l;->p:Z

    if-eqz v0, :cond_c

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/l;IIIZ)V

    :goto_6
    iget-object v0, v1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v4

    goto/16 :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    iget-boolean v4, v0, Landroid/support/v4/app/l;->q:Z

    if-eqz v4, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-boolean v2, v0, Landroid/support/v4/app/l;->q:Z

    iget-boolean v1, v0, Landroid/support/v4/app/l;->D:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iget-object v4, v0, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p3, v4}, Landroid/support/v4/app/l;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_b
    move-object v1, v0

    goto/16 :goto_5

    :cond_c
    invoke-virtual {p0, v1}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/l;)V

    goto/16 :goto_6

    :cond_d
    if-eqz v7, :cond_e

    iget-object v0, v1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    :cond_e
    iget-object v0, v1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, v1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_f
    iget-object v0, v1, Landroid/support/v4/app/l;->J:Landroid/view/View;

    goto/16 :goto_0

    :cond_10
    move-object v6, v0

    goto/16 :goto_1
.end method

.method public p()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(IZ)V

    return-void
.end method

.method public q()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(IZ)V

    return-void
.end method

.method public r()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/t;->t:Z

    invoke-virtual {p0}, Landroid/support/v4/app/t;->e()Z

    invoke-virtual {p0, v2, v2}, Landroid/support/v4/app/t;->a(IZ)V

    iput-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    iput-object v1, p0, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;

    iput-object v1, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->C()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method t()Landroid/view/LayoutInflater$Factory;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/l;

    invoke-static {v1, v0}, Landroid/support/v4/c/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/o;

    invoke-static {v1, v0}, Landroid/support/v4/c/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
