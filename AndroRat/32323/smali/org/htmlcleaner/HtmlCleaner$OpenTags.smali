.class Lorg/htmlcleaner/HtmlCleaner$OpenTags;
.super Ljava/lang/Object;
.source "HtmlCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlcleaner/HtmlCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenTags"
.end annotation


# instance fields
.field private last:Lorg/htmlcleaner/HtmlCleaner$TagPos;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/htmlcleaner/HtmlCleaner$TagPos;",
            ">;"
        }
    .end annotation
.end field

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/htmlcleaner/HtmlCleaner;


# direct methods
.method private constructor <init>(Lorg/htmlcleaner/HtmlCleaner;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->this$0:Lorg/htmlcleaner/HtmlCleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->last:Lorg/htmlcleaner/HtmlCleaner$TagPos;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->set:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lorg/htmlcleaner/HtmlCleaner;Lorg/htmlcleaner/HtmlCleaner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;-><init>(Lorg/htmlcleaner/HtmlCleaner;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->tagExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;)Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->findTag(Ljava/lang/String;)Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->getLastTagPos()Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->findTagToPlaceRubbish()Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/util/Set;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->someAlreadyOpen(Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->tagEncountered(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->addTag(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2700(Lorg/htmlcleaner/HtmlCleaner$OpenTags;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->removeTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/htmlcleaner/HtmlCleaner$OpenTags;)Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->findFirstTagPos()Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v0

    return-object v0
.end method

.method private addTag(Ljava/lang/String;I)V
    .locals 2
    .parameter "tagName"
    .parameter "position"

    .prologue
    .line 123
    new-instance v0, Lorg/htmlcleaner/HtmlCleaner$TagPos;

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->this$0:Lorg/htmlcleaner/HtmlCleaner;

    invoke-direct {v0, v1, p2, p1}, Lorg/htmlcleaner/HtmlCleaner$TagPos;-><init>(Lorg/htmlcleaner/HtmlCleaner;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->last:Lorg/htmlcleaner/HtmlCleaner$TagPos;

    .line 124
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->last:Lorg/htmlcleaner/HtmlCleaner$TagPos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method private findFirstTagPos()Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/HtmlCleaner$TagPos;

    goto :goto_0
.end method

.method private findTag(Ljava/lang/String;)Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .locals 7
    .parameter "tagName"

    .prologue
    const/4 v4, 0x0

    .line 150
    if-eqz p1, :cond_2

    .line 151
    iget-object v5, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    iget-object v6, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 152
    .local v3, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    const/4 v2, 0x0

    .line 153
    .local v2, fatalTag:Ljava/lang/String;
    iget-object v5, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->this$0:Lorg/htmlcleaner/HtmlCleaner;

    #getter for: Lorg/htmlcleaner/HtmlCleaner;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;
    invoke-static {v5}, Lorg/htmlcleaner/HtmlCleaner;->access$000(Lorg/htmlcleaner/HtmlCleaner;)Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v1

    .line 154
    .local v1, fatalInfo:Lorg/htmlcleaner/TagInfo;
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->getFatalTag()Ljava/lang/String;

    move-result-object v2

    .line 158
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/HtmlCleaner$TagPos;

    .line 160
    .local v0, currTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->name:Ljava/lang/String;
    invoke-static {v0}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$100(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    .end local v0           #currTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .end local v1           #fatalInfo:Lorg/htmlcleaner/TagInfo;
    .end local v2           #fatalTag:Ljava/lang/String;
    .end local v3           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    :goto_0
    return-object v0

    .line 162
    .restart local v0       #currTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .restart local v1       #fatalInfo:Lorg/htmlcleaner/TagInfo;
    .restart local v2       #fatalTag:Ljava/lang/String;
    .restart local v3       #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    :cond_1
    if-eqz v2, :cond_0

    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->name:Ljava/lang/String;
    invoke-static {v0}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$100(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 164
    goto :goto_0

    .end local v0           #currTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .end local v1           #fatalInfo:Lorg/htmlcleaner/TagInfo;
    .end local v2           #fatalTag:Ljava/lang/String;
    .end local v3           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    :cond_2
    move-object v0, v4

    .line 169
    goto :goto_0
.end method

.method private findTagToPlaceRubbish()Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .locals 5

    .prologue
    .line 178
    const/4 v2, 0x0

    .local v2, result:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    const/4 v1, 0x0

    .line 180
    .local v1, prev:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 181
    iget-object v3, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    iget-object v4, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 182
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    check-cast v2, Lorg/htmlcleaner/HtmlCleaner$TagPos;

    .line 184
    .restart local v2       #result:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->info:Lorg/htmlcleaner/TagInfo;
    invoke-static {v2}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$200(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Lorg/htmlcleaner/TagInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->info:Lorg/htmlcleaner/TagInfo;
    invoke-static {v2}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$200(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Lorg/htmlcleaner/TagInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlcleaner/TagInfo;->allowsAnything()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    :cond_0
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 193
    .end local v0           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    :goto_1
    return-object v3

    .line 189
    .restart local v0       #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    :cond_1
    move-object v1, v2

    goto :goto_0

    .end local v0           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    :cond_2
    move-object v3, v2

    .line 193
    goto :goto_1
.end method

.method private getLastTagPos()Lorg/htmlcleaner/HtmlCleaner$TagPos;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->last:Lorg/htmlcleaner/HtmlCleaner$TagPos;

    return-object v0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private removeTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tagName"

    .prologue
    .line 129
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    iget-object v3, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 130
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/HtmlCleaner$TagPos;

    .line 132
    .local v0, currTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->name:Ljava/lang/String;
    invoke-static {v0}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$100(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 138
    .end local v0           #currTagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    :cond_1
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->last:Lorg/htmlcleaner/HtmlCleaner$TagPos;

    .line 139
    return-void

    .line 138
    :cond_2
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    iget-object v3, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlcleaner/HtmlCleaner$TagPos;

    goto :goto_0
.end method

.method private someAlreadyOpen(Ljava/util/Set;)Z
    .locals 3
    .parameter "tags"

    .prologue
    .line 205
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/htmlcleaner/HtmlCleaner$TagPos;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/HtmlCleaner$TagPos;

    .line 208
    .local v0, curr:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    #getter for: Lorg/htmlcleaner/HtmlCleaner$TagPos;->name:Ljava/lang/String;
    invoke-static {v0}, Lorg/htmlcleaner/HtmlCleaner$TagPos;->access$100(Lorg/htmlcleaner/HtmlCleaner$TagPos;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/4 v2, 0x1

    .line 214
    .end local v0           #curr:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private tagEncountered(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 197
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private tagExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "tagName"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlCleaner$OpenTags;->findTag(Ljava/lang/String;)Lorg/htmlcleaner/HtmlCleaner$TagPos;

    move-result-object v0

    .line 174
    .local v0, tagPos:Lorg/htmlcleaner/HtmlCleaner$TagPos;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
