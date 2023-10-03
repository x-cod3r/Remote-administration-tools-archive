.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dependency"
.end annotation


# static fields
.field static final AFTER:I = 0x1

.field static final WITH:I


# instance fields
.field public node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

.field public rule:I


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;I)V
    .locals 0
    .parameter "node"
    .parameter "rule"

    .prologue
    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 862
    iput p2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    .line 863
    return-void
.end method
