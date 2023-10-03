.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
    .locals 1
    .parameter "listener"

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "searchView"
    .parameter "listener"

    .prologue
    .line 50
    return-void
.end method
