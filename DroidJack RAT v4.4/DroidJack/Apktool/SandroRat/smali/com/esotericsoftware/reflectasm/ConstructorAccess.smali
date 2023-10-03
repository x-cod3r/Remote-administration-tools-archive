.class public abstract Lcom/esotericsoftware/reflectasm/ConstructorAccess;
.super Ljava/lang/Object;


# instance fields
.field isNonStaticMemberClass:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v7, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ConstructorAccess"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "java."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reflectasm."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_1
    invoke-static {p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    invoke-virtual {v10, v8}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_2
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;

    iput-boolean v7, v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->isNonStaticMemberClass:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-object v0

    :cond_0
    move v7, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x2e

    const/16 v3, 0x2f

    :try_start_3
    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    if-nez v7, :cond_1

    const/4 v0, 0x0

    :try_start_4
    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v9, v2

    :goto_3
    :try_start_5
    new-instance v0, Lb/a/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/g;-><init>(I)V

    const v1, 0x3002d

    const/16 v2, 0x21

    const/4 v4, 0x0

    const-string v5, "com/esotericsoftware/reflectasm/ConstructorAccess"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lb/a/a/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertConstructor(Lb/a/a/g;)V

    invoke-static {v0, v11}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertNewInstance(Lb/a/a/g;Ljava/lang/String;)V

    invoke-static {v0, v11, v9}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertNewInstanceInner(Lb/a/a/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/g;->a()V

    invoke-virtual {v0}, Lb/a/a/g;->b()[B

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_1
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    const/4 v1, 0x1

    :try_start_7
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v9, v0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-static member class cannot be created (missing enclosing class constructor): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error constructing constructor access class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move-object v8, v0

    goto/16 :goto_1
.end method

.method private static insertConstructor(Lb/a/a/g;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    const-string v2, "<init>"

    const-string v3, "()V"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lb/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/p;->b()V

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lb/a/a/p;->b(II)V

    const/16 v2, 0xb7

    const-string v3, "com/esotericsoftware/reflectasm/ConstructorAccess"

    const-string v4, "<init>"

    const-string v5, "()V"

    invoke-virtual {v0, v2, v3, v4, v5}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb1

    invoke-virtual {v0, v2}, Lb/a/a/p;->a(I)V

    invoke-virtual {v0, v1, v1}, Lb/a/a/p;->d(II)V

    invoke-virtual {v0}, Lb/a/a/p;->c()V

    return-void
.end method

.method static insertNewInstance(Lb/a/a/g;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    const-string v2, "newInstance"

    const-string v3, "()Ljava/lang/Object;"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lb/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/p;->b()V

    const/16 v2, 0xbb

    invoke-virtual {v0, v2, p1}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v2, 0x59

    invoke-virtual {v0, v2}, Lb/a/a/p;->a(I)V

    const/16 v2, 0xb7

    const-string v3, "<init>"

    const-string v4, "()V"

    invoke-virtual {v0, v2, p1, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb0

    invoke-virtual {v0, v2}, Lb/a/a/p;->a(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lb/a/a/p;->d(II)V

    invoke-virtual {v0}, Lb/a/a/p;->c()V

    return-void
.end method

.method static insertNewInstanceInner(Lb/a/a/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0xbb

    const/16 v8, 0xb7

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/16 v6, 0x59

    const-string v2, "newInstance"

    const-string v3, "(Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/p;->b()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, v9, p1}, Lb/a/a/p;->a(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lb/a/a/p;->a(I)V

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lb/a/a/p;->b(II)V

    const/16 v1, 0xc0

    invoke-virtual {v0, v1, p2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lb/a/a/p;->a(I)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Object"

    const-string v3, "getClass"

    const-string v4, "()Ljava/lang/Class;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lb/a/a/p;->a(I)V

    const-string v1, "<init>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";)V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, p1, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lb/a/a/p;->a(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v7}, Lb/a/a/p;->d(II)V

    :goto_0
    invoke-virtual {v0}, Lb/a/a/p;->c()V

    return-void

    :cond_0
    const-string v1, "java/lang/UnsupportedOperationException"

    invoke-virtual {v0, v9, v1}, Lb/a/a/p;->a(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lb/a/a/p;->a(I)V

    const-string v1, "Not an inner class."

    invoke-virtual {v0, v1}, Lb/a/a/p;->a(Ljava/lang/Object;)V

    const-string v1, "java/lang/UnsupportedOperationException"

    const-string v2, "<init>"

    const-string v3, "(Ljava/lang/String;)V"

    invoke-virtual {v0, v8, v1, v2, v3}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lb/a/a/p;->a(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Lb/a/a/p;->d(II)V

    goto :goto_0
.end method


# virtual methods
.method public isNonStaticMemberClass()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->isNonStaticMemberClass:Z

    return v0
.end method

.method public abstract newInstance()Ljava/lang/Object;
.end method

.method public abstract newInstance(Ljava/lang/Object;)Ljava/lang/Object;
.end method
