.class Lcom/actionbarsherlock/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$1;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    .line 124
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 129
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$1;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 130
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 134
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$1;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetInvalidated()V

    .line 135
    return-void
.end method
