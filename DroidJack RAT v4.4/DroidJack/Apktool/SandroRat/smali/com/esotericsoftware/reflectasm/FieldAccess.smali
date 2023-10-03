.class public abstract Lcom/esotericsoftware/reflectasm/FieldAccess;
.super Ljava/lang/Object;


# instance fields
.field private fieldNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/FieldAccess;
    .locals 12

    const/4 v1, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    array-length v2, v9

    :goto_3
    if-ge v1, v2, :cond_4

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "FieldAccess"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reflectasm."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_4
    invoke-static {p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    invoke-virtual {v10, v7}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_5
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/reflectasm/FieldAccess;

    iput-object v9, v0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    const/16 v0, 0x2e

    const/16 v2, 0x2f

    :try_start_3
    invoke-virtual {v7, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lb/a/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/g;-><init>(I)V

    const v1, 0x3002d

    const/16 v2, 0x21

    const/4 v4, 0x0

    const-string v5, "com/esotericsoftware/reflectasm/FieldAccess"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lb/a/a/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertConstructor(Lb/a/a/g;)V

    invoke-static {v0, v11, v8}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetObject(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v0, v11, v8}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetObject(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v1, Lb/a/a/s;->b:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->b:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->d:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->d:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->e:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->e:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->f:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->f:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->h:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->h:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->i:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->i:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->g:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->g:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->c:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    sget-object v1, Lb/a/a/s;->c:Lb/a/a/s;

    invoke-static {v0, v11, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V

    invoke-static {v0, v11, v8}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetString(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lb/a/a/g;->a()V

    invoke-virtual {v0}, Lb/a/a/g;->b()[B

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error constructing field access class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move-object v7, v0

    goto/16 :goto_4
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

    const-string v3, "com/esotericsoftware/reflectasm/FieldAccess"

    const-string v4, "<init>"

    const-string v5, "()V"

    invoke-virtual {v0, v2, v3, v4, v5}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb1

    invoke-virtual {v0, v2}, Lb/a/a/p;->a(I)V

    invoke-virtual {v0, v1, v1}, Lb/a/a/p;->d(II)V

    invoke-virtual {v0}, Lb/a/a/p;->c()V

    return-void
.end method

.method private static insertGetObject(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12

    const/4 v6, 0x6

    const/4 v1, 0x1

    const-string v2, "get"

    const-string v3, "(Ljava/lang/Object;I)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/p;->b()V

    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->b(II)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v7, 0x5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v9, v1, [Lb/a/a/o;

    const/4 v1, 0x0

    array-length v2, v9

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lb/a/a/o;

    invoke-direct {v3}, Lb/a/a/o;-><init>()V

    aput-object v3, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v10, Lb/a/a/o;

    invoke-direct {v10}, Lb/a/a/o;-><init>()V

    const/4 v1, 0x0

    array-length v2, v9

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, v10, v9}, Lb/a/a/p;->a(IILb/a/a/o;[Lb/a/a/o;)V

    const/4 v1, 0x0

    array-length v11, v9

    move v8, v1

    :goto_1
    if-ge v8, v11, :cond_1

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/reflect/Field;

    aget-object v1, v9, v8

    invoke-virtual {v0, v1}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->b(II)V

    const/16 v1, 0xc0

    invoke-virtual {v0, v1, p1}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v1, 0xb4

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lb/a/a/s;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lb/a/a/p;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/s;->a(Ljava/lang/Class;)Lb/a/a/s;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/s;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_2
    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lb/a/a/p;->a(I)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1

    :pswitch_0
    const/16 v1, 0xb8

    const-string v2, "java/lang/Boolean"

    const-string v3, "valueOf"

    const-string v4, "(Z)Ljava/lang/Boolean;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const/16 v1, 0xb8

    const-string v2, "java/lang/Byte"

    const-string v3, "valueOf"

    const-string v4, "(B)Ljava/lang/Byte;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const/16 v1, 0xb8

    const-string v2, "java/lang/Character"

    const-string v3, "valueOf"

    const-string v4, "(C)Ljava/lang/Character;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const/16 v1, 0xb8

    const-string v2, "java/lang/Short"

    const-string v3, "valueOf"

    const-string v4, "(S)Ljava/lang/Short;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const/16 v1, 0xb8

    const-string v2, "java/lang/Integer"

    const-string v3, "valueOf"

    const-string v4, "(I)Ljava/lang/Integer;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const/16 v1, 0xb8

    const-string v2, "java/lang/Float"

    const-string v3, "valueOf"

    const-string v4, "(F)Ljava/lang/Float;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const/16 v1, 0xb8

    const-string v2, "java/lang/Long"

    const-string v3, "valueOf"

    const-string v4, "(J)Ljava/lang/Long;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    const/16 v1, 0xb8

    const-string v2, "java/lang/Double"

    const-string v3, "valueOf"

    const-string v4, "(D)Ljava/lang/Double;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v10}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move v1, v7

    :goto_3
    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lb/a/a/p;)Lb/a/a/p;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->d(II)V

    invoke-virtual {v0}, Lb/a/a/p;->c()V

    return-void

    :cond_2
    move v1, v6

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static insertGetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V
    .locals 17

    const/4 v7, 0x6

    invoke-virtual/range {p3 .. p3}, Lb/a/a/s;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lb/a/a/s;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v3, "get"

    const/16 v1, 0xb0

    move v8, v1

    :goto_0
    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/lang/Object;I)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lb/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/p;->b()V

    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lb/a/a/p;->b(II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v10, 0x5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v13, v2, [Lb/a/a/o;

    new-instance v14, Lb/a/a/o;

    invoke-direct {v14}, Lb/a/a/o;-><init>()V

    const/4 v9, 0x0

    const/4 v2, 0x0

    array-length v4, v13

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/s;->a(Ljava/lang/Class;)Lb/a/a/s;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lb/a/a/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lb/a/a/o;

    invoke-direct {v2}, Lb/a/a/o;-><init>()V

    aput-object v2, v13, v3

    move v2, v9

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v9, v2

    goto :goto_1

    :pswitch_0
    const-string v3, "getBoolean"

    const/16 v1, 0xac

    move v8, v1

    goto :goto_0

    :pswitch_1
    const-string v3, "getByte"

    const/16 v1, 0xac

    move v8, v1

    goto :goto_0

    :pswitch_2
    const-string v3, "getChar"

    const/16 v1, 0xac

    move v8, v1

    goto :goto_0

    :pswitch_3
    const-string v3, "getShort"

    const/16 v1, 0xac

    move v8, v1

    goto :goto_0

    :pswitch_4
    const-string v3, "getInt"

    const/16 v1, 0xac

    move v8, v1

    goto :goto_0

    :pswitch_5
    const-string v3, "getFloat"

    const/16 v1, 0xae

    move v8, v1

    goto/16 :goto_0

    :pswitch_6
    const-string v3, "getLong"

    const/16 v1, 0xad

    move v8, v1

    goto/16 :goto_0

    :pswitch_7
    const-string v3, "getDouble"

    const/16 v1, 0xaf

    move v8, v1

    goto/16 :goto_0

    :cond_0
    aput-object v14, v13, v3

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    new-instance v15, Lb/a/a/o;

    invoke-direct {v15}, Lb/a/a/o;-><init>()V

    const/4 v2, 0x0

    array-length v3, v13

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3, v15, v13}, Lb/a/a/p;->a(IILb/a/a/o;[Lb/a/a/o;)V

    const/4 v2, 0x0

    array-length v0, v13

    move/from16 v16, v0

    move v11, v2

    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/reflect/Field;

    aget-object v2, v13, v11

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v13, v11

    invoke-virtual {v1, v2}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lb/a/a/p;->b(II)V

    const/16 v2, 0xc0

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v2, 0xb4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v3, v12}, Lb/a/a/p;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lb/a/a/p;->a(I)V

    :cond_2
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_3

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v1, v14}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual/range {p3 .. p3}, Lb/a/a/s;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lb/a/a/p;Ljava/lang/String;)Lb/a/a/p;

    :cond_4
    invoke-virtual {v1, v15}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move v2, v10

    :goto_4
    invoke-static {v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lb/a/a/p;)Lb/a/a/p;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lb/a/a/p;->d(II)V

    invoke-virtual {v1}, Lb/a/a/p;->c()V

    return-void

    :cond_5
    move v2, v7

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static insertGetString(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13

    const/4 v6, 0x6

    const/4 v1, 0x1

    const-string v2, "getString"

    const-string v3, "(Ljava/lang/Object;I)Ljava/lang/String;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/p;->b()V

    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->b(II)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v7, 0x5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v9, v1, [Lb/a/a/o;

    new-instance v10, Lb/a/a/o;

    invoke-direct {v10}, Lb/a/a/o;-><init>()V

    const/4 v6, 0x0

    const/4 v1, 0x0

    array-length v3, v9

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lb/a/a/o;

    invoke-direct {v1}, Lb/a/a/o;-><init>()V

    aput-object v1, v9, v2

    move v1, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v6, v1

    goto :goto_0

    :cond_0
    aput-object v10, v9, v2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v11, Lb/a/a/o;

    invoke-direct {v11}, Lb/a/a/o;-><init>()V

    const/4 v1, 0x0

    array-length v2, v9

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, v11, v9}, Lb/a/a/p;->a(IILb/a/a/o;[Lb/a/a/o;)V

    const/4 v1, 0x0

    array-length v12, v9

    move v8, v1

    :goto_2
    if-ge v8, v12, :cond_3

    aget-object v1, v9, v8

    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, v9, v8

    invoke-virtual {v0, v1}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->b(II)V

    const/16 v1, 0xc0

    invoke-virtual {v0, v1, p1}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v2, 0xb4

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Ljava/lang/String;"

    invoke-virtual {v0, v2, p1, v1, v3}, Lb/a/a/p;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lb/a/a/p;->a(I)V

    :cond_2
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v0, v10}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const-string v1, "String"

    invoke-static {v0, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lb/a/a/p;Ljava/lang/String;)Lb/a/a/p;

    :cond_4
    invoke-virtual {v0, v11}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move v1, v7

    :goto_3
    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lb/a/a/p;)Lb/a/a/p;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->d(II)V

    invoke-virtual {v0}, Lb/a/a/p;->c()V

    return-void

    :cond_5
    move v1, v6

    goto :goto_3
.end method

.method private static insertSetObject(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13

    const/4 v6, 0x6

    const/4 v1, 0x1

    const-string v2, "set"

    const-string v3, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/p;->b()V

    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->b(II)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v7, 0x5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v9, v1, [Lb/a/a/o;

    const/4 v1, 0x0

    array-length v2, v9

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lb/a/a/o;

    invoke-direct {v3}, Lb/a/a/o;-><init>()V

    aput-object v3, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v10, Lb/a/a/o;

    invoke-direct {v10}, Lb/a/a/o;-><init>()V

    const/4 v1, 0x0

    array-length v2, v9

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, v10, v9}, Lb/a/a/p;->a(IILb/a/a/o;[Lb/a/a/o;)V

    const/4 v1, 0x0

    array-length v11, v9

    move v8, v1

    :goto_1
    if-ge v8, v11, :cond_1

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/s;->a(Ljava/lang/Class;)Lb/a/a/s;

    move-result-object v12

    aget-object v1, v9, v8

    invoke-virtual {v0, v1}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->b(II)V

    const/16 v1, 0xc0

    invoke-virtual {v0, v1, p1}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v1, 0x19

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->b(II)V

    invoke-virtual {v12}, Lb/a/a/s;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_2
    const/16 v1, 0xb5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lb/a/a/s;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lb/a/a/p;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lb/a/a/p;->a(I)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1

    :pswitch_0
    const/16 v1, 0xc0

    const-string v2, "java/lang/Boolean"

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Boolean"

    const-string v3, "booleanValue"

    const-string v4, "()Z"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const/16 v1, 0xc0

    const-string v2, "java/lang/Byte"

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Byte"

    const-string v3, "byteValue"

    const-string v4, "()B"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const/16 v1, 0xc0

    const-string v2, "java/lang/Character"

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Character"

    const-string v3, "charValue"

    const-string v4, "()C"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const/16 v1, 0xc0

    const-string v2, "java/lang/Short"

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Short"

    const-string v3, "shortValue"

    const-string v4, "()S"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const/16 v1, 0xc0

    const-string v2, "java/lang/Integer"

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Integer"

    const-string v3, "intValue"

    const-string v4, "()I"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const/16 v1, 0xc0

    const-string v2, "java/lang/Float"

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Float"

    const-string v3, "floatValue"

    const-string v4, "()F"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    const/16 v1, 0xc0

    const-string v2, "java/lang/Long"

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Long"

    const-string v3, "longValue"

    const-string v4, "()J"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_7
    const/16 v1, 0xc0

    const-string v2, "java/lang/Double"

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Double"

    const-string v3, "doubleValue"

    const-string v4, "()D"

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_8
    const/16 v1, 0xc0

    invoke-virtual {v12}, Lb/a/a/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_9
    const/16 v1, 0xc0

    invoke-virtual {v12}, Lb/a/a/s;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0, v10}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move v1, v7

    :goto_3
    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lb/a/a/p;)Lb/a/a/p;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lb/a/a/p;->d(II)V

    invoke-virtual {v0}, Lb/a/a/p;->c()V

    return-void

    :cond_2
    move v1, v6

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static insertSetPrimitive(Lb/a/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lb/a/a/s;)V
    .locals 17

    const/4 v9, 0x6

    const/4 v2, 0x4

    invoke-virtual/range {p3 .. p3}, Lb/a/a/s;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lb/a/a/s;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v3, "set"

    const/16 v1, 0x19

    move v7, v1

    move v8, v2

    :goto_0
    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/lang/Object;I"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")V"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lb/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/p;->b()V

    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lb/a/a/p;->b(II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v10, 0x5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v13, v2, [Lb/a/a/o;

    new-instance v14, Lb/a/a/o;

    invoke-direct {v14}, Lb/a/a/o;-><init>()V

    const/4 v9, 0x0

    const/4 v2, 0x0

    array-length v4, v13

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/s;->a(Ljava/lang/Class;)Lb/a/a/s;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lb/a/a/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lb/a/a/o;

    invoke-direct {v2}, Lb/a/a/o;-><init>()V

    aput-object v2, v13, v3

    move v2, v9

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v9, v2

    goto :goto_1

    :pswitch_0
    const-string v3, "setBoolean"

    const/16 v1, 0x15

    move v7, v1

    move v8, v2

    goto :goto_0

    :pswitch_1
    const-string v3, "setByte"

    const/16 v1, 0x15

    move v7, v1

    move v8, v2

    goto :goto_0

    :pswitch_2
    const-string v3, "setChar"

    const/16 v1, 0x15

    move v7, v1

    move v8, v2

    goto :goto_0

    :pswitch_3
    const-string v3, "setShort"

    const/16 v1, 0x15

    move v7, v1

    move v8, v2

    goto/16 :goto_0

    :pswitch_4
    const-string v3, "setInt"

    const/16 v1, 0x15

    move v7, v1

    move v8, v2

    goto/16 :goto_0

    :pswitch_5
    const-string v3, "setFloat"

    const/16 v1, 0x17

    move v7, v1

    move v8, v2

    goto/16 :goto_0

    :pswitch_6
    const-string v3, "setLong"

    const/16 v1, 0x16

    const/4 v2, 0x5

    move v7, v1

    move v8, v2

    goto/16 :goto_0

    :pswitch_7
    const-string v3, "setDouble"

    const/16 v1, 0x18

    const/4 v2, 0x5

    move v7, v1

    move v8, v2

    goto/16 :goto_0

    :cond_0
    aput-object v14, v13, v3

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    new-instance v15, Lb/a/a/o;

    invoke-direct {v15}, Lb/a/a/o;-><init>()V

    const/4 v2, 0x0

    array-length v3, v13

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3, v15, v13}, Lb/a/a/p;->a(IILb/a/a/o;[Lb/a/a/o;)V

    const/4 v2, 0x0

    array-length v0, v13

    move/from16 v16, v0

    move v11, v2

    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_3

    aget-object v2, v13, v11

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v13, v11

    invoke-virtual {v1, v2}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lb/a/a/p;->b(II)V

    const/16 v2, 0xc0

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v7, v2}, Lb/a/a/p;->b(II)V

    const/16 v3, 0xb5

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v3, v0, v2, v12}, Lb/a/a/p;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Lb/a/a/p;->a(I)V

    :cond_2
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_3

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v1, v14}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual/range {p3 .. p3}, Lb/a/a/s;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lb/a/a/p;Ljava/lang/String;)Lb/a/a/p;

    :cond_4
    invoke-virtual {v1, v15}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move v2, v10

    :goto_4
    invoke-static {v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lb/a/a/p;)Lb/a/a/p;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Lb/a/a/p;->d(II)V

    invoke-virtual {v1}, Lb/a/a/p;->c()V

    return-void

    :cond_5
    move v2, v9

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static insertThrowExceptionForFieldNotFound(Lb/a/a/p;)Lb/a/a/p;
    .locals 5

    const/16 v2, 0xbb

    const/16 v4, 0xb7

    const/16 v3, 0xb6

    const/16 v1, 0x59

    const-string v0, "java/lang/IllegalArgumentException"

    invoke-virtual {p0, v2, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lb/a/a/p;->a(I)V

    const-string v0, "java/lang/StringBuilder"

    invoke-virtual {p0, v2, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lb/a/a/p;->a(I)V

    const-string v0, "Field not found: "

    invoke-virtual {p0, v0}, Lb/a/a/p;->a(Ljava/lang/Object;)V

    const-string v0, "java/lang/StringBuilder"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v4, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lb/a/a/p;->b(II)V

    const-string v0, "java/lang/StringBuilder"

    const-string v1, "append"

    const-string v2, "(I)Ljava/lang/StringBuilder;"

    invoke-virtual {p0, v3, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/StringBuilder"

    const-string v1, "toString"

    const-string v2, "()Ljava/lang/String;"

    invoke-virtual {p0, v3, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/IllegalArgumentException"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v4, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lb/a/a/p;->a(I)V

    return-object p0
.end method

.method private static insertThrowExceptionForFieldType(Lb/a/a/p;Ljava/lang/String;)Lb/a/a/p;
    .locals 5

    const/16 v2, 0xbb

    const/16 v4, 0xb7

    const/16 v3, 0xb6

    const/16 v1, 0x59

    const-string v0, "java/lang/IllegalArgumentException"

    invoke-virtual {p0, v2, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lb/a/a/p;->a(I)V

    const-string v0, "java/lang/StringBuilder"

    invoke-virtual {p0, v2, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lb/a/a/p;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field not declared as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/p;->a(Ljava/lang/Object;)V

    const-string v0, "java/lang/StringBuilder"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v4, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lb/a/a/p;->b(II)V

    const-string v0, "java/lang/StringBuilder"

    const-string v1, "append"

    const-string v2, "(I)Ljava/lang/StringBuilder;"

    invoke-virtual {p0, v3, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/StringBuilder"

    const-string v1, "toString"

    const-string v2, "()Ljava/lang/String;"

    invoke-virtual {p0, v3, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/IllegalArgumentException"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v4, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lb/a/a/p;->a(I)V

    return-object p0
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBoolean(Ljava/lang/Object;I)Z
.end method

.method public abstract getByte(Ljava/lang/Object;I)B
.end method

.method public abstract getChar(Ljava/lang/Object;I)C
.end method

.method public abstract getDouble(Ljava/lang/Object;I)D
.end method

.method public getFieldNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract getFloat(Ljava/lang/Object;I)F
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find public field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getInt(Ljava/lang/Object;I)I
.end method

.method public abstract getLong(Ljava/lang/Object;I)J
.end method

.method public abstract getShort(Ljava/lang/Object;I)S
.end method

.method public abstract getString(Ljava/lang/Object;I)Ljava/lang/String;
.end method

.method public abstract set(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public abstract setBoolean(Ljava/lang/Object;IZ)V
.end method

.method public abstract setByte(Ljava/lang/Object;IB)V
.end method

.method public abstract setChar(Ljava/lang/Object;IC)V
.end method

.method public abstract setDouble(Ljava/lang/Object;ID)V
.end method

.method public abstract setFloat(Ljava/lang/Object;IF)V
.end method

.method public abstract setInt(Ljava/lang/Object;II)V
.end method

.method public abstract setLong(Ljava/lang/Object;IJ)V
.end method

.method public abstract setShort(Ljava/lang/Object;IS)V
.end method
