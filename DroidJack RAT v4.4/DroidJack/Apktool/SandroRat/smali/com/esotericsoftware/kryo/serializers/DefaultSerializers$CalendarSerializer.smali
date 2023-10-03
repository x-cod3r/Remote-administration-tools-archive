.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# static fields
.field private static final DEFAULT_GREGORIAN_CUTOVER:J = -0xb1d069b5400L


# instance fields
.field timeZoneSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->timeZoneSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Calendar;
    .locals 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->timeZoneSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    const-class v1, Ljava/util/TimeZone;

    invoke-virtual {v0, p1, p2, v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p2, v4}, Lcom/esotericsoftware/kryo/io/Input;->readLong(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {p2, v4}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    invoke-virtual {p2, v4}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readLong(Z)J

    move-result-wide v2

    const-wide v4, -0xb1d069b5400L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    instance-of v0, v1, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/util/GregorianCalendar;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    :cond_0
    return-object v1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Calendar;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->timeZoneSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/TimeZone;)V

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(JZ)I

    invoke-virtual {p3}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    invoke-virtual {p3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    invoke-virtual {p3}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    instance-of v0, p3, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/util/GregorianCalendar;

    invoke-virtual {p3}, Ljava/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(JZ)I

    :goto_0
    return-void

    :cond_0
    const-wide v0, -0xb1d069b5400L

    invoke-virtual {p2, v0, v1, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(JZ)I

    goto :goto_0
.end method
