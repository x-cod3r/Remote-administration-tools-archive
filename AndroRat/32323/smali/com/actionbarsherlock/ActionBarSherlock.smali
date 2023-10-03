.class public abstract Lcom/actionbarsherlock/ActionBarSherlock;
.super Ljava/lang/Object;
.source "ActionBarSherlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/ActionBarSherlock$Implementation;,
        Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;,
        Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;,
        Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;,
        Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;,
        Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;,
        Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;,
        Lcom/actionbarsherlock/ActionBarSherlock$OnPrepareOptionsMenuListener;,
        Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;
    }
.end annotation


# static fields
.field private static final CONSTRUCTOR_ARGS:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected static final DEBUG:Z = false

.field public static final FLAG_DELEGATE:I = 0x1

.field private static final IMPLEMENTATIONS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/actionbarsherlock/ActionBarSherlock$Implementation;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/actionbarsherlock/ActionBarSherlock;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String; = "ActionBarSherlock"


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field protected final mIsDelegate:Z

.field protected mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/app/Activity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/actionbarsherlock/ActionBarSherlock;->CONSTRUCTOR_ARGS:[Ljava/lang/Class;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    sput-object v0, Lcom/actionbarsherlock/ActionBarSherlock;->IMPLEMENTATIONS:Ljava/util/HashMap;

    .line 51
    const-class v0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    invoke-static {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->registerImplementation(Ljava/lang/Class;)V

    .line 52
    const-class v0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    invoke-static {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->registerImplementation(Ljava/lang/Class;)V

    .line 111
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "flags"

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    .line 259
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mIsDelegate:Z

    .line 260
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerImplementation(Ljava/lang/Class;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/actionbarsherlock/ActionBarSherlock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, implementationClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/actionbarsherlock/ActionBarSherlock;>;"
    const-class v1, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not annotated with @Implementation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    sget-object v1, Lcom/actionbarsherlock/ActionBarSherlock;->IMPLEMENTATIONS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_1
    const-class v1, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;

    .line 131
    .local v0, impl:Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
    sget-object v1, Lcom/actionbarsherlock/ActionBarSherlock;->IMPLEMENTATIONS:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static unregisterImplementation(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/actionbarsherlock/ActionBarSherlock;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, implementationClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/actionbarsherlock/ActionBarSherlock;>;"
    sget-object v0, Lcom/actionbarsherlock/ActionBarSherlock;->IMPLEMENTATIONS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static wrap(Landroid/app/Activity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter "activity"

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 15
    .parameter "activity"
    .parameter "flags"

    .prologue
    .line 170
    new-instance v5, Ljava/util/HashMap;

    sget-object v12, Lcom/actionbarsherlock/ActionBarSherlock;->IMPLEMENTATIONS:Ljava/util/HashMap;

    invoke-direct {v5, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 174
    .local v5, impls:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/actionbarsherlock/ActionBarSherlock$Implementation;Ljava/lang/Class<+Lcom/actionbarsherlock/ActionBarSherlock;>;>;"
    const/4 v3, 0x0

    .line 175
    .local v3, hasQualfier:Z
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_7

    .line 182
    :goto_0
    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v13, 0xd5

    if-ne v12, v13, :cond_8

    const/4 v6, 0x1

    .line 184
    .local v6, isTvDpi:Z
    :goto_1
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/actionbarsherlock/ActionBarSherlock$Implementation;>;"
    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_9

    .line 194
    .end local v6           #isTvDpi:Z
    .end local v10           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/actionbarsherlock/ActionBarSherlock$Implementation;>;"
    :cond_2
    const/4 v3, 0x0

    .line 195
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_c

    .line 201
    :goto_3
    if-eqz v3, :cond_6

    .line 202
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .local v11, runtimeApi:I
    const/4 v0, 0x0

    .line 204
    .local v0, bestApi:I
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/actionbarsherlock/ActionBarSherlock$Implementation;>;"
    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_d

    .line 212
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_f

    .line 219
    .end local v0           #bestApi:I
    .end local v10           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/actionbarsherlock/ActionBarSherlock$Implementation;>;"
    .end local v11           #runtimeApi:I
    :cond_6
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_10

    .line 220
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "More than one implementation matches configuration."

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 175
    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;

    .line 177
    .local v7, key:Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
    invoke-interface {v7}, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;->dpi()I

    move-result v13

    const/16 v14, 0xd5

    if-ne v13, v14, :cond_0

    .line 178
    const/4 v3, 0x1

    .line 179
    goto :goto_0

    .line 183
    .end local v7           #key:Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    .line 185
    .restart local v6       #isTvDpi:Z
    .restart local v10       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/actionbarsherlock/ActionBarSherlock$Implementation;>;"
    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;

    invoke-interface {v12}, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;->dpi()I

    move-result v9

    .line 186
    .local v9, keyDpi:I
    if-eqz v6, :cond_a

    const/16 v12, 0xd5

    if-ne v9, v12, :cond_b

    .line 187
    :cond_a
    if-nez v6, :cond_1

    const/16 v12, 0xd5

    if-ne v9, v12, :cond_1

    .line 188
    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 195
    .end local v6           #isTvDpi:Z
    .end local v9           #keyDpi:I
    .end local v10           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/actionbarsherlock/ActionBarSherlock$Implementation;>;"
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;

    .line 196
    .restart local v7       #key:Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
    invoke-interface {v7}, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;->api()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 197
    const/4 v3, 0x1

    .line 198
    goto :goto_3

    .line 205
    .end local v7           #key:Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
    .restart local v0       #bestApi:I
    .restart local v10       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/actionbarsherlock/ActionBarSherlock$Implementation;>;"
    .restart local v11       #runtimeApi:I
    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;

    invoke-interface {v12}, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;->api()I

    move-result v8

    .line 206
    .local v8, keyApi:I
    if-le v8, v11, :cond_e

    .line 207
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 208
    :cond_e
    if-le v8, v0, :cond_4

    .line 209
    move v0, v8

    goto :goto_4

    .line 213
    .end local v8           #keyApi:I
    :cond_f
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;

    invoke-interface {v12}, Lcom/actionbarsherlock/ActionBarSherlock$Implementation;->api()I

    move-result v12

    if-eq v12, v0, :cond_5

    .line 214
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 222
    .end local v0           #bestApi:I
    .end local v10           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/actionbarsherlock/ActionBarSherlock$Implementation;>;"
    .end local v11           #runtimeApi:I
    :cond_10
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 223
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "No implementations match configuration."

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 225
    :cond_11
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 229
    .local v4, impl:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/actionbarsherlock/ActionBarSherlock;>;"
    :try_start_0
    sget-object v12, Lcom/actionbarsherlock/ActionBarSherlock;->CONSTRUCTOR_ARGS:[Ljava/lang/Class;

    invoke-virtual {v4, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 230
    .local v1, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/actionbarsherlock/ActionBarSherlock;>;"
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/actionbarsherlock/ActionBarSherlock;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v12

    .line 231
    .end local v1           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/actionbarsherlock/ActionBarSherlock;>;"
    :catch_0
    move-exception v2

    .line 232
    .local v2, e:Ljava/lang/NoSuchMethodException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 233
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 234
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 235
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 236
    .local v2, e:Ljava/lang/InstantiationException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 237
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 238
    .local v2, e:Ljava/lang/IllegalAccessException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 239
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 240
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method protected final callbackCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 556
    const/4 v1, 0x1

    .line 557
    .local v1, result:Z
    iget-object v2, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;

    if-eqz v2, :cond_1

    .line 558
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;

    .line 559
    .local v0, listener:Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;
    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;->onCreatePanelMenu(ILcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    .line 566
    .end local v0           #listener:Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;
    :cond_0
    :goto_0
    return v1

    .line 560
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;

    if-eqz v2, :cond_0

    .line 561
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;

    .line 562
    .local v0, listener:Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;
    invoke-interface {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected final callbackOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 600
    const/4 v1, 0x0

    .line 601
    .local v1, result:Z
    iget-object v2, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;

    if-eqz v2, :cond_1

    .line 602
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;

    .line 603
    .local v0, listener:Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;
    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;->onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    .line 610
    .end local v0           #listener:Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;
    :cond_0
    :goto_0
    return v1

    .line 604
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;

    if-eqz v2, :cond_0

    .line 605
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;

    .line 606
    .local v0, listener:Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;
    invoke-interface {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected final callbackPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 577
    const/4 v1, 0x1

    .line 578
    .local v1, result:Z
    iget-object v2, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;

    if-eqz v2, :cond_1

    .line 579
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;

    .line 580
    .local v0, listener:Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;->onPreparePanel(ILandroid/view/View;Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    .line 587
    .end local v0           #listener:Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;
    :cond_0
    :goto_0
    return v1

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/actionbarsherlock/ActionBarSherlock$OnPrepareOptionsMenuListener;

    if-eqz v2, :cond_0

    .line 582
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnPrepareOptionsMenuListener;

    .line 583
    .local v0, listener:Lcom/actionbarsherlock/ActionBarSherlock$OnPrepareOptionsMenuListener;
    invoke-interface {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnPrepareOptionsMenuListener;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchCloseOptionsMenu()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 289
    return-void
.end method

.method public abstract dispatchCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public dispatchDestroy()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public abstract dispatchInvalidateOptionsMenu()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchOpenOptionsMenu()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public abstract dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public dispatchPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 524
    return-void
.end method

.method public dispatchPause()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public dispatchPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 397
    return-void
.end method

.method public dispatchPostResume()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public abstract dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 542
    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 540
    return-void
.end method

.method public dispatchStop()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public dispatchTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "title"
    .parameter "color"

    .prologue
    .line 415
    return-void
.end method

.method public abstract getActionBar()Lcom/actionbarsherlock/app/ActionBar;
.end method

.method public getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    if-nez v0, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 775
    new-instance v0, Lcom/actionbarsherlock/view/MenuInflater;

    invoke-virtual {p0}, Lcom/actionbarsherlock/ActionBarSherlock;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    .line 780
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    return-object v0

    .line 777
    :cond_1
    new-instance v0, Lcom/actionbarsherlock/view/MenuInflater;

    iget-object v1, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    goto :goto_0
.end method

.method protected abstract getThemedContext()Landroid/content/Context;
.end method

.method public abstract hasFeature(I)Z
.end method

.method public abstract requestFeature(I)Z
.end method

.method public abstract setContentView(I)V
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 671
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    return-void
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setProgress(I)V
.end method

.method public abstract setProgressBarIndeterminate(Z)V
.end method

.method public abstract setProgressBarIndeterminateVisibility(Z)V
.end method

.method public abstract setProgressBarVisibility(Z)V
.end method

.method public abstract setSecondaryProgress(I)V
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->setTitle(Ljava/lang/CharSequence;)V

    .line 704
    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setUiOptions(I)V
.end method

.method public abstract setUiOptions(II)V
.end method

.method public abstract startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
.end method
