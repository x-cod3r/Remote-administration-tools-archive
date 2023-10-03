.class Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;
.super Lcom/esotericsoftware/kryonet/Listener;


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->removeConnection(Lcom/esotericsoftware/kryonet/Connection;)V

    return-void
.end method

.method public received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v1, v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v1, v1

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v2, v2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->connections:[Lcom/esotericsoftware/kryonet/Connection;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_4

    :cond_2
    if-eq v0, v1, :cond_0

    :cond_3
    check-cast p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->idToObject:Lcom/esotericsoftware/kryo/util/IntMap;

    iget v1, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->objectID:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v1, v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->executor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    invoke-virtual {v1, p1, v0, p2}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->invoke(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v1, v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;-><init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
