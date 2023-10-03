.class public Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NineLinearLayout.java"


# instance fields
.field private final mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    .line 15
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    goto :goto_0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getTranslationX()F

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 37
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0
.end method

.method public setTranslationX(F)V
    .locals 1
    .parameter "translationX"

    .prologue
    .line 51
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    if-eqz v0, :cond_0

    .line 20
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->clearAnimation()V

    .line 26
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    return-void

    .line 22
    :cond_1
    if-nez p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
