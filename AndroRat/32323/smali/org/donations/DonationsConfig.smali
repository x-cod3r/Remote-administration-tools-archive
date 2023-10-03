.class public Lorg/donations/DonationsConfig;
.super Ljava/lang/Object;
.source "DonationsConfig.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final FLATTR_ENABLED:Z = false

.field public static final FLATTR_PROJECT_URL:Ljava/lang/String; = ""

.field public static final FLATTR_URL:Ljava/lang/String; = ""

.field public static final GOOGLE_CATALOG:[Ljava/lang/String; = null

.field public static final GOOGLE_ENABLED:Z = true

.field public static final GOOGLE_PUBKEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg8bTVFK5zIg4FGYkHKKQ/j/iGZQlXU0qkAv2BA6epOX1ihbMz78iD4SmViJlECHN8bKMHxouRNd9pkmQKxwEBHg5/xDC/PHmSCXFx/gcY/xa4etA1CSfXjcsS9i94n+j0gGYUg69rNkp+p/09nO9sgfRTAQppTxtgKaXwpfKe1A8oqmDUfOnPzsEAG6ogQL6Svo6ynYLVKIvRPPhXkq+fp6sJ5YVT5Hr356yCXlM++G56Pk8Z+tPzNjjvGSSs/MsYtgFaqhPCsnKhb55xHkc8GJ9haq8k3PSqwMSeJHnGiDq5lzdmsjdmGkWdQq2jIhKlhMZMm5VQWn0T59+xjjIIwIDAQAB"

.field public static final PAYPAL_CURRENCY_CODE:Ljava/lang/String; = ""

.field public static final PAYPAL_ENABLED:Z = false

.field public static final PAYPAL_ITEM_NAME:Ljava/lang/String; = ""

.field public static final PAYPAL_USER:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "adaway.donation.1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "adaway.donation.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "adaway.donation.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "adaway.donation.5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "adaway.donation.8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "adaway.donation.13"

    aput-object v2, v0, v1

    sput-object v0, Lorg/donations/DonationsConfig;->GOOGLE_CATALOG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
