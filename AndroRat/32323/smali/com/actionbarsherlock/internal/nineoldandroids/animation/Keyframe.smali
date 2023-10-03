.class public abstract Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;,
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;,
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$ObjectKeyframe;
    }
.end annotation


# instance fields
.field mFraction:F

.field mHasValue:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mValueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;->mHasValue:Z

    .line 39
    return-void
.end method

.method public static ofFloat(F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
    .locals 1
    .parameter "fraction"

    .prologue
    .line 125
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofFloat(FF)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
    .locals 1
    .parameter "fraction"
    .parameter "value"

    .prologue
    .line 109
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    return-object v0
.end method

.method public static ofInt(F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
    .locals 1
    .parameter "fraction"

    .prologue
    .line 93
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofInt(FI)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
    .locals 1
    .parameter "fraction"
    .parameter "value"

    .prologue
    .line 77
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V

    return-object v0
.end method

.method public static ofObject(F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
    .locals 2
    .parameter "fraction"

    .prologue
    .line 157
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static ofObject(FLjava/lang/Object;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
    .locals 1
    .parameter "fraction"
    .parameter "value"

    .prologue
    .line 141
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method public getFraction()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;->mFraction:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;->mHasValue:Z

    return v0
.end method

.method public setFraction(F)V
    .locals 0
    .parameter "fraction"

    .prologue
    .line 202
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;->mFraction:F

    .line 203
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 223
    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;)V
.end method
