.class Lorg/htmlcleaner/Serializer$HeadlessTagNode;
.super Lorg/htmlcleaner/TagNode;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlcleaner/Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadlessTagNode"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/htmlcleaner/Serializer;


# direct methods
.method private constructor <init>(Lorg/htmlcleaner/Serializer;Lorg/htmlcleaner/TagNode;)V
    .locals 4
    .parameter
    .parameter "wrappedNode"

    .prologue
    .line 53
    iput-object p1, p0, Lorg/htmlcleaner/Serializer$HeadlessTagNode;->this$0:Lorg/htmlcleaner/Serializer;

    .line 54
    const-string v2, ""

    invoke-direct {p0, v2}, Lorg/htmlcleaner/TagNode;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 56
    invoke-virtual {p0}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;->setDocType(Lorg/htmlcleaner/DoctypeToken;)V

    .line 58
    invoke-virtual {p0}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object v0

    .line 59
    .local v0, nsDecls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object v1

    .line 61
    .local v1, wrappedNSDecls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    .end local v1           #wrappedNSDecls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/htmlcleaner/Serializer;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/Serializer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;-><init>(Lorg/htmlcleaner/Serializer;Lorg/htmlcleaner/TagNode;)V

    return-void
.end method
