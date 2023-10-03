.class Lnet/nightwhistler/htmlspanner/handlers/TableHandler$1;
.super Ljava/lang/Object;
.source "TableHandler.java"

# interfaces
.implements Landroid/text/style/AlignmentSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/nightwhistler/htmlspanner/handlers/TableHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;


# direct methods
.method constructor <init>(Lnet/nightwhistler/htmlspanner/handlers/TableHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lnet/nightwhistler/htmlspanner/handlers/TableHandler$1;->this$0:Lnet/nightwhistler/htmlspanner/handlers/TableHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method
