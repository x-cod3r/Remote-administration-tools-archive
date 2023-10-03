.class public Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "NineHorizontalScrollView.java"


# instance fields
.field private final mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 12
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    .line 13
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F

    move-result v0

    .line 31
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getAlpha()F

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 35
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    if-eqz v0, :cond_0

    .line 18
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->clearAnimation()V

    .line 24
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 25
    return-void

    .line 20
    :cond_1
    if-nez p1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
