.class public Lorg/adaway/provider/AdAwayContract$Blacklist;
.super Ljava/lang/Object;
.source "AdAwayContract.java"

# interfaces
.implements Lorg/adaway/provider/AdAwayContract$BlacklistColumns;
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adaway/provider/AdAwayContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blacklist"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.adaway.blacklist"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.adaway.blacklist"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT:Ljava/lang/String; = "url ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lorg/adaway/provider/AdAwayContract;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "blacklist"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/adaway/provider/AdAwayContract$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "id"

    .prologue
    .line 121
    sget-object v0, Lorg/adaway/provider/AdAwayContract$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
