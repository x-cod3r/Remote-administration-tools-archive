.class public Lorg/rootcommands/util/UnsupportedArchitectureException;
.super Ljava/lang/Exception;
.source "UnsupportedArchitectureException.java"


# static fields
.field private static final serialVersionUID:J = 0x6c9d6a7a07405777L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
