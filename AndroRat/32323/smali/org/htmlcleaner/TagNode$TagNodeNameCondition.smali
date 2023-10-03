.class public Lorg/htmlcleaner/TagNode$TagNodeNameCondition;
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
    name = "TagNodeNameCondition"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lorg/htmlcleaner/TagNode;


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/htmlcleaner/TagNode$TagNodeNameCondition;->this$0:Lorg/htmlcleaner/TagNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lorg/htmlcleaner/TagNode$TagNodeNameCondition;->name:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public satisfy(Lorg/htmlcleaner/TagNode;)Z
    .locals 2
    .parameter "tagNode"

    .prologue
    .line 80
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lorg/htmlcleaner/TagNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/htmlcleaner/TagNode$TagNodeNameCondition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
