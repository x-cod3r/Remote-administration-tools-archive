.class public interface abstract Lcom/esotericsoftware/kryonet/EndPoint;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public abstract addListener(Lcom/esotericsoftware/kryonet/Listener;)V
.end method

.method public abstract close()V
.end method

.method public abstract getKryo()Lcom/esotericsoftware/kryo/Kryo;
.end method

.method public abstract getSerialization()Lcom/esotericsoftware/kryonet/Serialization;
.end method

.method public abstract getUpdateThread()Ljava/lang/Thread;
.end method

.method public abstract removeListener(Lcom/esotericsoftware/kryonet/Listener;)V
.end method

.method public abstract run()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract update(I)V
.end method
