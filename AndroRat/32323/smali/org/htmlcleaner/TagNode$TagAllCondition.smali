.class public Lorg/htmlcleaner/TagNode$TagAllCondition;
.super Ljava/lang/Object;
.source "TagNode.java"

# interfaces
.implements Lorg/htmlcleaner/TagNode$ITagNodeCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlcleaner/TagNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagAllCondition"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/htmlcleaner/TagNode;


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/TagNode;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lorg/htmlcleaner/TagNode$TagAllCondition;->this$0:Lorg/htmlcleaner/TagNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public satisfy(Lorg/htmlcleaner/TagNode;)Z
    .locals 1
    .parameter "tagNode"

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method
