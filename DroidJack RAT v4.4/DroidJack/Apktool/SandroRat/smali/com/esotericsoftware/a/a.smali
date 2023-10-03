.class public Lcom/esotericsoftware/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/esotericsoftware/a/j;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/esotericsoftware/a/q;

.field private final e:Lcom/esotericsoftware/a/l;

.field private final f:Lcom/esotericsoftware/a/l;

.field private final g:Lcom/esotericsoftware/a/l;

.field private final h:Lcom/esotericsoftware/a/l;

.field private final i:Lcom/esotericsoftware/a/l;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "class"

    iput-object v0, p0, Lcom/esotericsoftware/a/a;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/a/a;->c:Z

    new-instance v0, Lcom/esotericsoftware/a/l;

    invoke-direct {v0}, Lcom/esotericsoftware/a/l;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/a;->e:Lcom/esotericsoftware/a/l;

    new-instance v0, Lcom/esotericsoftware/a/l;

    invoke-direct {v0}, Lcom/esotericsoftware/a/l;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/a;->f:Lcom/esotericsoftware/a/l;

    new-instance v0, Lcom/esotericsoftware/a/l;

    invoke-direct {v0}, Lcom/esotericsoftware/a/l;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/a;->g:Lcom/esotericsoftware/a/l;

    new-instance v0, Lcom/esotericsoftware/a/l;

    invoke-direct {v0}, Lcom/esotericsoftware/a/l;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/a;->h:Lcom/esotericsoftware/a/l;

    new-instance v0, Lcom/esotericsoftware/a/l;

    invoke-direct {v0}, Lcom/esotericsoftware/a/l;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/a;->i:Lcom/esotericsoftware/a/l;

    sget-object v0, Lcom/esotericsoftware/a/q;->c:Lcom/esotericsoftware/a/q;

    iput-object v0, p0, Lcom/esotericsoftware/a/a;->d:Lcom/esotericsoftware/a/q;

    return-void
.end method

