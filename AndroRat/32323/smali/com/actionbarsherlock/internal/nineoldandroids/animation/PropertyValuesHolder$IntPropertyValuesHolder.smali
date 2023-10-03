.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyValuesHolder"
.end annotation


# instance fields
.field mIntAnimatedValue:I

.field mIntKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntKeyframeSet;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntKeyframeSet;)V
    .locals 1
    .parameter "propertyName"
    .parameter "keyframeSet"

    .prologue
    .line 747
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 748
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 749
    iput-object p2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/KeyframeSet;

    .line 750
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/KeyframeSet;

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntKeyframeSet;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntKeyframeSet;

    .line 751
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 765
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 766
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntKeyframeSet;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntKeyframeSet;->getIntValue(F)I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    .line 785
    return-void
.end method

.method public clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    .locals 2

    .prologue
    .line 794
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 795
    .local v0, newPVH:Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    iget-object v1, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/KeyframeSet;

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntKeyframeSet;

    iput-object v1, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntKeyframeSet;

    .line 796
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 820
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 822
    :try_start_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 823
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 826
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .parameter "values"

    .prologue
    .line 778
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 779
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/KeyframeSet;

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntKeyframeSet;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntKeyframeSet;

    .line 780
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 0
    .parameter "targetClass"

    .prologue
    .line 866
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 868
    return-void
.end method
