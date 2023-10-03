.class final Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$4;
.super Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v1

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v0

    const-string v2, "connection"

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryonet/Connection;

    invoke-static {v0, v1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->getRegisteredObject(Lcom/esotericsoftware/kryonet/Connection;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p3}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->objectID:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    return-void
.end method
