.class final Landroid/support/v4/app/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;

.field final j:Ljava/util/ArrayList;

.field final k:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/k;

    invoke-direct {v0}, Landroid/support/v4/app/k;-><init>()V

    sput-object v0, Landroid/support/v4/app/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/j;->a:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/j;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->f:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/j;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->h:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/j;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/j;->k:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/t;Landroid/support/v4/app/d;)V
    .locals 8

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/h;

    move-object v1, v0

    move v0, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v1, v1, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/h;

    goto :goto_0

    :cond_1
    iget v1, p2, Landroid/support/v4/app/d;->d:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/app/j;->a:[I

    iget-boolean v0, p2, Landroid/support/v4/app/d;->k:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p2, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/h;

    move-object v5, v0

    move v0, v3

    :goto_1
    if-eqz v5, :cond_6

    iget-object v1, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v2, v0, 0x1

    iget v4, v5, Landroid/support/v4/app/h;->c:I

    aput v4, v1, v0

    iget-object v1, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v4, v2, 0x1

    iget-object v0, v5, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    if-eqz v0, :cond_3

    iget-object v0, v5, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    iget v0, v0, Landroid/support/v4/app/l;->g:I

    :goto_2
    aput v0, v1, v2

    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v1, v4, 0x1

    iget v2, v5, Landroid/support/v4/app/h;->e:I

    aput v2, v0, v4

    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/h;->f:I

    aput v4, v0, v1

    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v1, v2, 0x1

    iget v4, v5, Landroid/support/v4/app/h;->g:I

    aput v4, v0, v2

    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/h;->h:I

    aput v4, v0, v1

    iget-object v0, v5, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, v5, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v1, v2, 0x1

    aput v6, v0, v2

    move v2, v3

    :goto_3
    if-ge v2, v6, :cond_4

    iget-object v7, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v0, v5, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    iget v0, v0, Landroid/support/v4/app/l;->g:I

    aput v0, v7, v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_4
    iget-object v1, v5, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/h;

    move-object v5, v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v0, v2, 0x1

    aput v3, v1, v2

    goto :goto_4

    :cond_6
    iget v0, p2, Landroid/support/v4/app/d;->i:I

    iput v0, p0, Landroid/support/v4/app/j;->b:I

    iget v0, p2, Landroid/support/v4/app/d;->j:I

    iput v0, p0, Landroid/support/v4/app/j;->c:I

    iget-object v0, p2, Landroid/support/v4/app/d;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/j;->d:Ljava/lang/String;

    iget v0, p2, Landroid/support/v4/app/d;->o:I

    iput v0, p0, Landroid/support/v4/app/j;->e:I

    iget v0, p2, Landroid/support/v4/app/d;->p:I

    iput v0, p0, Landroid/support/v4/app/j;->f:I

    iget-object v0, p2, Landroid/support/v4/app/d;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/j;->g:Ljava/lang/CharSequence;

    iget v0, p2, Landroid/support/v4/app/d;->r:I

    iput v0, p0, Landroid/support/v4/app/j;->h:I

    iget-object v0, p2, Landroid/support/v4/app/d;->s:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/j;->i:Ljava/lang/CharSequence;

    iget-object v0, p2, Landroid/support/v4/app/d;->t:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/j;->j:Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/j;->k:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/t;)Landroid/support/v4/app/d;
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v6, Landroid/support/v4/app/d;

    invoke-direct {v6, p1}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/t;)V

    move v1, v2

    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/j;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    new-instance v7, Landroid/support/v4/app/h;

    invoke-direct {v7}, Landroid/support/v4/app/h;-><init>()V

    iget-object v3, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v0, v3, v0

    iput v0, v7, Landroid/support/v4/app/h;->c:I

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instantiate "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " op #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " base fragment #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/support/v4/app/j;->a:[I

    aget v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v3, v4, 0x1

    aget v0, v0, v4

    if-ltz v0, :cond_2

    iget-object v4, p1, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    iput-object v0, v7, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v3

    iput v0, v7, Landroid/support/v4/app/h;->e:I

    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v3, v4, 0x1

    aget v0, v0, v4

    iput v0, v7, Landroid/support/v4/app/h;->f:I

    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v3

    iput v0, v7, Landroid/support/v4/app/h;->g:I

    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    iput v0, v7, Landroid/support/v4/app/h;->h:I

    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v3, v5, 0x1

    aget v8, v0, v5

    if-lez v8, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v7, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    move v4, v2

    :goto_2
    if-ge v4, v8, :cond_3

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instantiate "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " set remove fragment #"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Landroid/support/v4/app/j;->a:[I

    aget v9, v9, v3

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/v4/app/j;->a:[I

    add-int/lit8 v5, v3, 0x1

    aget v3, v9, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l;

    iget-object v3, v7, Landroid/support/v4/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v3, v5

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/l;

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v7}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/h;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Landroid/support/v4/app/j;->b:I

    iput v0, v6, Landroid/support/v4/app/d;->i:I

    iget v0, p0, Landroid/support/v4/app/j;->c:I

    iput v0, v6, Landroid/support/v4/app/d;->j:I

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Ljava/lang/String;

    iput-object v0, v6, Landroid/support/v4/app/d;->m:Ljava/lang/String;

    iget v0, p0, Landroid/support/v4/app/j;->e:I

    iput v0, v6, Landroid/support/v4/app/d;->o:I

    iput-boolean v10, v6, Landroid/support/v4/app/d;->k:Z

    iget v0, p0, Landroid/support/v4/app/j;->f:I

    iput v0, v6, Landroid/support/v4/app/d;->p:I

    iget-object v0, p0, Landroid/support/v4/app/j;->g:Ljava/lang/CharSequence;

    iput-object v0, v6, Landroid/support/v4/app/d;->q:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v4/app/j;->h:I

    iput v0, v6, Landroid/support/v4/app/d;->r:I

    iget-object v0, p0, Landroid/support/v4/app/j;->i:Ljava/lang/CharSequence;

    iput-object v0, v6, Landroid/support/v4/app/d;->s:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v4/app/j;->j:Ljava/util/ArrayList;

    iput-object v0, v6, Landroid/support/v4/app/d;->t:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v4/app/j;->k:Ljava/util/ArrayList;

    iput-object v0, v6, Landroid/support/v4/app/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Landroid/support/v4/app/d;->a(I)V

    return-object v6
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/j;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/support/v4/app/j;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/app/j;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/j;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/app/j;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/app/j;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/support/v4/app/j;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/app/j;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/support/v4/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/support/v4/app/j;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
