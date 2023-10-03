.class Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "IcsProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;IIZ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 606
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput p2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mId:I

    .line 608
    iput p3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 609
    iput-boolean p4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 610
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 613
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mFromUser:Z

    const/4 v4, 0x1

    #calls: Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->doRefreshProgress(IIZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->access$0(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;IIZZ)V

    .line 615
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    #setter for: Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;
    invoke-static {v0, p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->access$1(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;)V

    .line 616
    return-void
.end method

.method public setup(IIZ)V
    .locals 0
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 619
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mId:I

    .line 620
    iput p2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 621
    iput-boolean p3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 622
    return-void
.end method
