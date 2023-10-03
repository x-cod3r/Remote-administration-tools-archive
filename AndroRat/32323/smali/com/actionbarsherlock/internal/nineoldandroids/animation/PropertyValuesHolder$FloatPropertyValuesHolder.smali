.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatPropertyValuesHolder"
.end annotation


# instance fields
.field mFloatAnimatedValue:F

.field mFloatKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatKeyframeSet;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatKeyframeSet;)V
    .locals 1
    .parameter "propertyName"
    .parameter "keyframeSet"

    .prologue
    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 884
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 885
    iput-object p2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/KeyframeSet;

    .line 886
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/KeyframeSet;

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatKeyframeSet;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatKeyframeSet;

    .line 887
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 900
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 901
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    .line 902
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatKeyframeSet;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    .line 921
    return-void
.end method

.method public clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .locals 2

    .prologue
    .line 930
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 931
    .local v0, newPVH:Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    iget-object v1, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/KeyframeSet;

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatKeyframeSet;

    iput-object v1, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatKeyframeSet;

    .line 932
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 956
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 959
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 962
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 963
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs setFloatValues([F)V
    .locals 1
    .parameter "values"

    .prologue
    .line 914
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 915
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/KeyframeSet;

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatKeyframeSet;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatKeyframeSet;

    .line 916
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 0
    .parameter "targetClass"

    .prologue
    .line 1002
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 1004
    return-void
.end method
