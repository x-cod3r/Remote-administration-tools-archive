.class Lcom/esotericsoftware/kryo/serializers/FieldSerializer$DoubleField;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$AsmCachedField;


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$DoubleField;->this$0:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$AsmCachedField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$DoubleField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$DoubleField;->accessIndex:I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$DoubleField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v3, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$DoubleField;->accessIndex:I

    invoke-virtual {v2, p1, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->setDouble(Ljava/lang/Object;ID)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$DoubleField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$DoubleField;->accessIndex:I

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v2

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->setDouble(Ljava/lang/Object;ID)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$DoubleField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$DoubleField;->accessIndex:I

    invoke-virtual {v0, p2, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    return-void
.end method
