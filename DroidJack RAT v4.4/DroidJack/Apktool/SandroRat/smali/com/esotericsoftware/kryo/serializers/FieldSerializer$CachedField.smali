.class public abstract Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
.super Ljava/lang/Object;


# instance fields
.field accessIndex:I

.field canBeNull:Z

.field field:Ljava/lang/reflect/Field;

.field serializer:Lcom/esotericsoftware/kryo/Serializer;

.field final synthetic this$0:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

.field valueClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V
    .locals 1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->this$0:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->accessIndex:I

    return-void
.end method


# virtual methods
.method public abstract copy(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public abstract read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
.end method

.method public setCanBeNull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->canBeNull:Z

    return-void
.end method

.method public setClass(Ljava/lang/Class;)V
    .locals 1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public setClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
.end method
