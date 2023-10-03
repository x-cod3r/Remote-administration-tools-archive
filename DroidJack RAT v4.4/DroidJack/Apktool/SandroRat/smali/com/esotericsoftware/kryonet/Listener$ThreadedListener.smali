.class public Lcom/esotericsoftware/kryonet/Listener$ThreadedListener;
.super Lcom/esotericsoftware/kryonet/Listener$QueuedListener;


# instance fields
.field protected final threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryonet/Listener$ThreadedListener;-><init>(Lcom/esotericsoftware/kryonet/Listener;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryonet/Listener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;-><init>(Lcom/esotericsoftware/kryonet/Listener;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "threadPool cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/esotericsoftware/kryonet/Listener$ThreadedListener;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public queue(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$ThreadedListener;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
