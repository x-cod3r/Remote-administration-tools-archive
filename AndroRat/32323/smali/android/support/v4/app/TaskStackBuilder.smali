.class public Landroid/support/v4/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb;,
        Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase;,
        Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl; = null

.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 97
    new-instance v0, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb;

    invoke-direct {v0}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb;-><init>()V

    sput-object v0, Landroid/support/v4/app/TaskStackBuilder;->IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase;

    invoke-direct {v0}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/app/TaskStackBuilder;->IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 107
    iput-object p1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 1
    .parameter "context"

    .prologue
    .line 118
    new-instance v0, Landroid/support/v4/app/TaskStackBuilder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 1
    .parameter "nextIntent"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-object p0
.end method

.method public addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 5
    .parameter "sourceActivity"

    .prologue
    .line 141
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 142
    .local v1, insertAt:I
    invoke-static {p1}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    .line 143
    .local v2, parent:Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_0

    .line 144
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 146
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "TaskStackBuilder"

    const-string v4, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 152
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object p0
.end method

.method public addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/support/v4/app/TaskStackBuilder;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, sourceActivityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 165
    .local v1, insertAt:I
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 166
    .local v2, parent:Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_0

    .line 167
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 168
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 170
    .end local v2           #parent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "TaskStackBuilder"

    const-string v4, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 174
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #parent:Landroid/content/Intent;
    :cond_0
    return-object p0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 1
    .parameter "index"

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .locals 3
    .parameter "requestCode"
    .parameter "flags"

    .prologue
    .line 237
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 238
    .local v0, intents:[Landroid/content/Intent;
    sget-object v1, Landroid/support/v4/app/TaskStackBuilder;->IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;

    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-interface {v1, v2, v0, p1, p2}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;->getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;II)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public startActivities()V
    .locals 4

    .prologue
    .line 209
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 215
    .local v0, intents:[Landroid/content/Intent;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const v3, 0x1000c000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v0}, Landroid/support/v4/app/ActivityCompat;->startActivities(Landroid/app/Activity;[Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 220
    .local v1, topIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 223
    .end local v1           #topIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method
