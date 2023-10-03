.class public final Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

.field public weight:F


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .parameter
    .parameter "resolveInfo"

    .prologue
    .line 840
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iput-object p2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 842
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 868
    iget v0, p1, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->compareTo(Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 851
    if-ne p0, p1, :cond_1

    .line 864
    :cond_0
    :goto_0
    return v1

    .line 854
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 855
    goto :goto_0

    .line 857
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 858
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 860
    check-cast v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 861
    .local v0, other:Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;
    iget v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 862
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 874
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    const-string v1, "resolveInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 877
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
