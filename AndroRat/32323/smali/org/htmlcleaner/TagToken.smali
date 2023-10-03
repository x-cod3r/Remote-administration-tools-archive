.class public abstract Lorg/htmlcleaner/TagToken;
.super Ljava/lang/Object;
.source "TagToken.java"

# interfaces
.implements Lorg/htmlcleaner/BaseToken;


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/htmlcleaner/TagToken;->name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/htmlcleaner/TagToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method abstract setAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/htmlcleaner/TagToken;->name:Ljava/lang/String;

    return-object v0
.end method
