.class Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public openSubMenuId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 559
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState$1;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState$1;-><init>()V

    .line 558
    sput-object v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 567
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 545
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 554
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    return-void
.end method
