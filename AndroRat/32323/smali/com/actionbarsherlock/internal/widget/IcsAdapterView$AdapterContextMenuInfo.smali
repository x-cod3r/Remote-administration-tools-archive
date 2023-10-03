.class public Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "IcsAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .parameter "targetView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 379
    iput p2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterContextMenuInfo;->position:I

    .line 380
    iput-wide p3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterContextMenuInfo;->id:J

    .line 381
    return-void
.end method
