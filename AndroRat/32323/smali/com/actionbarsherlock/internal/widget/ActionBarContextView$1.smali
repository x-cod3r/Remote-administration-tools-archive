.class Lcom/actionbarsherlock/internal/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->initForMode(Lcom/actionbarsherlock/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

.field private final synthetic val$mode:Lcom/actionbarsherlock/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/ActionBarContextView;Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    iput-object p2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView$1;->val$mode:Lcom/actionbarsherlock/view/ActionMode;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView$1;->val$mode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 216
    return-void
.end method
