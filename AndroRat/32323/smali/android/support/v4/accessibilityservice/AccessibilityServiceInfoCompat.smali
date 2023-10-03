.class public Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;,
        Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;,
        Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;
    }
.end annotation


# static fields
.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field private static final IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;

    invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .locals 4
    .parameter "feedbackType"

    .prologue
    const/4 v3, 0x1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :goto_0
    if-lez p0, :cond_1

    .line 192
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int v1, v3, v2

    .line 193
    .local v1, feedbackTypeFlag:I
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr p0, v2

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 195
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 208
    :sswitch_0
    const-string v2, "FEEDBACK_SPOKEN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    :sswitch_1
    const-string v2, "FEEDBACK_AUDIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 202
    :sswitch_2
    const-string v2, "FEEDBACK_HAPTIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :sswitch_3
    const-string v2, "FEEDBACK_GENERIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :sswitch_4
    const-string v2, "FEEDBACK_VISUAL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    .end local v1           #feedbackTypeFlag:I
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public static flagToString(I)Ljava/lang/String;
    .locals 1
    .parameter "flag"

    .prologue
    .line 228
    packed-switch p0, :pswitch_data_0

    .line 232
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 230
    :pswitch_0
    const-string v0, "DEFAULT"

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 164
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public static getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 177
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 126
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "info"

    .prologue
    .line 138
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 151
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
