.class Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;
.super Lcom/esotericsoftware/kryonet/Listener;


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

.field final synthetic val$objectID:I


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iput p2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->val$objectID:I

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->close()V

    return-void
.end method

.method public received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    iget v0, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->objectID:I

    iget v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->val$objectID:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseTable:Ljava/util/concurrent/ConcurrentHashMap;

    iget-byte v1, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->responseID:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->responseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget-object v1, v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
