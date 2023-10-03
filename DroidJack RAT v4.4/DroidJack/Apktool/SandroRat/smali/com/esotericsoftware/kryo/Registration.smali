.class public Lcom/esotericsoftware/kryo/Registration;
.super Ljava/lang/Object;


# instance fields
.field private final id:I

.field private instantiator:Lb/b/a/a;

.field private serializer:Lcom/esotericsoftware/kryo/Serializer;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Registration;->type:Ljava/lang/Class;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/Registration;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    iput p3, p0, Lcom/esotericsoftware/kryo/Registration;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/Registration;->id:I

    return v0
.end method

.method public getInstantiator()Lb/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Registration;->instantiator:Lb/b/a/a;

    return-object v0
.end method

.method public getSerializer()Lcom/esotericsoftware/kryo/Serializer;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Registration;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Registration;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public setInstantiator(Lb/b/a/a;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "instantiator cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Registration;->instantiator:Lb/b/a/a;

    return-void
.end method

.method public setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Registration;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/esotericsoftware/kryo/Registration;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Registration;->type:Ljava/lang/Class;

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
