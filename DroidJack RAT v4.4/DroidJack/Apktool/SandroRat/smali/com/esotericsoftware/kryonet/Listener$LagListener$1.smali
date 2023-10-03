.class Lcom/esotericsoftware/kryonet/Listener$LagListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryonet/Listener$LagListener;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryonet/Listener$LagListener;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener$1;->this$0:Lcom/esotericsoftware/kryonet/Listener$LagListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener$1;->this$0:Lcom/esotericsoftware/kryonet/Listener$LagListener;

    iget-object v1, v0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->runnables:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener$1;->this$0:Lcom/esotericsoftware/kryonet/Listener$LagListener;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->runnables:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
