.class public Lorg/adaway/provider/AdAwayContract;
.super Ljava/lang/Object;
.source "AdAwayContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/adaway/provider/AdAwayContract$RedirectionList;,
        Lorg/adaway/provider/AdAwayContract$Blacklist;,
        Lorg/adaway/provider/AdAwayContract$Whitelist;,
        Lorg/adaway/provider/AdAwayContract$HostsSources;,
        Lorg/adaway/provider/AdAwayContract$RedirectionListColumns;,
        Lorg/adaway/provider/AdAwayContract$BlacklistColumns;,
        Lorg/adaway/provider/AdAwayContract$WhitelistColumns;,
        Lorg/adaway/provider/AdAwayContract$HostsSourcesColumns;
    }
.end annotation


# static fields
.field private static final BASE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = "org.adaway"

.field public static final PATH_BLACKLIST:Ljava/lang/String; = "blacklist"

.field public static final PATH_HOSTS_SOURCES:Ljava/lang/String; = "hostssources"

.field public static final PATH_REDIRECTION_LIST:Ljava/lang/String; = "redirectionlist"

.field public static final PATH_WHITELIST:Ljava/lang/String; = "whitelist"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "content://org.adaway"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/adaway/provider/AdAwayContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/adaway/provider/AdAwayContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
