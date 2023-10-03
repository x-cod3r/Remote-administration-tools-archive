.class Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ConfigFileTagProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlcleaner/ConfigFileTagProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigParser"
.end annotation


# instance fields
.field private dependencyName:Ljava/lang/String;

.field private tagInfo:Lorg/htmlcleaner/TagInfo;

.field private tagInfoMap:Ljava/util/Map;

.field final synthetic this$0:Lorg/htmlcleaner/ConfigFileTagProvider;


# direct methods
.method constructor <init>(Lorg/htmlcleaner/ConfigFileTagProvider;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter "tagInfoMap"

    .prologue
    const/4 v0, 0x0

    .line 144
    iput-object p1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 140
    iput-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    .line 141
    iput-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfoMap:Ljava/util/Map;

    .line 146
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, value:Ljava/lang/String;
    const-string v1, "fatal-tags"

    iget-object v2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v1, v0}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    #getter for: Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z
    invoke-static {v1}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagInfo.defineFatalTags(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v0       #value:Ljava/lang/String;
    :cond_1
    const-string v1, "req-enclosing-tags"

    iget-object v2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v1, v0}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    #getter for: Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z
    invoke-static {v1}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagInfo.defineRequiredEnclosingTags(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    const-string v1, "forbidden-tags"

    iget-object v2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v1, v0}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    #getter for: Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z
    invoke-static {v1}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagInfo.defineForbiddenTags(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_3
    const-string v1, "allowed-children-tags"

    iget-object v2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    #getter for: Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z
    invoke-static {v1}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagInfo.defineAllowedChildrenTags(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_4
    const-string v1, "higher-level-tags"

    iget-object v2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v1, v0}, Lorg/htmlcleaner/TagInfo;->defineHigherLevelTags(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    #getter for: Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z
    invoke-static {v1}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagInfo.defineHigherLevelTags(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_5
    const-string v1, "close-before-copy-inside-tags"

    iget-object v2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    #getter for: Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z
    invoke-static {v1}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagInfo.defineCloseBeforeCopyInsideTags(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_6
    const-string v1, "close-inside-copy-after-tags"

    iget-object v2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    #getter for: Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z
    invoke-static {v1}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagInfo.defineCloseInsideCopyAfterTags(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_7
    const-string v1, "close-before-tags"

    iget-object v2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    #getter for: Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z
    invoke-static {v1}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagInfo.defineCloseBeforeTags(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 230
    const-string v0, "tag"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    #getter for: Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z
    invoke-static {v0}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.put(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v2}, Lorg/htmlcleaner/TagInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", tagInfo);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    :cond_0
    iput-object v3, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    const-string v0, "tags"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iput-object v3, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    goto :goto_0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v1, Lorg/htmlcleaner/ConfigFileTagProvider;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 150
    .local v0, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 151
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 14
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 201
    const-string v1, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 202
    const-string v1, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, name:Ljava/lang/String;
    const-string v1, "content"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, content:Ljava/lang/String;
    const-string v1, "section"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 205
    .local v12, section:Ljava/lang/String;
    const-string v1, "deprecated"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, deprecated:Ljava/lang/String;
    const-string v1, "unique"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, unique:Ljava/lang/String;
    const-string v1, "ignore-permitted"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 208
    .local v10, ignorePermitted:Ljava/lang/String;
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "all"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "all"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-eqz v9, :cond_5

    const-string v5, "true"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    if-eqz v13, :cond_6

    const-string v6, "true"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    :goto_3
    if-eqz v10, :cond_7

    const-string v7, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_4
    invoke-direct/range {v1 .. v7}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    iput-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    .line 214
    iget-object v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    #getter for: Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z
    invoke-static {v1}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v11, "tagInfo = new TagInfo(\"#1\", #2, #3, #4, #5, #6);"

    .line 216
    .local v11, s:Ljava/lang/String;
    const-string v1, "#1"

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 217
    const-string v3, "#2"

    const-string v1, "all"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "TagInfo.CONTENT_ALL"

    :goto_5
    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 218
    const-string v3, "#3"

    const-string v1, "all"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "TagInfo.HEAD_AND_BODY"

    :goto_6
    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 219
    const-string v3, "#4"

    if-eqz v9, :cond_c

    const-string v1, "true"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 220
    const-string v3, "#5"

    if-eqz v13, :cond_d

    const-string v1, "true"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 221
    const-string v3, "#6"

    if-eqz v10, :cond_e

    const-string v1, "true"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 222
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    .end local v2           #name:Ljava/lang/String;
    .end local v8           #content:Ljava/lang/String;
    .end local v9           #deprecated:Ljava/lang/String;
    .end local v10           #ignorePermitted:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/String;
    .end local v12           #section:Ljava/lang/String;
    .end local v13           #unique:Ljava/lang/String;
    :cond_0
    :goto_a
    return-void

    .line 208
    .restart local v2       #name:Ljava/lang/String;
    .restart local v8       #content:Ljava/lang/String;
    .restart local v9       #deprecated:Ljava/lang/String;
    .restart local v10       #ignorePermitted:Ljava/lang/String;
    .restart local v12       #section:Ljava/lang/String;
    .restart local v13       #unique:Ljava/lang/String;
    :cond_1
    const-string v3, "none"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_3
    const-string v4, "head"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 217
    .restart local v11       #s:Ljava/lang/String;
    :cond_8
    const-string v1, "none"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "TagInfo.CONTENT_NONE"

    goto/16 :goto_5

    :cond_9
    const-string v1, " TagInfo.CONTENT_TEXT"

    goto/16 :goto_5

    .line 218
    :cond_a
    const-string v1, "head"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "TagInfo.HEAD"

    goto/16 :goto_6

    :cond_b
    const-string v1, "TagInfo.BODY"

    goto/16 :goto_6

    .line 219
    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    .line 220
    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 221
    :cond_e
    const/4 v1, 0x0

    goto :goto_9

    .line 224
    .end local v2           #name:Ljava/lang/String;
    .end local v8           #content:Ljava/lang/String;
    .end local v9           #deprecated:Ljava/lang/String;
    .end local v10           #ignorePermitted:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/String;
    .end local v12           #section:Ljava/lang/String;
    .end local v13           #unique:Ljava/lang/String;
    :cond_f
    const-string v1, "tags"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    goto :goto_a
.end method
