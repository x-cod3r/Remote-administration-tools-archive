.class Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;
.super Ljava/lang/Object;


# instance fields
.field getMethod:Ljava/lang/reflect/Method;

.field getterAccessIndex:I

.field name:Ljava/lang/String;

.field serializer:Lcom/esotericsoftware/kryo/Serializer;

.field setMethod:Ljava/lang/reflect/Method;

.field setMethodType:Ljava/lang/Class;

.field setterAccessIndex:I

.field final synthetic this$0:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryo/serializers/BeanSerializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->this$0:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->this$0:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->access:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->this$0:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->access:Ljava/lang/Object;

    check-cast v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->getterAccessIndex:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->getMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->this$0:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->access:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->this$0:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer;->access:Ljava/lang/Object;

    check-cast v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->setterAccessIndex:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->setMethod:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$CachedProperty;->name:Ljava/lang/String;

    return-object v0
.end method
