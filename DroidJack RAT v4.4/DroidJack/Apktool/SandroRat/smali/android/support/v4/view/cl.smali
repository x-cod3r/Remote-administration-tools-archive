.class final Landroid/support/v4/view/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/b/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/cl;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/ck;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/cl;->b(I)[Landroid/support/v4/view/ck;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/ck;
    .locals 1

    new-instance v0, Landroid/support/v4/view/ck;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/view/ck;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public b(I)[Landroid/support/v4/view/ck;
    .locals 1

    new-array v0, p1, [Landroid/support/v4/view/ck;

    return-object v0
.end method
