.class Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;

.field final synthetic val$connection:Lcom/esotericsoftware/kryonet/Connection;

.field final synthetic val$invokeMethod:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->this$1:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;

    iput-object p2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->val$connection:Lcom/esotericsoftware/kryonet/Connection;

    iput-object p3, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->val$target:Ljava/lang/Object;

    iput-object p4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->val$invokeMethod:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->this$1:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->this$0:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->val$connection:Lcom/esotericsoftware/kryonet/Connection;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->val$target:Ljava/lang/Object;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->val$invokeMethod:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    invoke-virtual {v0, v1, v2, v3}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->invoke(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;)V

    return-void
.end method
