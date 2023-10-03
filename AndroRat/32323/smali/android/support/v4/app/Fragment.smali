.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Fragment$InstantiationException;,
        Landroid/support/v4/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field private static final sClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mAdded:Z

.field mAnimatingAway:Landroid/view/View;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mRemoving:Z

.field mRestored:Z

.field mResumed:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/support/v4/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 178
    iput v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 190
    iput v1, p0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 255
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 277
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 352
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "context"
    .parameter "fname"

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 6
    .parameter "context"
    .parameter "fname"
    .parameter "args"

    .prologue
    .line 378
    :try_start_0
    sget-object v3, Landroid/support/v4/app/Fragment;->sClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 379
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 382
    sget-object v3, Landroid/support/v4/app/Fragment;->sClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 385
    .local v2, f:Landroid/support/v4/app/Fragment;
    if-eqz p2, :cond_1

    .line 386
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 387
    iput-object p2, v2, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 389
    :cond_1
    return-object v2

    .line 390
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #f:Landroid/support/v4/app/Fragment;
    :catch_0
    move-exception v1

    .line 391
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 394
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 395
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v3, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 398
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 399
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 1263
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1265
    const-string v0, " mContainerId#="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1267
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1269
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1270
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1271
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1273
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1274
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1275
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1276
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1277
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1278
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1279
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1280
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1281
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1282
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1283
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1284
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1288
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 1289
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1292
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1293
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1295
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1296
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1299
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 1300
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1303
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_5

    .line 1304
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1305
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1308
    :cond_5
    iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v0, :cond_6

    .line 1309
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1311
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 1312
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1314
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1315
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1317
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1318
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1320
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1321
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1322
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    iget v0, p0, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1325
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_b

    .line 1326
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1329
    :cond_b
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 425
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 820
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 764
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 772
    :goto_0
    return-object v0

    .line 767
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1

    .line 768
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_1
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 771
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 772
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "resId"
    .parameter "formatArgs"

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 432
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1081
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 1082
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 1083
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1084
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1085
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 1086
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 1087
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1088
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRestored:Z

    .line 1089
    iput v1, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1090
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1091
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 1092
    iput v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 1093
    iput v1, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1094
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 1095
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1096
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1097
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1098
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1099
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1100
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1101
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    return v0
.end method

.method final isInBackStack()Z
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 964
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 812
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 875
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1020
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1250
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 900
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1
    .parameter "transit"
    .parameter "enter"
    .parameter "nextAnim"

    .prologue
    .line 881
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1204
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1205
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 923
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1062
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1065
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 1066
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1067
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1069
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 1072
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .prologue
    .line 1152
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1055
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 1108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1109
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 673
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .parameter "activity"
    .parameter "attrs"
    .parameter "savedInstanceState"

    .prologue
    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 867
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1042
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1173
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1184
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1029
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1142
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 994
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 1016
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 972
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 974
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-nez v0, :cond_1

    .line 975
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 976
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 977
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 978
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 980
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 984
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1038
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 937
    return-void
.end method

.method performDestroyView()V
    .locals 1

    .prologue
    .line 1360
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 1361
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doReportNextStart()V

    .line 1364
    :cond_0
    return-void
.end method

.method performReallyStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1343
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-eqz v0, :cond_1

    .line 1344
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1345
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 1346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1347
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1349
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 1350
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    if-nez v0, :cond_2

    .line 1351
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    .line 1357
    :cond_1
    :goto_0
    return-void

    .line 1353
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0
.end method

.method performStart()V
    .locals 1

    .prologue
    .line 1332
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 1333
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 1336
    :cond_0
    return-void
.end method

.method performStop()V
    .locals 0

    .prologue
    .line 1339
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 1340
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1218
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1219
    return-void
.end method

.method final restoreViewState()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 410
    :cond_0
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 479
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 483
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .parameter "hasMenu"

    .prologue
    .line 705
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 706
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    .line 707
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 711
    :cond_0
    return-void
.end method

.method final setIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 413
    iput p1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 502
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 507
    return-void

    .line 505
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .parameter "menuVisible"

    .prologue
    .line 723
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 724
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 725
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 729
    :cond_0
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0
    .parameter "retain"

    .prologue
    .line 690
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    .line 691
    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 0
    .parameter "fragment"
    .parameter "requestCode"

    .prologue
    .line 521
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 522
    iput p2, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 523
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .parameter "isVisibleToUser"

    .prologue
    .line 745
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 746
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    .line 748
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 749
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 750
    return-void

    .line 749
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 780
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 784
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 791
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 792
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 795
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 438
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 439
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v1, :cond_0

    .line 440
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    :cond_0
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_1

    .line 444
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 448
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1229
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1230
    return-void
.end method
