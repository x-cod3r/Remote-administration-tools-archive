.class abstract Lcom/esotericsoftware/kryo/serializers/FieldSerializer$AsmCachedField;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;


# instance fields
.field access:Lcom/esotericsoftware/reflectasm/FieldAccess;

.field final synthetic this$0:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V
    .locals 1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$AsmCachedField;->this$0:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$AsmCachedField;->this$0:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->access:Ljava/lang/Object;

    check-cast v0, Lcom/esotericsoftware/reflectasm/FieldAccess;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$AsmCachedField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    return-void
.end method
