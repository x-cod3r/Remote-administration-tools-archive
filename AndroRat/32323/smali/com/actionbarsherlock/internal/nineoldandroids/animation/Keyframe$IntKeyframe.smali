.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntKeyframe"
.end annotation


# instance fields
.field mValue:I


# direct methods
.method constructor <init>(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;-><init>()V

    .line 291
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 292
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    .line 293
    return-void
.end method

.method constructor <init>(FI)V
    .locals 1
    .parameter "fraction"
    .parameter "value"

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;-><init>()V

    .line 284
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 285
    iput p2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    .line 286
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mHasValue:Z

    .line 288
    return-void
.end method


# virtual methods
.method public clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;
    .locals 3

    .prologue
    .line 312
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-direct {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V

    .line 313
    .local v0, kfClone:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 314
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 305
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;->mHasValue:Z

    .line 308
    :cond_0
    return-void
.end method
