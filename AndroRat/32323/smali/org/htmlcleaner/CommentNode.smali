.class public Lorg/htmlcleaner/CommentNode;
.super Ljava/lang/Object;
.source "CommentNode.java"

# interfaces
.implements Lorg/htmlcleaner/BaseToken;
.implements Lorg/htmlcleaner/HtmlNode;


# instance fields
.field private content:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlcleaner/CommentNode;->content:Ljava/lang/StringBuilder;

    .line 54
    return-void
.end method


# virtual methods
.method public getCommentedContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/htmlcleaner/CommentNode;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/htmlcleaner/CommentNode;->content:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V
    .locals 1
    .parameter "serializer"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
