.class public Lorg/adaway/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLongDate()J
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 59
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public static longToDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "input"

    .prologue
    .line 41
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 42
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 43
    .local v1, date:Ljava/util/Date;
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 45
    .local v0, dataformat:Ljava/text/DateFormat;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .end local v0           #dataformat:Ljava/text/DateFormat;
    .end local v1           #date:Ljava/util/Date;
    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f0600a3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
