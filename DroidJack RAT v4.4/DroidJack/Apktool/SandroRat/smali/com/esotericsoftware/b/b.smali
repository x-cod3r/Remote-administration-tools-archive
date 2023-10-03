.class public Lcom/esotericsoftware/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/b/b;->a:J

    return-void
.end method
