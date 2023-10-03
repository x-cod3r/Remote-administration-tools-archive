.class public interface abstract Lcom/esotericsoftware/kryonet/rmi/RemoteObject;
.super Ljava/lang/Object;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getConnection()Lcom/esotericsoftware/kryonet/Connection;
.end method

.method public abstract getLastResponseID()B
.end method

.method public abstract setNonBlocking(Z)V
.end method

.method public abstract setResponseTimeout(I)V
.end method

.method public abstract setTransmitExceptions(Z)V
.end method

.method public abstract setTransmitReturnValue(Z)V
.end method

.method public abstract waitForLastResponse()Ljava/lang/Object;
.end method

.method public abstract waitForResponse(B)Ljava/lang/Object;
.end method
