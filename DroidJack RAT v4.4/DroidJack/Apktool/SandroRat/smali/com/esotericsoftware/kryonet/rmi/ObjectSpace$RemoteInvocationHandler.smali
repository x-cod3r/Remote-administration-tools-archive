.class Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final connection:Lcom/esotericsoftware/kryonet/Connection;

.field private lastResponseID:Ljava/lang/Byte;

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nextResponseNum:B

.field private nonBlocking:Z

.field final objectID:I

.field final responseCondition:Ljava/util/concurrent/locks/Condition;

.field private responseListener:Lcom/esotericsoftware/kryonet/Listener;

.field final responseTable:Ljava/util/concurrent/ConcurrentHashMap;

.field private timeoutMillis:I

.field private transmitExceptions:Z

.field private transmitReturnValue:Z


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Connection;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->timeoutMillis:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->nonBlocking:Z

    iput-boolean v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->transmitReturnValue:Z

    iput-boolean v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->transmitExceptions:Z

    iput-byte v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->nextResponseNum:B

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseTable:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->connection:Lcom/esotericsoftware/kryonet/Connection;

    iput p2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->objectID:I

    new-instance v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;-><init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;I)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseListener:Lcom/esotericsoftware/kryonet/Listener;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseListener:Lcom/esotericsoftware/kryonet/Listener;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryonet/Connection;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    return-void
.end method

.method private waitForResponse(B)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->connection:Lcom/esotericsoftware/kryonet/Connection;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Connection;->getEndPoint()Lcom/esotericsoftware/kryonet/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/esotericsoftware/kryonet/EndPoint;->getUpdateThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot wait for an RMI response on the connection\'s update thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->timeoutMillis:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lastResponseID:Ljava/lang/Byte;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->result:Ljava/lang/Object;

    return-object v0

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryonet/rmi/TimeoutException;

    const-string v1, "Response timed out."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryonet/rmi/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseCondition:Ljava/util/concurrent/locks/Condition;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v2, v3, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method close()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->connection:Lcom/esotericsoftware/kryonet/Connection;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseListener:Lcom/esotericsoftware/kryonet/Listener;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryonet/Connection;->removeListener(Lcom/esotericsoftware/kryonet/Listener;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/esotericsoftware/kryonet/rmi/RemoteObject;

    if-ne v3, v4, :cond_d

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->close()V

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v3, "setResponseTimeout"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->timeoutMillis:I

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "setNonBlocking"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->nonBlocking:Z

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "setTransmitReturnValue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->transmitReturnValue:Z

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v3, "setTransmitExceptions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->transmitExceptions:Z

    move-object v0, v1

    goto :goto_0

    :cond_5
    const-string v1, "waitForLastResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lastResponseID:Ljava/lang/Byte;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no last response to wait for."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lastResponseID:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->waitForResponse(B)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v1, "getLastResponseID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lastResponseID:Ljava/lang/Byte;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no last response ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lastResponseID:Ljava/lang/Byte;

    goto/16 :goto_0

    :cond_9
    const-string v1, "waitForResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->transmitReturnValue:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->transmitExceptions:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->nonBlocking:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This RemoteObject is currently set to ignore all responses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->waitForResponse(B)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v1, "getConnection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->connection:Lcom/esotericsoftware/kryonet/Connection;

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invocation handler could not find RemoteObject method. Check ObjectSpace.java"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    if-ne v3, v4, :cond_f

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "<proxy>"

    goto/16 :goto_0

    :cond_e
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    new-instance v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    invoke-direct {v3}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;-><init>()V

    iget v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->objectID:I

    iput v4, v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->objectID:I

    iput-object p2, v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->method:Ljava/lang/reflect/Method;

    iput-object p3, v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->args:[Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->transmitReturnValue:Z

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->transmitExceptions:Z

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->nonBlocking:Z

    if-nez v4, :cond_15

    :cond_10
    :goto_1
    if-eqz v0, :cond_16

    monitor-enter p0

    :try_start_1
    iget-byte v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->nextResponseNum:B

    add-int/lit8 v4, v0, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->nextResponseNum:B

    iget-byte v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->nextResponseNum:B

    const/16 v5, 0x40

    if-ne v4, v5, :cond_11

    const/4 v4, 0x1

    iput-byte v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->nextResponseNum:B

    :cond_11
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->transmitReturnValue:Z

    if-eqz v4, :cond_12

    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    :cond_12
    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->transmitExceptions:Z

    if-eqz v4, :cond_13

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    :cond_13
    iput-byte v0, v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->responseID:B

    :goto_2
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->connection:Lcom/esotericsoftware/kryonet/Connection;

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    iget-byte v0, v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->responseID:B

    if-eqz v0, :cond_14

    iget-byte v0, v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->responseID:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lastResponseID:Ljava/lang/Byte;

    :cond_14
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->nonBlocking:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_16
    iput-byte v2, v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->responseID:B

    goto :goto_2

    :cond_17
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_18

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_18
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_19

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_1a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_1b

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_1c

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_0

    :cond_1c
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_1d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_0

    :cond_1d
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1e

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    :cond_1e
    move-object v0, v1

    goto/16 :goto_0

    :cond_1f
    :try_start_3
    iget-byte v0, v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->responseID:B

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->waitForResponse(B)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Exception;

    throw v0
    :try_end_3
    .catch Lcom/esotericsoftware/kryonet/rmi/TimeoutException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    new-instance v0, Lcom/esotericsoftware/kryonet/rmi/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response timed out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryonet/rmi/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
