.class Lcom/esotericsoftware/a/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/reflect/Field;

.field b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/a/b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/esotericsoftware/a/b;->b:Ljava/lang/Class;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/esotericsoftware/a/b;->b:Ljava/lang/Class;

    goto :goto_0
.end method
