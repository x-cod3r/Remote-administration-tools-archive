.class public Lcom/esotericsoftware/kryonet/Listener$LagListener;
.super Lcom/esotericsoftware/kryonet/Listener$QueuedListener;


# instance fields
.field private final lagMillisMax:I

.field private final lagMillisMin:I

.field final runnables:Ljava/util/LinkedList;

.field private final threadPool:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(IILcom/esotericsoftware/kryonet/Listener;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;-><init>(Lcom/esotericsoftware/kryonet/Listener;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->runnables:Ljava/util/LinkedList;

    iput p1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->lagMillisMin:I

    iput p2, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->lagMillisMax:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->threadPool:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public queue(Ljava/lang/Runnable;)V
    .locals 6

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->runnables:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->runnables:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->lagMillisMin:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->lagMillisMax:I

    iget v4, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->lagMillisMin:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->threadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/esotericsoftware/kryonet/Listener$LagListener$1;

    invoke-direct {v2, p0}, Lcom/esotericsoftware/kryonet/Listener$LagListener$1;-><init>(Lcom/esotericsoftware/kryonet/Listener$LagListener;)V

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
