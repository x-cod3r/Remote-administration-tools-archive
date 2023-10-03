.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mIndex:I

.field mInstance:Landroid/support/v4/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Landroid/support/v4/app/FragmentState$1;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->mIndex:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v0, v2

    .line 81
    goto :goto_1

    :cond_2
    move v1, v2

    .line 82
    goto :goto_2
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "frag"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 64
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->mIndex:I

    .line 65
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    .line 66
    iget v0, p1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    .line 67
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I

    .line 68
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    .line 69
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    .line 70
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z

    .line 71
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter "activity"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 112
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 96
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 98
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 100
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 102
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(I)V

    .line 103
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 104
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->mRestored:Z

    .line 105
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 106
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 107
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    .line 109
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 110
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    iget-object v1, p1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 112
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Landroid/support/v4/app/FragmentState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 129
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 130
    return-void

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    :cond_1
    move v0, v2

    .line 126
    goto :goto_1

    :cond_2
    move v1, v2

    .line 127
    goto :goto_2
.end method
