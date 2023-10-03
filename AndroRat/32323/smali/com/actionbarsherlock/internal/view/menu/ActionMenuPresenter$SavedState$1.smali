.class Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;
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
        "Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 561
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 565
    new-array v0, p1, [Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState$1;->newArray(I)[Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;

    move-result-object v0

    return-object v0
.end method
