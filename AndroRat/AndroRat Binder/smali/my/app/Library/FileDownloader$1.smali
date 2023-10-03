.class Lmy/app/Library/FileDownloader$1;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmy/app/Library/FileDownloader;->downloadFile(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmy/app/Library/FileDownloader;


# direct methods
.method constructor <init>(Lmy/app/Library/FileDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmy/app/Library/FileDownloader$1;->this$0:Lmy/app/Library/FileDownloader;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmy/app/Library/FileDownloader$1;->this$0:Lmy/app/Library/FileDownloader;

    invoke-virtual {v0}, Lmy/app/Library/FileDownloader;->load()V

    .line 60
    return-void
.end method
