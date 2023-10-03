.class Lorg/htmlcleaner/HtmlCleaner$1;
.super Lorg/htmlcleaner/HtmlTokenizer;
.source "HtmlCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/htmlcleaner/HtmlCleaner;

.field final synthetic val$cleanTimeValues:Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;


# direct methods
.method constructor <init>(Lorg/htmlcleaner/HtmlCleaner;Ljava/io/Reader;Lorg/htmlcleaner/CleanerProperties;Lorg/htmlcleaner/CleanerTransformations;Lorg/htmlcleaner/ITagInfoProvider;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner$1;->this$0:Lorg/htmlcleaner/HtmlCleaner;

    iput-object p6, p0, Lorg/htmlcleaner/HtmlCleaner$1;->val$cleanTimeValues:Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/htmlcleaner/HtmlTokenizer;-><init>(Ljava/io/Reader;Lorg/htmlcleaner/CleanerProperties;Lorg/htmlcleaner/CleanerTransformations;Lorg/htmlcleaner/ITagInfoProvider;)V

    return-void
.end method


# virtual methods
.method createTagNode(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    .locals 2
    .parameter "name"

    .prologue
    .line 361
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$1;->this$0:Lorg/htmlcleaner/HtmlCleaner;

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleaner$1;->val$cleanTimeValues:Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;

    #calls: Lorg/htmlcleaner/HtmlCleaner;->createTagNode(Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;
    invoke-static {v0, p1, v1}, Lorg/htmlcleaner/HtmlCleaner;->access$1400(Lorg/htmlcleaner/HtmlCleaner;Ljava/lang/String;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    return-object v0
.end method

.method makeTree(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, tokenList:Ljava/util/List;,"Ljava/util/List<Lorg/htmlcleaner/BaseToken;>;"
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$1;->this$0:Lorg/htmlcleaner/HtmlCleaner;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleaner$1;->val$cleanTimeValues:Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;

    invoke-virtual {v0, p1, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->makeTree(Ljava/util/List;Ljava/util/ListIterator;Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)V

    .line 357
    return-void
.end method
