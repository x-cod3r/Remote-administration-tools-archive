.class public abstract Lcom/esotericsoftware/reflectasm/MethodAccess;
.super Ljava/lang/Object;


# instance fields
.field private methodNames:[Ljava/lang/String;

.field private parameterTypes:[[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/MethodAccess;
    .locals 24

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p0

    :goto_0
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v7, v5, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v13, v3, [[Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v14, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    array-length v5, v14

    move v4, v3

    :goto_3
    if-ge v4, v5, :cond_4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v13, v4

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "MethodAccess"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "java."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reflectasm."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v15

    monitor-enter v15

    :try_start_0
    invoke-virtual {v15, v10}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :goto_5
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/reflectasm/MethodAccess;

    iput-object v14, v3, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    iput-object v13, v3, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    :catch_0
    move-exception v3

    const/16 v3, 0x2e

    const/16 v5, 0x2f

    :try_start_3
    invoke-virtual {v10, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    new-instance v3, Lb/a/a/g;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lb/a/a/g;-><init>(I)V

    const v4, 0x3002d

    const/16 v5, 0x21

    const/4 v7, 0x0

    const-string v8, "com/esotericsoftware/reflectasm/MethodAccess"

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lb/a/a/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x1

    const-string v5, "<init>"

    const-string v6, "()V"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lb/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v4

    invoke-virtual {v4}, Lb/a/a/p;->b()V

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lb/a/a/p;->b(II)V

    const/16 v5, 0xb7

    const-string v6, "com/esotericsoftware/reflectasm/MethodAccess"

    const-string v7, "<init>"

    const-string v8, "()V"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb1

    invoke-virtual {v4, v5}, Lb/a/a/p;->a(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lb/a/a/p;->d(II)V

    invoke-virtual {v4}, Lb/a/a/p;->c()V

    const/16 v4, 0x81

    const-string v5, "invoke"

    const-string v6, "(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lb/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lb/a/a/p;

    move-result-object v4

    invoke-virtual {v4}, Lb/a/a/p;->b()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    const/16 v5, 0x19

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lb/a/a/p;->b(II)V

    const/16 v5, 0xc0

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v5, 0x3a

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lb/a/a/p;->b(II)V

    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lb/a/a/p;->b(II)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lb/a/a/o;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    :goto_6
    if-ge v5, v6, :cond_5

    new-instance v7, Lb/a/a/o;

    invoke-direct {v7}, Lb/a/a/o;-><init>()V

    aput-object v7, v17, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    new-instance v18, Lb/a/a/o;

    invoke-direct/range {v18 .. v18}, Lb/a/a/o;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v5, v6, v0, v1}, Lb/a/a/p;->a(IILb/a/a/o;[Lb/a/a/o;)V

    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move v11, v5

    :goto_7
    move/from16 v0, v20

    if-ge v11, v0, :cond_8

    aget-object v5, v17, v11

    invoke-virtual {v4, v5}, Lb/a/a/p;->a(Lb/a/a/o;)V

    if-nez v11, :cond_6

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_8
    const/16 v5, 0x19

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lb/a/a/p;->b(II)V

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v5, 0x28

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v6, 0x0

    :goto_9
    array-length v8, v7

    if-ge v6, v8, :cond_7

    const/16 v8, 0x19

    const/4 v9, 0x3

    invoke-virtual {v4, v8, v9}, Lb/a/a/p;->b(II)V

    const/16 v8, 0x10

    invoke-virtual {v4, v8, v6}, Lb/a/a/p;->a(II)V

    const/16 v8, 0x32

    invoke-virtual {v4, v8}, Lb/a/a/p;->a(I)V

    aget-object v8, v7, v6

    invoke-static {v8}, Lb/a/a/s;->a(Ljava/lang/Class;)Lb/a/a/s;

    move-result-object v8

    invoke-virtual {v8}, Lb/a/a/s;->a()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_a
    invoke-virtual {v8}, Lb/a/a/s;->f()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_6
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_8

    :catchall_0
    move-exception v3

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :pswitch_0
    const/16 v9, 0xc0

    :try_start_4
    const-string v21, "java/lang/Boolean"

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v9, 0xb6

    const-string v21, "java/lang/Boolean"

    const-string v22, "booleanValue"

    const-string v23, "()Z"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v9, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_1
    const/16 v9, 0xc0

    const-string v21, "java/lang/Byte"

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v9, 0xb6

    const-string v21, "java/lang/Byte"

    const-string v22, "byteValue"

    const-string v23, "()B"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v9, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_2
    const/16 v9, 0xc0

    const-string v21, "java/lang/Character"

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v9, 0xb6

    const-string v21, "java/lang/Character"

    const-string v22, "charValue"

    const-string v23, "()C"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v9, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_3
    const/16 v9, 0xc0

    const-string v21, "java/lang/Short"

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v9, 0xb6

    const-string v21, "java/lang/Short"

    const-string v22, "shortValue"

    const-string v23, "()S"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v9, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_4
    const/16 v9, 0xc0

    const-string v21, "java/lang/Integer"

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v9, 0xb6

    const-string v21, "java/lang/Integer"

    const-string v22, "intValue"

    const-string v23, "()I"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v9, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_5
    const/16 v9, 0xc0

    const-string v21, "java/lang/Float"

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v9, 0xb6

    const-string v21, "java/lang/Float"

    const-string v22, "floatValue"

    const-string v23, "()F"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v9, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_6
    const/16 v9, 0xc0

    const-string v21, "java/lang/Long"

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v9, 0xb6

    const-string v21, "java/lang/Long"

    const-string v22, "longValue"

    const-string v23, "()J"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v9, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_7
    const/16 v9, 0xc0

    const-string v21, "java/lang/Double"

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v9, 0xb6

    const-string v21, "java/lang/Double"

    const-string v22, "doubleValue"

    const-string v23, "()D"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v9, v0, v1, v2}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_8
    const/16 v9, 0xc0

    invoke-virtual {v8}, Lb/a/a/s;->f()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    goto/16 :goto_a

    :pswitch_9
    const/16 v9, 0xc0

    invoke-virtual {v8}, Lb/a/a/s;->e()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lb/a/a/p;->a(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_7
    const/16 v6, 0x29

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lb/a/a/s;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xb6

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v4, v6, v0, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lb/a/a/s;->a(Ljava/lang/Class;)Lb/a/a/s;

    move-result-object v5

    invoke-virtual {v5}, Lb/a/a/s;->a()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :goto_b
    const/16 v5, 0xb0

    invoke-virtual {v4, v5}, Lb/a/a/p;->a(I)V

    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto/16 :goto_7

    :pswitch_a
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lb/a/a/p;->a(I)V

    goto :goto_b

    :pswitch_b
    const/16 v5, 0xb8

    const-string v6, "java/lang/Boolean"

    const-string v7, "valueOf"

    const-string v8, "(Z)Ljava/lang/Boolean;"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_c
    const/16 v5, 0xb8

    const-string v6, "java/lang/Byte"

    const-string v7, "valueOf"

    const-string v8, "(B)Ljava/lang/Byte;"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_d
    const/16 v5, 0xb8

    const-string v6, "java/lang/Character"

    const-string v7, "valueOf"

    const-string v8, "(C)Ljava/lang/Character;"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_e
    const/16 v5, 0xb8

    const-string v6, "java/lang/Short"

    const-string v7, "valueOf"

    const-string v8, "(S)Ljava/lang/Short;"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_f
    const/16 v5, 0xb8

    const-string v6, "java/lang/Integer"

    const-string v7, "valueOf"

    const-string v8, "(I)Ljava/lang/Integer;"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_10
    const/16 v5, 0xb8

    const-string v6, "java/lang/Float"

    const-string v7, "valueOf"

    const-string v8, "(F)Ljava/lang/Float;"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_11
    const/16 v5, 0xb8

    const-string v6, "java/lang/Long"

    const-string v7, "valueOf"

    const-string v8, "(J)Ljava/lang/Long;"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_12
    const/16 v5, 0xb8

    const-string v6, "java/lang/Double"

    const-string v7, "valueOf"

    const-string v8, "(D)Ljava/lang/Double;"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lb/a/a/p;->a(Lb/a/a/o;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lb/a/a/p;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_9
    const/16 v5, 0xbb

    const-string v6, "java/lang/IllegalArgumentException"

    invoke-virtual {v4, v5, v6}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v5, 0x59

    invoke-virtual {v4, v5}, Lb/a/a/p;->a(I)V

    const/16 v5, 0xbb

    const-string v6, "java/lang/StringBuilder"

    invoke-virtual {v4, v5, v6}, Lb/a/a/p;->a(ILjava/lang/String;)V

    const/16 v5, 0x59

    invoke-virtual {v4, v5}, Lb/a/a/p;->a(I)V

    const-string v5, "Method not found: "

    invoke-virtual {v4, v5}, Lb/a/a/p;->a(Ljava/lang/Object;)V

    const/16 v5, 0xb7

    const-string v6, "java/lang/StringBuilder"

    const-string v7, "<init>"

    const-string v8, "(Ljava/lang/String;)V"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lb/a/a/p;->b(II)V

    const/16 v5, 0xb6

    const-string v6, "java/lang/StringBuilder"

    const-string v7, "append"

    const-string v8, "(I)Ljava/lang/StringBuilder;"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb6

    const-string v6, "java/lang/StringBuilder"

    const-string v7, "toString"

    const-string v8, "()Ljava/lang/String;"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb7

    const-string v6, "java/lang/IllegalArgumentException"

    const-string v7, "<init>"

    const-string v8, "(Ljava/lang/String;)V"

    invoke-virtual {v4, v5, v6, v7, v8}, Lb/a/a/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xbf

    invoke-virtual {v4, v5}, Lb/a/a/p;->a(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lb/a/a/p;->d(II)V

    invoke-virtual {v4}, Lb/a/a/p;->c()V

    invoke-virtual {v3}, Lb/a/a/g;->a()V

    invoke-virtual {v3}, Lb/a/a/g;->b()[B

    move-result-object v3

    invoke-virtual {v15, v10, v3}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    goto/16 :goto_5

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error constructing method access class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_a
    move-object v10, v3

    goto/16 :goto_4

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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

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

    const-string v2, "Unable to find public method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getIndex(Ljava/lang/String;[Ljava/lang/Class;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

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

    const-string v2, "Unable to find public method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethodNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    return-object v0
.end method

.method public varargs abstract invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/MethodAccess;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
