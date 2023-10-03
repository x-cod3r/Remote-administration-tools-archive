.class final Landroid/support/v4/app/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Landroid/os/Bundle;

.field j:Landroid/os/Bundle;

.field k:Landroid/support/v4/app/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/aa;

    invoke-direct {v0}, Landroid/support/v4/app/aa;-><init>()V

    sput-object v0, Landroid/support/v4/app/z;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/z;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/z;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/z;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/z;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/z;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/support/v4/app/z;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Landroid/support/v4/app/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z;->a:Ljava/lang/String;

    iget v0, p1, Landroid/support/v4/app/l;->g:I

    iput v0, p0, Landroid/support/v4/app/z;->b:I

    iget-boolean v0, p1, Landroid/support/v4/app/l;->p:Z

    iput-boolean v0, p0, Landroid/support/v4/app/z;->c:Z

    iget v0, p1, Landroid/support/v4/app/l;->x:I

    iput v0, p0, Landroid/support/v4/app/z;->d:I

    iget v0, p1, Landroid/support/v4/app/l;->y:I

    iput v0, p0, Landroid/support/v4/app/z;->e:I

    iget-object v0, p1, Landroid/support/v4/app/l;->z:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/support/v4/app/l;->C:Z

    iput-boolean v0, p0, Landroid/support/v4/app/z;->g:Z

    iget-boolean v0, p1, Landroid/support/v4/app/l;->B:Z

    iput-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    iget-object v0, p1, Landroid/support/v4/app/l;->i:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/z;->i:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/o;Landroid/support/v4/app/l;)Landroid/support/v4/app/l;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/z;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/o;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->a:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/z;->i:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/l;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/l;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iget-object v0, p0, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/o;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iget-object v1, p0, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/support/v4/app/l;->e:Landroid/os/Bundle;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iget v1, p0, Landroid/support/v4/app/z;->b:I

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/app/l;->a(ILandroid/support/v4/app/l;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iget-boolean v1, p0, Landroid/support/v4/app/z;->c:Z

    iput-boolean v1, v0, Landroid/support/v4/app/l;->p:Z

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/l;->r:Z

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iget v1, p0, Landroid/support/v4/app/z;->d:I

    iput v1, v0, Landroid/support/v4/app/l;->x:I

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iget v1, p0, Landroid/support/v4/app/z;->e:I

    iput v1, v0, Landroid/support/v4/app/l;->y:I

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iget-object v1, p0, Landroid/support/v4/app/z;->f:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/l;->z:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iget-boolean v1, p0, Landroid/support/v4/app/z;->g:Z

    iput-boolean v1, v0, Landroid/support/v4/app/l;->C:Z

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iget-boolean v1, p0, Landroid/support/v4/app/z;->h:Z

    iput-boolean v1, v0, Landroid/support/v4/app/l;->B:Z

    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    iget-object v1, p1, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/t;

    iput-object v1, v0, Landroid/support/v4/app/l;->t:Landroid/support/v4/app/t;

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiated fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Landroid/support/v4/app/l;

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/z;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/app/z;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/app/z;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/app/z;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
