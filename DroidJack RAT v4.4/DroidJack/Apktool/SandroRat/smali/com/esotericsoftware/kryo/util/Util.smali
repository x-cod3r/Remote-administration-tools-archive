.class public Lcom/esotericsoftware/kryo/util/Util;
.super Ljava/lang/Object;


# static fields
.field public static isAndroid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "android.os.Process"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/esotericsoftware/kryo/util/Util;->isAndroid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static className(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/esotericsoftware/kryo/util/Util;->getElementClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/esotericsoftware/kryo/util/Util;->getDimensionCount(Ljava/lang/Class;)I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_0

    const-string v4, "[]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getDimensionCount(Ljava/lang/Class;)I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static getElementClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class v0, Ljava/lang/Float;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class v0, Ljava/lang/Long;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class v0, Ljava/lang/Byte;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class v0, Ljava/lang/Character;

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class v0, Ljava/lang/Short;

    goto :goto_0

    :cond_6
    const-class v0, Ljava/lang/Double;

    goto :goto_0
.end method

.method public static isWrapperClass(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Character;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Short;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    const-string v0, "kryo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static string(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
