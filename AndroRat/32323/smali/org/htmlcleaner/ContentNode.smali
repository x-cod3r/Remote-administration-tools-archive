.class public Lorg/htmlcleaner/ContentNode;
.super Ljava/lang/Object;
.source "ContentNode.java"

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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlcleaner/ContentNode;->content:Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method

.method constructor <init>([CI)V
    .locals 2
    .parameter "content"
    .parameter "len"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/htmlcleaner/ContentNode;->content:Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, p0, Lorg/htmlcleaner/ContentNode;->content:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 57
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/htmlcleaner/ContentNode;->content:Ljava/lang/StringBuilder;

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
    .line 68
    iget-object v0, p0, Lorg/htmlcleaner/ContentNode;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/htmlcleaner/ContentNode;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