.method private b(Ljava/lang/Class;)Lcom/esotericsoftware/a/l;
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/esotericsoftware/a/l;

    invoke-direct {v3}, Lcom/esotericsoftware/a/l;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/esotericsoftware/a/b;

    invoke-direct {v6, v0}, Lcom/esotericsoftware/a/b;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {v3, v5, v6}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->e:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, p1, v3}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/esotericsoftware/a/a;->c:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/a/a;->i:Lcom/esotericsoftware/a/l;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/a/l;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->i:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/a;->d(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->e:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/l;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/a;->b(Ljava/lang/Class;)Lcom/esotericsoftware/a/l;

    move-result-object v0

    :cond_2
    iget v1, v0, Lcom/esotericsoftware/a/l;->a:I

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/a/a;->i:Lcom/esotericsoftware/a/l;

    invoke-virtual {v1, p1, v2}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/esotericsoftware/a/l;->b()Lcom/esotericsoftware/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/a/p;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/b;

    iget-object v5, v0, Lcom/esotericsoftware/a/b;->a:Ljava/lang/reflect/Field;

    add-int/lit8 v0, v1, 0x1

    :try_start_1
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/esotericsoftware/a/e; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/esotericsoftware/a/a;->i:Lcom/esotericsoftware/a/l;

    invoke-virtual {v1, p1, v0}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error accessing field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->a(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/a/e;->a(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/esotericsoftware/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered JSON object when expected array of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/esotericsoftware/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class cannot be created (non-static member class): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/esotericsoftware/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    :goto_1
    new-instance v1, Lcom/esotericsoftware/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error constructing instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/esotericsoftware/a/f;

    invoke-direct {v1}, Lcom/esotericsoftware/a/f;-><init>()V

    invoke-virtual {v1, p2}, Lcom/esotericsoftware/a/f;->a(Ljava/io/InputStream;)Lcom/esotericsoftware/a/g;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/a/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/a/g;)Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/a/a;->b:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;)Lcom/esotericsoftware/a/g;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object p1, v0

    :cond_2
    :goto_2
    const-class v0, Ljava/lang/String;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_5

    :cond_3
    const-string v0, "value"

    invoke-virtual {p0, v0, p1, p3}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/esotericsoftware/a/g;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->b:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/esotericsoftware/a/a;->f:Lcom/esotericsoftware/a/l;

    invoke-virtual {v3, v0}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_37

    new-instance v0, Lcom/esotericsoftware/a/e;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->h:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/d;

    if-eqz v0, :cond_6

    invoke-interface {v0, p0, p3, p1}, Lcom/esotericsoftware/a/d;->a(Lcom/esotericsoftware/a/a;Lcom/esotericsoftware/a/g;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/a;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/esotericsoftware/a/c;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/esotericsoftware/a/c;

    invoke-interface {v0, p0, p3}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/a;Lcom/esotericsoftware/a/g;)V

    goto :goto_0

    :cond_7
    instance-of v0, v1, Ljava/util/HashMap;

    if-eqz v0, :cond_9

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->r()Lcom/esotericsoftware/a/g;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v0}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/a/g;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->s()Lcom/esotericsoftware/a/g;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v1, p3

    goto/16 :goto_0

    :cond_9
    instance-of v0, v1, Lcom/esotericsoftware/a/l;

    if-eqz v0, :cond_a

    check-cast v1, Lcom/esotericsoftware/a/l;

    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->r()Lcom/esotericsoftware/a/g;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v0}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/a/g;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->s()Lcom/esotericsoftware/a/g;

    move-result-object v0

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v1, p3}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Object;Lcom/esotericsoftware/a/g;)V

    goto/16 :goto_0

    :cond_b
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->h:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/d;

    if-eqz v0, :cond_c

    invoke-interface {v0, p0, p3, p1}, Lcom/esotericsoftware/a/d;->a(Lcom/esotericsoftware/a/a;Lcom/esotericsoftware/a/g;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->r()Lcom/esotericsoftware/a/g;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_e

    invoke-virtual {p0, p2, v2, v1}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/a/g;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/esotericsoftware/a/g;->s()Lcom/esotericsoftware/a/g;

    move-result-object v1

    goto :goto_6

    :cond_d
    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/a;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_5

    :cond_e
    move-object v1, v0

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez p2, :cond_10

    move-object p2, v0

    :cond_10
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->a()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->r()Lcom/esotericsoftware/a/g;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, p2, v2, v0}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/a/g;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/esotericsoftware/a/g;->s()Lcom/esotericsoftware/a/g;

    move-result-object v0

    move v3, v4

    goto :goto_7

    :cond_11
    new-instance v0, Lcom/esotericsoftware/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert value to required type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->k()Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_13

    :try_start_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_13

    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_14

    :cond_13
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_0

    :cond_14
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_15

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_16

    :cond_15
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :cond_16
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_17

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_18

    :cond_17
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_0

    :cond_18
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_19

    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_1a

    :cond_19
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->c()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_0

    :cond_1a
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_1b

    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_1b
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1c

    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_1d

    :cond_1c
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->f()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto/16 :goto_0

    :cond_1d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1e

    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_1f

    :cond_1e
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->f()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :cond_1f
    new-instance v0, Lcom/esotericsoftware/a/g;

    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/g;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    :cond_20
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->n()Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz p1, :cond_21

    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_21

    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_22

    :cond_21
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :cond_22
    new-instance v0, Lcom/esotericsoftware/a/g;

    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/g;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    :cond_23
    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->j()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p3}, Lcom/esotericsoftware/a/g;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    const-class v0, Ljava/lang/String;

    if-eq p1, v0, :cond_0

    :try_start_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_24

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_25

    :cond_24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :cond_25
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_26

    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_27

    :cond_26
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_0

    :cond_27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_28

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_29

    :cond_28
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_0

    :cond_29
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2a

    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_2b

    :cond_2a
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_0

    :cond_2b
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2c

    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_2d

    :cond_2c
    invoke-static {v1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    goto/16 :goto_0

    :cond_2d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2e

    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_2f

    :cond_2e
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :cond_2f
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_30

    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_31

    :cond_30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    :cond_31
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_32

    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_33

    :cond_32
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto/16 :goto_0

    :cond_33
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    array-length v4, v2

    move v0, v3

    :goto_8
    if-ge v0, v4, :cond_35

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    aget-object v1, v2, v0

    goto/16 :goto_0

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_35
    const-class v0, Ljava/lang/CharSequence;

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert value to required type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move-object v1, v2

    goto/16 :goto_0

    :cond_37
    move-object p1, v0

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Lcom/esotericsoftware/a/g;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p3, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/g;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/a/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/j;->c()Lcom/esotericsoftware/a/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/io/Writer;)V
    .locals 2

    instance-of v0, p1, Lcom/esotericsoftware/a/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/a/j;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/a/j;-><init>(Ljava/io/Writer;)V

    :goto_0
    check-cast v0, Lcom/esotericsoftware/a/j;

    iput-object v0, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    iget-object v1, p0, Lcom/esotericsoftware/a/a;->d:Lcom/esotericsoftware/a/q;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/j;->a(Lcom/esotericsoftware/a/q;)V

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->g:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    iget-object v2, p0, Lcom/esotericsoftware/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/esotericsoftware/a/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/j;->a()Lcom/esotericsoftware/a/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/esotericsoftware/a/a;->c(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->e:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/l;

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lcom/esotericsoftware/a/a;->b(Ljava/lang/Class;)Lcom/esotericsoftware/a/l;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lcom/esotericsoftware/a/p;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/a/p;-><init>(Lcom/esotericsoftware/a/l;)V

    invoke-virtual {v2}, Lcom/esotericsoftware/a/p;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/b;

    iget-object v6, v0, Lcom/esotericsoftware/a/b;->a:Ljava/lang/reflect/Field;

    :try_start_0
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v4, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-object v1, v4, v1

    if-nez v7, :cond_1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    iget-object v2, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/j;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    iget-object v0, v0, Lcom/esotericsoftware/a/b;->b:Ljava/lang/Class;

    invoke-virtual {p0, v7, v2, v0}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/esotericsoftware/a/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error accessing field: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->a(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/a/e;->a(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/esotericsoftware/a/g;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->e:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/l;

    if-nez v0, :cond_3

    invoke-direct {p0, v3}, Lcom/esotericsoftware/a/a;->b(Ljava/lang/Class;)Lcom/esotericsoftware/a/l;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p2}, Lcom/esotericsoftware/a/g;->r()Lcom/esotericsoftware/a/g;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/esotericsoftware/a/g;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/b;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/esotericsoftware/a/a;->j:Z

    if-eqz v0, :cond_0

    :goto_2
    invoke-virtual {v2}, Lcom/esotericsoftware/a/g;->s()Lcom/esotericsoftware/a/g;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/esotericsoftware/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field not found: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/esotericsoftware/a/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v4, v0, Lcom/esotericsoftware/a/b;->a:Ljava/lang/reflect/Field;

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    iget-object v0, v0, Lcom/esotericsoftware/a/b;->b:Ljava/lang/Class;

    invoke-virtual {p0, v5, v0, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/a/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/esotericsoftware/a/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error accessing field: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->a(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/a/e;->a(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/Object;)Lcom/esotericsoftware/a/j;

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-class v0, Ljava/lang/String;

    if-eq p2, v0, :cond_2

    const-class v0, Ljava/lang/Integer;

    if-eq p2, v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    if-eq p2, v0, :cond_2

    const-class v0, Ljava/lang/Float;

    if-eq p2, v0, :cond_2

    const-class v0, Ljava/lang/Long;

    if-eq p2, v0, :cond_2

    const-class v0, Ljava/lang/Double;

    if-eq p2, v0, :cond_2

    const-class v0, Ljava/lang/Short;

    if-eq p2, v0, :cond_2

    const-class v0, Ljava/lang/Byte;

    if-eq p2, v0, :cond_2

    const-class v0, Ljava/lang/Character;

    if-ne p2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/Object;)Lcom/esotericsoftware/a/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_4

    const-class v0, Ljava/lang/String;

    if-eq v1, v0, :cond_4

    const-class v0, Ljava/lang/Integer;

    if-eq v1, v0, :cond_4

    const-class v0, Ljava/lang/Boolean;

    if-eq v1, v0, :cond_4

    const-class v0, Ljava/lang/Float;

    if-eq v1, v0, :cond_4

    const-class v0, Ljava/lang/Long;

    if-eq v1, v0, :cond_4

    const-class v0, Ljava/lang/Double;

    if-eq v1, v0, :cond_4

    const-class v0, Ljava/lang/Short;

    if-eq v1, v0, :cond_4

    const-class v0, Ljava/lang/Byte;

    if-eq v1, v0, :cond_4

    const-class v0, Ljava/lang/Character;

    if-ne v1, v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/a/a;->a()V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/esotericsoftware/a/c;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast p1, Lcom/esotericsoftware/a/c;

    invoke-interface {p1, p0}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/a;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/a/a;->a()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->h:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/d;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1, p2}, Lcom/esotericsoftware/a/d;->a(Lcom/esotericsoftware/a/a;Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_a

    if-eqz p2, :cond_8

    if-eq v1, p2, :cond_8

    const-class v0, Ljava/util/ArrayList;

    if-eq v1, v0, :cond_8

    new-instance v0, Lcom/esotericsoftware/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serialization of a Collection other than the known type is not supported.\nKnown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nActual type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {p0}, Lcom/esotericsoftware/a/a;->b()V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p3, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/esotericsoftware/a/a;->c()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p3, :cond_b

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p3

    :cond_b
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Lcom/esotericsoftware/a/a;->b()V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_c

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p3, v3}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/esotericsoftware/a/a;->c()V

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, Lcom/esotericsoftware/a/l;

    if-eqz v0, :cond_10

    if-nez p2, :cond_e

    const-class p2, Lcom/esotericsoftware/a/l;

    :cond_e
    invoke-virtual {p0, v1, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast p1, Lcom/esotericsoftware/a/l;

    invoke-virtual {p1}, Lcom/esotericsoftware/a/l;->a()Lcom/esotericsoftware/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/a/m;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/n;

    iget-object v2, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    iget-object v3, v0, Lcom/esotericsoftware/a/n;->a:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/esotericsoftware/a/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/j;

    iget-object v0, v0, Lcom/esotericsoftware/a/n;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p3, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_3

    :cond_f
    invoke-virtual {p0}, Lcom/esotericsoftware/a/a;->a()V

    goto/16 :goto_0

    :cond_10
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_13

    if-nez p2, :cond_11

    const-class p2, Ljava/util/HashMap;

    :cond_11
    invoke-virtual {p0, v1, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/esotericsoftware/a/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/j;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p3, v2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_4

    :cond_12
    invoke-virtual {p0}, Lcom/esotericsoftware/a/a;->a()V

    goto/16 :goto_0

    :cond_13
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/Object;)Lcom/esotericsoftware/a/j;

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0, v1, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/a/a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->f:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/esotericsoftware/a/a;->g:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, p2, p1}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    invoke-virtual {p0, p2, v1, v1}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/j;->b()Lcom/esotericsoftware/a/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/a/a;->a:Lcom/esotericsoftware/a/j;

    invoke-virtual {v0}, Lcom/esotericsoftware/a/j;->c()Lcom/esotericsoftware/a/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/a/e;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
