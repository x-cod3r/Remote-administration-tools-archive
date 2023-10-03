.class public Lorg/donations/google/Consts;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/donations/google/Consts$PurchaseState;,
        Lorg/donations/google/Consts$ResponseCode;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_NOTIFICATION:Ljava/lang/String; = "com.example.dungeons.CONFIRM_NOTIFICATION"

.field public static final ACTION_GET_PURCHASE_INFORMATION:Ljava/lang/String; = "com.example.dungeons.GET_PURCHASE_INFORMATION"

.field public static final ACTION_NOTIFY:Ljava/lang/String; = "com.android.vending.billing.IN_APP_NOTIFY"

.field public static final ACTION_PURCHASE_STATE_CHANGED:Ljava/lang/String; = "com.android.vending.billing.PURCHASE_STATE_CHANGED"

.field public static final ACTION_RESPONSE_CODE:Ljava/lang/String; = "com.android.vending.billing.RESPONSE_CODE"

.field public static final ACTION_RESTORE_TRANSACTIONS:Ljava/lang/String; = "com.example.dungeons.RESTORE_TRANSACTIONS"

.field public static final BILLING_REQUEST_API_VERSION:Ljava/lang/String; = "API_VERSION"

.field public static final BILLING_REQUEST_DEVELOPER_PAYLOAD:Ljava/lang/String; = "DEVELOPER_PAYLOAD"

.field public static final BILLING_REQUEST_ITEM_ID:Ljava/lang/String; = "ITEM_ID"

.field public static final BILLING_REQUEST_METHOD:Ljava/lang/String; = "BILLING_REQUEST"

.field public static final BILLING_REQUEST_NONCE:Ljava/lang/String; = "NONCE"

.field public static final BILLING_REQUEST_NOTIFY_IDS:Ljava/lang/String; = "NOTIFY_IDS"

.field public static final BILLING_REQUEST_PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"

.field public static BILLING_RESPONSE_INVALID_REQUEST_ID:J = 0x0L

.field public static final BILLING_RESPONSE_PURCHASE_INTENT:Ljava/lang/String; = "PURCHASE_INTENT"

.field public static final BILLING_RESPONSE_REQUEST_ID:Ljava/lang/String; = "REQUEST_ID"

.field public static final BILLING_RESPONSE_RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final DEBUG:Z = false

.field public static final INAPP_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final INAPP_RESPONSE_CODE:Ljava/lang/String; = "response_code"

.field public static final INAPP_SIGNATURE:Ljava/lang/String; = "inapp_signature"

.field public static final INAPP_SIGNED_DATA:Ljava/lang/String; = "inapp_signed_data"

.field public static final MARKET_BILLING_SERVICE_ACTION:Ljava/lang/String; = "com.android.vending.billing.MarketBillingService.BIND"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/donations/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method
