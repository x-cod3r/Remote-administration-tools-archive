.class public Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;
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
    name = "TagNodeAttValueCondition"
.end annotation


# instance fields
.field private attName:Ljava/lang/String;

.field private attValue:Ljava/lang/String;

.field private isCaseSensitive:Z

.field final synthetic this$0:Lorg/htmlcleaner/TagNode;


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "attName"
    .parameter "attValue"
    .parameter "isCaseSensitive"

    .prologue
    .line 107
    iput-object p1, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->this$0:Lorg/htmlcleaner/TagNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->attName:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->attValue:Ljava/lang/String;

    .line 110
    iput-boolean p4, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->isCaseSensitive:Z

    .line 111
    return-void
.end method


# virtual methods
.method public satisfy(Lorg/htmlcleaner/TagNode;)Z
    .locals 2
    .parameter "tagNode"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->attName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->attValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->isCaseSensitive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->attValue:Ljava/lang/String;

    iget-object v1, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->attName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->attValue:Ljava/lang/String;

    iget-object v1, p0, Lorg/htmlcleaner/TagNode$TagNodeAttValueCondition;->attName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
