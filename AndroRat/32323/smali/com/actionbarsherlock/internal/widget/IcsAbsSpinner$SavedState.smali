.class Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "IcsAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field position:I

.field selectedId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState$1;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState$1;-><init>()V

    .line 407
    sput-object v0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 416
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;->selectedId:J

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;->position:I

    .line 390
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 381
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AbsSpinner.SavedState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    const-string v1, " selectedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;->selectedId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 404
    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 395
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;->selectedId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 396
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$SavedState;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    return-void
.end method
