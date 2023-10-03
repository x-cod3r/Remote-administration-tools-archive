.class public Lorg/htmlcleaner/HtmlCleanerException;
.super Ljava/lang/RuntimeException;
.source "HtmlCleanerException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "HtmlCleaner expression occureed!"

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
