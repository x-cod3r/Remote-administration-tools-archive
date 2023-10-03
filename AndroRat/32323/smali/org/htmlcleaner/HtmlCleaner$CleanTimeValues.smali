.class Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;
.super Ljava/lang/Object;
.source "HtmlCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlcleaner/HtmlCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanTimeValues"
.end annotation


# instance fields
.field private _bodyOpened:Z

.field private _headOpened:Z

.field private _headTags:Ljava/util/Set;

.field private _openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;

.field private allTags:Ljava/util/Set;

.field private bodyNode:Lorg/htmlcleaner/TagNode;

.field private headNode:Lorg/htmlcleaner/TagNode;

.field private htmlNode:Lorg/htmlcleaner/TagNode;

.field private pruneNodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/htmlcleaner/TagNode;",
            ">;"
        }
    .end annotation
.end field

.field private pruneTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rootNode:Lorg/htmlcleaner/TagNode;

.field final synthetic this$0:Lorg/htmlcleaner/HtmlCleaner;


# direct methods
.method private constructor <init>(Lorg/htmlcleaner/HtmlCleaner;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 218
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->this$0:Lorg/htmlcleaner/HtmlCleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headOpened:Z

    .line 221
    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_bodyOpened:Z

    .line 222
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headTags:Ljava/util/Set;

    .line 223
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->allTags:Ljava/util/Set;

    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneTagSet:Ljava/util/Set;

    .line 231
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneNodeSet:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lorg/htmlcleaner/HtmlCleaner;Lorg/htmlcleaner/HtmlCleaner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;-><init>(Lorg/htmlcleaner/HtmlCleaner;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->headNode:Lorg/htmlcleaner/TagNode;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->headNode:Lorg/htmlcleaner/TagNode;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneNodeSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->pruneTagSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    return-object v0
.end method

.method static synthetic access$402(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$OpenTags;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_openTags:Lorg/htmlcleaner/HtmlCleaner$OpenTags;

    return-object p1
.end method

.method static synthetic access$600(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headOpened:Z

    return v0
.end method

.method static synthetic access$602(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headOpened:Z

    return p1
.end method

.method static synthetic access$700(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_bodyOpened:Z

    return v0
.end method

.method static synthetic access$702(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_bodyOpened:Z

    return p1
.end method

.method static synthetic access$800(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->_headTags:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$CleanTimeValues;->allTags:Ljava/util/Set;

    return-object v0
.end method
