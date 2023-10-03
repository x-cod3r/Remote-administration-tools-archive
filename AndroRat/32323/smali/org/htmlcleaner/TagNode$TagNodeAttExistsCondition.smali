.class public Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;
.super Ljava/lang/Object;
.source "TagNode.java"

# interfaces
.implements Lorg/htmlcleaner/TagNode$ITagNodeCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlcleaner/TagNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagNodeAttExistsCondition"
.end annotation


# instance fields
.field private attName:Ljava/lang/String;

.field final synthetic this$0:Lorg/htmlcleaner/TagNode;


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "attName"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;->this$0:Lorg/htmlcleaner/TagNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;->attName:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public satisfy(Lorg/htmlcleaner/TagNode;)Z
    .locals 2
    .parameter "tagNode"

    .prologue
    .line 95
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    #getter for: Lorg/htmlcleaner/TagNode;->attributes:Ljava/util/Map;
    invoke-static {p1}, Lorg/htmlcleaner/TagNode;->access$000(Lorg/htmlcleaner/TagNode;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/htmlcleaner/TagNode$TagNodeAttExistsCondition;->attName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
