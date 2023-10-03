.class public Lorg/htmlcleaner/TagTransformation;
.super Ljava/lang/Object;
.source "TagTransformation.java"


# instance fields
.field private attributeTransformations:Ljava/util/Map;

.field private destTag:Ljava/lang/String;

.field private preserveSourceAttributes:Z

.field private sourceTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "sourceTag"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/TagTransformation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceTag"
    .parameter "destTag"

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/htmlcleaner/TagTransformation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "sourceTag"
    .parameter "destTag"
    .parameter "preserveSourceAttributes"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/TagTransformation;->sourceTag:Ljava/lang/String;

    .line 62
    if-nez p2, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlcleaner/TagTransformation;->destTag:Ljava/lang/String;

    .line 67
    .end local p1
    :goto_0
    iput-boolean p3, p0, Lorg/htmlcleaner/TagTransformation;->preserveSourceAttributes:Z

    .line 68
    return-void

    .line 65
    .restart local p1
    :cond_0
    invoke-static {p2}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_1
    iput-object p1, p0, Lorg/htmlcleaner/TagTransformation;->destTag:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addAttributeTransformation(Ljava/lang/String;)V
    .locals 1
    .parameter "targetAttName"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/TagTransformation;->addAttributeTransformation(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public addAttributeTransformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "targetAttName"
    .parameter "transformationDesc"

    .prologue
    .line 99
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributeTransformations:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributeTransformations:Ljava/util/Map;

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributeTransformations:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method getAttributeTransformations()Ljava/util/Map;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributeTransformations:Ljava/util/Map;

    return-object v0
.end method

.method getDestTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->destTag:Ljava/lang/String;

    return-object v0
.end method

.method getSourceTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->sourceTag:Ljava/lang/String;

    return-object v0
.end method

.method hasAttributeTransformations()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributeTransformations:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPreserveSourceAttributes()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/htmlcleaner/TagTransformation;->preserveSourceAttributes:Z

    return v0
.end method
