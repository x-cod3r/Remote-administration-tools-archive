.class public Lcom/esotericsoftware/kryo/serializers/BeanSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;


# static fields
.field static final noArgs:[Ljava/lang/Object;


# instance fields
.field access:Ljava/lang/Object;

.field private final kryo:Lcom/esotericsoftware/kryo/Kryo;

.field private properties:[Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->noArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 11

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    :try_start_0
    invoke-static {p2}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v3

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;-><init>(Lcom/esotericsoftware/kryo/serializers/BeanSerializer;)V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v4, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v3

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "class"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    const-string v2, "Error getting bean info."

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p1, v9}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    :cond_2
    new-instance v9, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    invoke-direct {v9, p0}, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;-><init>(Lcom/esotericsoftware/kryo/serializers/BeanSerializer;)V

    iput-object v6, v9, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->name:Ljava/lang/String;

    iput-object v7, v9, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->getMethod:Ljava/lang/reflect/Method;

    iput-object v8, v9, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->setMethod:Ljava/lang/reflect/Method;

    iput-object v0, v9, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, v9, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->setMethodType:Ljava/lang/Class;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->properties:[Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    :try_start_1
    invoke-static {p2}, Lcom/esotericsoftware/reflectasm/MethodAccess;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/MethodAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->access:Ljava/lang/Object;

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->properties:[Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_4

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->properties:[Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->access:Ljava/lang/Object;

    check-cast v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    iget-object v4, v3, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->getMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/reflectasm/MethodAccess;->getIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->getterAccessIndex:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->access:Ljava/lang/Object;

    check-cast v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    iget-object v4, v3, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->setMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/reflectasm/MethodAccess;->getIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->setterAccessIndex:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    :cond_4
    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->properties:[Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    array-length v2, v2

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->properties:[Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    aget-object v3, v3, v0

    :try_start_0
    invoke-virtual {v3, p2}, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error copying bean property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->properties:[Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    array-length v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->properties:[Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    aget-object v4, v0, v1

    :try_start_0
    iget-object v0, v4, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    if-eqz v0, :cond_0

    iget-object v5, v4, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->setMethodType:Ljava/lang/Class;

    invoke-virtual {p1, p2, v5, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v2, v0}, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error accessing setter method: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error invoking setter method: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v2
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->properties:[Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    array-length v2, v2

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->properties:[Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;

    aget-object v3, v3, v0

    :try_start_0
    invoke-virtual {v3, p3}, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v3, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    if-eqz v5, :cond_0

    invoke-virtual {p1, p2, v4, v5}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error accessing getter method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error invoking getter method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method
