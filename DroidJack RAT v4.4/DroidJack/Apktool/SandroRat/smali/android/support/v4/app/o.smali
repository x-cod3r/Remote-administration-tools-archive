.class public Landroid/support/v4/app/o;
.super Landroid/app/Activity;


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/t;

.field final c:Landroid/support/v4/app/q;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Landroid/support/v4/c/l;

.field m:Landroid/support/v4/app/ap;


# direct methods
.method private static a(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    const/16 v3, 0x56

    const/16 v1, 0x46

    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v2, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x45

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x48

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x43

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4c

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x53

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x50

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const-string v0, " #"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/high16 v0, -0x1000000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_1

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_b
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_1
    const/16 v0, 0x49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0x44

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_6

    :cond_8
    move v0, v2

    goto/16 :goto_7

    :cond_9
    move v1, v2

    goto/16 :goto_8

    :cond_a
    move v0, v2

    goto/16 :goto_9

    :sswitch_3
    :try_start_1
    const-string v0, "app"

    goto :goto_a

    :sswitch_4
    const-string v0, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_b

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p3, :cond_1

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p3}, Landroid/support/v4/app/o;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Landroid/support/v4/app/o;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/c/l;

    invoke-direct {v0}, Landroid/support/v4/c/l;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ap;

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Landroid/support/v4/app/ap;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/ap;-><init>(Ljava/lang/String;Landroid/support/v4/app/o;Z)V

    iget-object v1, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/c/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/ap;->a(Landroid/support/v4/app/o;)V

    goto :goto_0
.end method

.method public a()V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/l;)V
    .locals 0

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ap;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/ap;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->h()V

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/o;->g:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/app/o;->g:Z

    iput-boolean p1, p0, Landroid/support/v4/app/o;->h:Z

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/o;->e()V

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->m()V

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/app/c;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/o;->i:Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/o;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/o;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/o;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/o;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/o;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/ap;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/t;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/o;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void
.end method

.method e()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/o;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/o;->k:Z

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/o;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->c()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->p()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->d()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->i()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    if-nez v0, :cond_2

    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/l;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/o;->a()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    iget-object v2, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/q;

    invoke-virtual {v0, p0, v2, v1}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/o;Landroid/support/v4/app/q;Landroid/support/v4/app/l;)V

    invoke-virtual {p0}, Landroid/support/v4/app/o;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/o;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v4/app/o;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/p;

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/p;->e:Landroid/support/v4/c/l;

    iput-object v2, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    :cond_1
    if-eqz p1, :cond_2

    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/support/v4/app/t;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->j()V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    if-nez p1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {p0}, Landroid/support/v4/app/o;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/t;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/t;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->a(Z)V

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->r()V

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->h()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/o;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->s()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/t;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/t;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->i()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/t;->b(Landroid/view/Menu;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/o;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/o;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->n()V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/o;->b()V

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->e()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/o;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/o;->i:Z

    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/o;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/o;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/t;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/o;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->e()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/o;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/app/o;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/o;->c()Ljava/lang/Object;

    move-result-object v5

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->g()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    invoke-virtual {v0}, Landroid/support/v4/c/l;->size()I

    move-result v7

    new-array v8, v7, [Landroid/support/v4/app/ap;

    add-int/lit8 v0, v7, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    invoke-virtual {v0, v4}, Landroid/support/v4/c/l;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ap;

    aput-object v0, v8, v4

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-ge v3, v7, :cond_4

    aget-object v4, v8, v3

    iget-boolean v9, v4, Landroid/support/v4/app/ap;->g:Z

    if-eqz v9, :cond_2

    move v0, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/support/v4/app/ap;->h()V

    iget-object v9, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    iget-object v4, v4, Landroid/support/v4/app/ap;->d:Ljava/lang/String;

    invoke-virtual {v9, v4}, Landroid/support/v4/c/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move v0, v3

    :cond_4
    if-nez v6, :cond_5

    if-nez v0, :cond_5

    if-nez v5, :cond_5

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_5
    new-instance v0, Landroid/support/v4/app/p;

    invoke-direct {v0}, Landroid/support/v4/app/p;-><init>()V

    iput-object v2, v0, Landroid/support/v4/app/p;->a:Ljava/lang/Object;

    iput-object v5, v0, Landroid/support/v4/app/p;->b:Ljava/lang/Object;

    iput-object v2, v0, Landroid/support/v4/app/p;->c:Landroid/support/v4/c/l;

    iput-object v6, v0, Landroid/support/v4/app/p;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    iput-object v1, v0, Landroid/support/v4/app/p;->e:Landroid/support/v4/c/l;

    goto :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->h()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iput-boolean v1, p0, Landroid/support/v4/app/o;->f:Z

    iput-boolean v1, p0, Landroid/support/v4/app/o;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v4/app/o;->d:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/support/v4/app/o;->d:Z

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->k()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->i()V

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->e()Z

    iget-boolean v0, p0, Landroid/support/v4/app/o;->k:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Landroid/support/v4/app/o;->k:Z

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->b()V

    :cond_1
    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/app/o;->j:Z

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->l()V

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    invoke-virtual {v0}, Landroid/support/v4/c/l;->size()I

    move-result v3

    new-array v4, v3, [Landroid/support/v4/app/ap;

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Landroid/support/v4/c/l;

    invoke-virtual {v0, v2}, Landroid/support/v4/c/l;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ap;

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/o;->j:Z

    if-nez v0, :cond_1

    const-string v0, "(root)"

    iget-boolean v2, p0, Landroid/support/v4/app/o;->k:Z

    invoke-virtual {p0, v0, v2, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    iget-boolean v0, v0, Landroid/support/v4/app/ap;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->b()V

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_5

    aget-object v1, v4, v0

    invoke-virtual {v1}, Landroid/support/v4/app/ap;->e()V

    invoke-virtual {v1}, Landroid/support/v4/app/ap;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected onStop()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iput-boolean v1, p0, Landroid/support/v4/app/o;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->o()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
