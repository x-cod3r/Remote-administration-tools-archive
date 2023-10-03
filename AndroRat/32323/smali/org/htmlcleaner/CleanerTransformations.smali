.class public Lorg/htmlcleaner/CleanerTransformations;
.super Ljava/lang/Object;
.source "CleanerTransformations.java"


# instance fields
.field private mappings:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->mappings:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addTransformation(Lorg/htmlcleaner/TagTransformation;)V
    .locals 2
    .parameter "tagTransformation"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->mappings:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagTransformation;->getSourceTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-void
.end method

.method public getTransformation(Ljava/lang/String;)Lorg/htmlcleaner/TagTransformation;
    .locals 2
    .parameter "tagName"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->mappings:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/TagTransformation;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransformationForTag(Ljava/lang/String;)Z
    .locals 2
    .parameter "tagName"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->mappings:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
