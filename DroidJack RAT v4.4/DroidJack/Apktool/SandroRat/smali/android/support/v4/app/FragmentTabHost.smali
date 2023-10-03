.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:Landroid/content/Context;

.field private c:Landroid/support/v4/app/r;

.field private d:I

.field private e:Landroid/widget/TabHost$OnTabChangeListener;

.field private f:Landroid/support/v4/app/ae;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/support/v4/app/af;)Landroid/support/v4/app/af;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ae;

    invoke-static {v0}, Landroid/support/v4/app/ae;->b(Landroid/support/v4/app/ae;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab known for tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/ae;

    if-eq v0, v1, :cond_5

    if-nez p2, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/af;

    move-result-object p2

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/ae;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/ae;

    invoke-static {v0}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ae;)Landroid/support/v4/app/l;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/ae;

    invoke-static {v0}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ae;)Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/af;->a(Landroid/support/v4/app/l;)Landroid/support/v4/app/af;

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ae;)Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/ae;->c(Landroid/support/v4/app/ae;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/app/ae;->d(Landroid/support/v4/app/ae;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/support/v4/app/l;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ae;Landroid/support/v4/app/l;)Landroid/support/v4/app/l;

    iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->d:I

    invoke-static {v1}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ae;)Landroid/support/v4/app/l;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/app/ae;->b(Landroid/support/v4/app/ae;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v2, v3}, Landroid/support/v4/app/af;->a(ILandroid/support/v4/app/l;Ljava/lang/String;)Landroid/support/v4/app/af;

    :cond_4
    :goto_2
    iput-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/ae;

    :cond_5
    return-object p2

    :cond_6
    invoke-static {v1}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ae;)Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/af;->b(Landroid/support/v4/app/l;)Landroid/support/v4/app/af;

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f3

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/FragmentTabHost;->d:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ae;

    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/support/v4/app/r;

    invoke-static {v0}, Landroid/support/v4/app/ae;->b(Landroid/support/v4/app/ae;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/l;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ae;Landroid/support/v4/app/l;)Landroid/support/v4/app/l;

    invoke-static {v0}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ae;)Landroid/support/v4/app/l;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ae;)Landroid/support/v4/app/l;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/l;->f()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/support/v4/app/ae;->b(Landroid/support/v4/app/ae;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/ae;

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/af;

    move-result-object v1

    :cond_2
    invoke-static {v0}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ae;)Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/af;->a(Landroid/support/v4/app/l;)Landroid/support/v4/app/af;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Z

    invoke-direct {p0, v3, v1}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/af;)Landroid/support/v4/app/af;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/app/af;->a()I

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Z

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/support/v4/app/ac;

    invoke-virtual {p1}, Landroid/support/v4/app/ac;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Landroid/support/v4/app/ac;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/ac;

    invoke-direct {v1, v0}, Landroid/support/v4/app/ac;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/app/ac;->a:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/af;)Landroid/support/v4/app/af;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/af;->a()I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
