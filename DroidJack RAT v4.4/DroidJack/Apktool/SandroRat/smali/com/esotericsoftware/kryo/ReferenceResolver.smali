.class public interface abstract Lcom/esotericsoftware/kryo/ReferenceResolver;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addReadObject(ILjava/lang/Object;)V
.end method

.method public abstract addWrittenObject(Ljava/lang/Object;)I
.end method

.method public abstract getReadObject(Ljava/lang/Class;I)Ljava/lang/Object;
.end method

.method public abstract getWrittenId(Ljava/lang/Object;)I
.end method

.method public abstract nextReadId(Ljava/lang/Class;)I
.end method

.method public abstract reset()V
.end method

.method public abstract setKryo(Lcom/esotericsoftware/kryo/Kryo;)V
.end method

.method public abstract useReferences(Ljava/lang/Class;)Z
.end method
