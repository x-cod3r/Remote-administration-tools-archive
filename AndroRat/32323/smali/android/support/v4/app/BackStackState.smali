.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 89
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 91
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V
    .locals 8
    .parameter "fm"
    .parameter "bse"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, numRemoved:I
    iget-object v3, p2, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 42
    .local v3, op:Landroid/support/v4/app/BackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_1

    .line 43
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 44
    :cond_0
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    .line 46
    :cond_1
    iget v6, p2, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v2

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 48
    iget-boolean v6, p2, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v6, :cond_2

    .line 49
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Not on back stack"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 52
    :cond_2
    iget-object v3, p2, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 53
    const/4 v4, 0x0

    .local v4, pos:I
    move v5, v4

    .line 54
    .end local v4           #pos:I
    .local v5, pos:I
    :goto_1
    if-eqz v3, :cond_5

    .line 55
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    iget v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    aput v7, v6, v5

    .line 56
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .restart local v5       #pos:I
    iget-object v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v7, v6, v4

    .line 57
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    iget v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    aput v7, v6, v5

    .line 58
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .restart local v5       #pos:I
    iget v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    aput v7, v6, v4

    .line 59
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    iget v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    aput v7, v6, v5

    .line 60
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .restart local v5       #pos:I
    iget v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    aput v7, v6, v4

    .line 61
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 62
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 63
    .local v0, N:I
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    aput v0, v6, v5

    .line 64
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 65
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v6, v7, v5

    .line 64
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_2

    :cond_3
    move v4, v5

    .line 70
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v5           #pos:I
    .restart local v4       #pos:I
    :goto_3
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_1

    .line 68
    :cond_4
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    const/4 v7, 0x0

    aput v7, v6, v5

    goto :goto_3

    .line 72
    .end local v4           #pos:I
    .restart local v5       #pos:I
    :cond_5
    iget v6, p2, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 73
    iget v6, p2, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 74
    iget-object v6, p2, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 75
    iget v6, p2, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 76
    iget v6, p2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 77
    iget-object v6, p2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 78
    iget v6, p2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 79
    iget-object v6, p2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
    .locals 12
    .parameter "fm"

    .prologue
    const/4 v11, 0x1

    .line 95
    new-instance v1, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v1, p1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    .line 96
    .local v1, bse:Landroid/support/v4/app/BackStackRecord;
    const/4 v5, 0x0

    .line 97
    .local v5, pos:I
    :goto_0
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    array-length v8, v8

    if-ge v5, v8, :cond_3

    .line 98
    new-instance v4, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 99
    .local v4, op:Landroid/support/v4/app/BackStackRecord$Op;
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5           #pos:I
    .local v6, pos:I
    aget v8, v8, v5

    iput v8, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 100
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BSE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " set base fragment #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6           #pos:I
    .restart local v5       #pos:I
    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 103
    .local v2, f:Landroid/support/v4/app/Fragment;
    iput-object v2, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 104
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5           #pos:I
    .restart local v6       #pos:I
    aget v8, v8, v5

    iput v8, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 105
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6           #pos:I
    .restart local v5       #pos:I
    aget v8, v8, v6

    iput v8, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 106
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5           #pos:I
    .restart local v6       #pos:I
    aget v8, v8, v5

    iput v8, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 107
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6           #pos:I
    .restart local v5       #pos:I
    aget v8, v8, v6

    iput v8, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 108
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5           #pos:I
    .restart local v6       #pos:I
    aget v0, v8, v5

    .line 109
    .local v0, N:I
    if-lez v0, :cond_2

    .line 110
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 111
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 112
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BSE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " set remove fragment #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6           #pos:I
    .restart local v5       #pos:I
    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 115
    .local v7, r:Landroid/support/v4/app/Fragment;
    iget-object v8, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5           #pos:I
    .restart local v6       #pos:I
    goto :goto_1

    .end local v3           #i:I
    .end local v7           #r:Landroid/support/v4/app/Fragment;
    :cond_2
    move v5, v6

    .line 118
    .end local v6           #pos:I
    .restart local v5       #pos:I
    invoke-virtual {v1, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    goto/16 :goto_0

    .line 120
    .end local v0           #N:I
    .end local v2           #f:Landroid/support/v4/app/Fragment;
    .end local v4           #op:Landroid/support/v4/app/BackStackRecord$Op;
    :cond_3
    iget v8, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    iput v8, v1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 121
    iget v8, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    iput v8, v1, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 122
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v8, v1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 123
    iget v8, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    iput v8, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 124
    iput-boolean v11, v1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 125
    iget v8, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v8, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 126
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v8, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 127
    iget v8, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v8, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 128
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v8, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {v1, v11}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 130
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 139
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 145
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 147
    return-void
.end method
