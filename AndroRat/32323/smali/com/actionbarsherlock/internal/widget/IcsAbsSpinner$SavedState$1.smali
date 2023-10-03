.class Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState$1;
.super Ljava/lang/Object;
.source "IcsAbsSpinner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 410
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;-><init>(Landroid/os/Parcel;Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 414
    new-array v0, p1, [Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState$1;->newArray(I)[Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;

    move-result-object v0

    return-object v0
.end method
