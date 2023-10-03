.class Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;
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
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;->this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1188
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;-><init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;->this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->sendAccessibilityEvent(I)V

    .line 1191
    return-void
.end method
