.class final Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mData:Ljava/lang/Object;

.field mDeliveredData:Z

.field mDestroyed:Z

.field mHaveData:Z

.field final mId:I

.field mListenerRegistered:Z

.field mLoader:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

.field mReportNextStart:Z

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final synthetic this$0:Landroid/support/v4/app/LoaderManagerImpl;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p4, callbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 227
    iput-object p3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 228
    iput-object p4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 229
    return-void
.end method


# virtual methods
.method callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v1, :cond_3

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, lastBecause:Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 422
    :cond_0
    :try_start_0
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_2

    .line 427
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 430
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 432
    .end local v0           #lastBecause:Ljava/lang/String;
    :cond_3
    return-void

    .line 426
    .restart local v0       #lastBecause:Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_4

    .line 427
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_4
    throw v1
.end method

.method destroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 324
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Destroying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 326
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 327
    .local v1, needReset:Z
    iput-boolean v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 328
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 329
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Reseting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    const/4 v0, 0x0

    .line 331
    .local v0, lastBecause:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_2

    .line 332
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 333
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    const-string v3, "onLoaderReset"

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 336
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-interface {v2, v3}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_3

    .line 339
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 343
    .end local v0           #lastBecause:Ljava/lang/String;
    :cond_3
    iput-object v6, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 344
    iput-object v6, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 345
    iput-boolean v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 346
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v2, :cond_5

    .line 347
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v2, :cond_4

    .line 348
    iput-boolean v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 349
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v2, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 351
    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->reset()V

    .line 353
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v2, :cond_6

    .line 354
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 356
    :cond_6
    return-void

    .line 338
    .restart local v0       #lastBecause:Ljava/lang/String;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v3, v3, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_7

    .line 339
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v3, v3, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, v3, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_7
    throw v2
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 448
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 449
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 455
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-eqz v0, :cond_2

    .line 456
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 457
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 458
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 460
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 461
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 462
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 463
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 464
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 466
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_3

    .line 467
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 471
    :cond_3
    return-void
.end method

.method finishRetain()V
    .locals 3

    .prologue
    .line 275
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_1

    .line 276
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 278
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eq v0, v1, :cond_1

    .line 279
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 288
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 297
    :cond_2
    return-void
.end method

.method public onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 359
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadComplete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v2, :cond_2

    .line 362
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    const-string v3, "  Ignoring load complete -- destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 369
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    const-string v3, "  Ignoring load complete -- not active"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 374
    .local v1, pending:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v1, :cond_5

    .line 378
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Switching to pending loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_4
    iput-object v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 380
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 381
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 382
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V

    goto :goto_0

    .line 388
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    if-ne v2, p2, :cond_6

    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v2, :cond_7

    .line 389
    :cond_6
    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 390
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 391
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v2, :cond_7

    .line 392
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 402
    :cond_7
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 403
    .local v0, info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_8

    if-eq v0, p0, :cond_8

    .line 404
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 405
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 406
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/HCSparseArray;->remove(I)V

    .line 409
    :cond_8
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v2

    if-nez v2, :cond_1

    .line 410
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    goto/16 :goto_0
.end method

.method reportStart()V
    .locals 2

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_0

    .line 301
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 303
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 308
    :cond_0
    return-void
.end method

.method retain()V
    .locals 3

    .prologue
    .line 267
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 269
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 272
    return-void
.end method

.method start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 232
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eqz v0, :cond_1

    .line 236
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_0

    .line 245
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 247
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 251
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-nez v0, :cond_5

    .line 259
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/Loader;->registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 260
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 262
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto/16 :goto_0
.end method

.method stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 311
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 313
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 316
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 318
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->stopLoading()V

    .line 321
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 443
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
