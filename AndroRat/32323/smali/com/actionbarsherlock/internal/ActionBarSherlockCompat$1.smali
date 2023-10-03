.class Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;
.super Ljava/lang/Object;
.source "ActionBarSherlockCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->access$4(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->access$5(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->dispatchInvalidateOptionsMenu()V

    .line 986
    :cond_0
    return-void
.end method
