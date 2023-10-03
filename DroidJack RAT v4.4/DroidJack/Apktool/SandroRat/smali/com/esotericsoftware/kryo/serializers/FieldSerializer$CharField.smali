.class Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CharField;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$AsmCachedField;


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CharField;->this$0:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$AsmCachedField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CharField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CharField;->accessIndex:I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CharField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v3, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CharField;->accessIndex:I

    invoke-virtual {v2, p1, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getChar(Ljava/lang/Object;I)C

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->setChar(Ljava/lang/Object;IC)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CharField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CharField;->accessIndex:I

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readChar()C

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->setChar(Ljava/lang/Object;IC)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CharField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CharField;->accessIndex:I

    invoke-virtual {v0, p2, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getChar(Ljava/lang/Object;I)C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeChar(C)V

    return-void
.end method
