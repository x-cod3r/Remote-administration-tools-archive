.class public Lorg/htmlcleaner/DoctypeToken;
.super Ljava/lang/Object;
.source "DoctypeToken.java"

# interfaces
.implements Lorg/htmlcleaner/BaseToken;


# instance fields
.field private part1:Ljava/lang/String;

.field private part2:Ljava/lang/String;

.field private part3:Ljava/lang/String;

.field private part4:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "part1"
    .parameter "part2"
    .parameter "part3"
    .parameter "part4"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    iput-object p1, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    .line 57
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_1
    iput-object p2, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p3}, Lorg/htmlcleaner/DoctypeToken;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part3:Ljava/lang/String;

    .line 59
    invoke-direct {p0, p4}, Lorg/htmlcleaner/DoctypeToken;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    const/16 v1, 0x20

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const/16 v0, 0x3e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 65
    const/16 v0, 0x3c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 66
    const/16 v0, 0x26

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 67
    const/16 v0, 0x27

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 68
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<!DOCTYPE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, ""

    return-object v0
.end method

.method public getPart1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    return-object v0
.end method

.method public getPart2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    return-object v0
.end method

.method public getPart3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part3:Ljava/lang/String;

    return-object v0
.end method

.method public getPart4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    const-string v1, "public"

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "system"

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :cond_2
    const-string v1, "system"

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :cond_3
    const-string v1, "public"

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V
    .locals 2
    .parameter "serializer"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
