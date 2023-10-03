.class public Lorg/htmlcleaner/ConfigFileTagProvider;
.super Ljava/util/HashMap;
.source "ConfigFileTagProvider.java"

# interfaces
.implements Lorg/htmlcleaner/ITagInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;
    }
.end annotation


# static fields
.field static parserFactory:Ljavax/xml/parsers/SAXParserFactory;


# instance fields
.field private generateCode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/ConfigFileTagProvider;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 61
    sget-object v0, Lorg/htmlcleaner/ConfigFileTagProvider;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 62
    sget-object v0, Lorg/htmlcleaner/ConfigFileTagProvider;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    .line 82
    :try_start_0
    new-instance v1, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;

    invoke-direct {v1, p0, p0}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;-><init>(Lorg/htmlcleaner/ConfigFileTagProvider;Ljava/util/Map;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lorg/htmlcleaner/HtmlCleanerException;

    const-string v2, "Error parsing tag configuration file!"

    invoke-direct {v1, v2, v0}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 67
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, content:Ljava/lang/Object;
    instance-of v3, v0, Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 92
    new-instance v2, Ljava/io/InputStreamReader;

    check-cast v0, Ljava/io/InputStream;

    .end local v0           #content:Ljava/lang/Object;
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v2, reader:Ljava/io/InputStreamReader;
    new-instance v3, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;

    invoke-direct {v3, p0, p0}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;-><init>(Lorg/htmlcleaner/ConfigFileTagProvider;Ljava/util/Map;)V

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v4}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2           #reader:Ljava/io/InputStreamReader;
    :cond_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lorg/htmlcleaner/HtmlCleanerException;

    const-string v4, "Error parsing tag configuration file!"

    invoke-direct {v3, v4, v1}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 3
    .parameter "inputSource"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    .line 74
    :try_start_0
    new-instance v1, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;

    invoke-direct {v1, p0, p0}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;-><init>(Lorg/htmlcleaner/ConfigFileTagProvider;Ljava/util/Map;)V

    invoke-virtual {v1, p1}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lorg/htmlcleaner/HtmlCleanerException;

    const-string v2, "Error parsing tag configuration file!"

    invoke-direct {v1, v2, v0}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v4, Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-direct {v4}, Lorg/htmlcleaner/ConfigFileTagProvider;-><init>()V

    .line 118
    .local v4, provider:Lorg/htmlcleaner/ConfigFileTagProvider;
    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    .line 120
    new-instance v1, Ljava/io/File;

    const-string v5, "default.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, configFile:Ljava/io/File;
    const-string v2, "org.htmlcleaner"

    .line 122
    .local v2, packagePath:Ljava/lang/String;
    const-string v0, "DefaultTagProvider"

    .line 124
    .local v0, className:Ljava/lang/String;
    new-instance v3, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v4}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;-><init>(Lorg/htmlcleaner/ConfigFileTagProvider;Ljava/util/Map;)V

    .line 125
    .local v3, parser:Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "import java.util.HashMap;"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "public class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " extends HashMap implements ITagInfoProvider {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "public "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "() {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "TagInfo tagInfo;"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v5}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 131
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    return-void
.end method


# virtual methods
.method public getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/ConfigFileTagProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/TagInfo;

    return-object v0
.end method
