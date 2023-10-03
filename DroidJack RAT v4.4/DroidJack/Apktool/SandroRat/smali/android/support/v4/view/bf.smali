.class Landroid/support/v4/view/bf;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/reflect/Method;


# direct methods
.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Landroid/support/v4/view/bf;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/bf;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Landroid/support/v4/view/bf;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    :try_start_1
    sget-object v0, Landroid/support/v4/view/bf;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method
