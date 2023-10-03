.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatKeyframe"
.end annotation


# instance fields
.field mValue:F


# direct methods
.method constructor <init>(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;-><init>()V

    .line 335
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mFraction:F

    .line 336
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    .line 337
    return-void
.end method

.method constructor <init>(FF)V
    .locals 1
    .parameter "fraction"
    .parameter "value"

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;-><init>()V

    .line 328
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mFraction:F

    .line 329
    iput p2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 330
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    .line 332
    return-void
.end method


# virtual methods
.method public clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;
    .locals 3

    .prologue
    .line 356
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-direct {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    .line 357
    .local v0, kfClone:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 358
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 348
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    .line 349
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    .line 352
    :cond_0
    return-void
.end method
