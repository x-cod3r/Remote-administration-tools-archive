.class Lorg/htmlcleaner/HtmlCleaner$TagPos;
.super Ljava/lang/Object;
.source "HtmlCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlcleaner/HtmlCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagPos"
.end annotation


# instance fields
.field private info:Lorg/htmlcleaner/TagInfo;

.field private name:Ljava/lang/String;

.field private position:I

.field final synthetic this$0:Lorg/htmlcleaner/HtmlCleaner;


# direct methods
.method constructor <init>(Lorg/htmlcleaner/HtmlCleaner;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "position"
    .parameter "name"

    .prologue
    .line 102
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner$TagPos;->this$0:Lorg/htmlcleaner/HtmlCleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p2, p0, Lorg/htmlcleaner/HtmlCleaner$TagPos;->position:I

    .line 104
    iput-object p3, p0, Lorg/htmlcleaner/HtmlCleaner$TagPos;->name:Ljava/lang/String;

    .line 105
    #getter for: Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;
    invoke-static {p1}, Lorg/htmlcleaner/HtmlCleaner;->access$000(Lorg/htmlcleaner/HtmlCleaner;)Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$TagPos;->info:Lorg/htmlcleaner/TagInfo;

    .line 106
    return-void
.end method

.method static synthetic access$100(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$TagPos;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/htmlcleaner/HtmlCleaner$TagPos;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lorg/htmlcleaner/HtmlCleaner$TagPos;->position:I

    return v0
.end method

.method static synthetic access$200(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Lorg/htmlcleaner/TagInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$TagPos;->info:Lorg/htmlcleaner/TagInfo;

    return-object v0
.end method
