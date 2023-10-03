.class Lcom/esotericsoftware/kryonet/Listener$QueuedListener$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryonet/Listener$QueuedListener;

.field final synthetic val$connection:Lcom/esotericsoftware/kryonet/Connection;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryonet/Listener$QueuedListener;Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$4;->this$0:Lcom/esotericsoftware/kryonet/Listener$QueuedListener;

    iput-object p2, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$4;->val$connection:Lcom/esotericsoftware/kryonet/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$4;->this$0:Lcom/esotericsoftware/kryonet/Listener$QueuedListener;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;->listener:Lcom/esotericsoftware/kryonet/Listener;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$4;->val$connection:Lcom/esotericsoftware/kryonet/Connection;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryonet/Listener;->idle(Lcom/esotericsoftware/kryonet/Connection;)V

    return-void
.end method
