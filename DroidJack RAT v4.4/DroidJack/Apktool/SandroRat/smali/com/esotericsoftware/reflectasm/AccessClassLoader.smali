.class Lcom/esotericsoftware/reflectasm/AccessClassLoader;
.super Ljava/lang/ClassLoader;


# static fields
.field private static final accessClassLoaders:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sget-object v3, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    sget-object v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    invoke-virtual {v0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    if-ne v5, v2, :cond_0

    monitor-exit v3

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    invoke-direct {v0, v2}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v1, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->accessClassLoaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "defineClass"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    array-length v0, p2

    invoke-virtual {p0, p1, p2, v5, v0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/esotericsoftware/reflectasm/FieldAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/esotericsoftware/reflectasm/FieldAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-class v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    goto :goto_0

    :cond_1
    const-class v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
