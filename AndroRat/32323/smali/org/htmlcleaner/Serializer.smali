.class public abstract Lorg/htmlcleaner/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/htmlcleaner/Serializer$1;,
        Lorg/htmlcleaner/Serializer$HeadlessTagNode;
    }
.end annotation


# instance fields
.field protected props:Lorg/htmlcleaner/CleanerProperties;


# direct methods
.method protected constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0
    .parameter "props"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 73
    return-void
.end method


# virtual methods
.method public getAsString(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;
    .locals 1
    .parameter "tagNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tagNode"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "tagNode"
    .parameter "charset"
    .parameter "omitEnvelope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 176
    .local v0, writer:Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/htmlcleaner/Serializer;->write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 177
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAsString(Lorg/htmlcleaner/TagNode;Z)Ljava/lang/String;
    .locals 1
    .parameter "tagNode"
    .parameter "omitEnvelope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isScriptOrStyle(Lorg/htmlcleaner/TagNode;)Z
    .locals 2
    .parameter "tagNode"

    .prologue
    .line 257
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, tagName:Ljava/lang/String;
    const-string v1, "script"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "tagNode"
    .parameter "writer"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/htmlcleaner/Serializer;->write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 218
    return-void
.end method

.method public write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 6
    .parameter "tagNode"
    .parameter "writer"
    .parameter "charset"
    .parameter "omitEnvelope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    if-eqz p4, :cond_0

    .line 230
    new-instance v2, Lorg/htmlcleaner/Serializer$HeadlessTagNode;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;-><init>(Lorg/htmlcleaner/Serializer;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/Serializer$1;)V

    .end local p1
    .local v2, tagNode:Lorg/htmlcleaner/TagNode;
    move-object p1, v2

    .line 232
    .end local v2           #tagNode:Lorg/htmlcleaner/TagNode;
    .restart local p1
    :cond_0
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 233
    .end local p2
    .local v3, writer:Ljava/io/Writer;
    iget-object v4, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v4}, Lorg/htmlcleaner/CleanerProperties;->isOmitXmlDeclaration()Z

    move-result v4

    if-nez v4, :cond_2

    .line 234
    const-string v0, "<?xml version=\"1.0\""

    .line 235
    .local v0, declaration:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " encoding=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 242
    .end local v0           #declaration:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v4}, Lorg/htmlcleaner/CleanerProperties;->isOmitDoctypeDeclaration()Z

    move-result v4

    if-nez v4, :cond_3

    .line 243
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v1

    .line 244
    .local v1, doctypeToken:Lorg/htmlcleaner/DoctypeToken;
    if-eqz v1, :cond_3

    .line 245
    invoke-virtual {v1, p0, v3}, Lorg/htmlcleaner/DoctypeToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    .line 249
    .end local v1           #doctypeToken:Lorg/htmlcleaner/DoctypeToken;
    :cond_3
    invoke-virtual {p0, p1, v3}, Lorg/htmlcleaner/Serializer;->serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V

    .line 251
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 252
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 253
    return-void
.end method

.method public writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V
    .locals 1
    .parameter "tagNode"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/Serializer;->writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Z)V

    .line 165
    return-void
.end method

.method public writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tagNode"
    .parameter "fileName"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/htmlcleaner/Serializer;->writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method public writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "tagNode"
    .parameter "fileName"
    .parameter "charset"
    .parameter "omitEnvelope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 132
    return-void
.end method

.method public writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Z)V
    .locals 1
    .parameter "tagNode"
    .parameter "fileName"
    .parameter "omitEnvelope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/htmlcleaner/Serializer;->writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method public writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "tagNode"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Z)V

    .line 119
    return-void
.end method

.method public writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "tagNode"
    .parameter "out"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 1
    .parameter "tagNode"
    .parameter "out"
    .parameter "charset"
    .parameter "omitEnvelope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/htmlcleaner/Serializer;->write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Z)V
    .locals 1
    .parameter "tagNode"
    .parameter "out"
    .parameter "omitEnvelope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lorg/htmlcleaner/HtmlCleaner;->DEFAULT_CHARSET:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 109
    return-void
.end method
