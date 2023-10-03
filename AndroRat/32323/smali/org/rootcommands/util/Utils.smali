.class public Lorg/rootcommands/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final BinaryPlaces:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/bin/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/bin/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/xbin/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/sbin/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/data/local/xbin/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/data/local/bin/"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/system/sd/xbin/"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/system/bin/failsafe/"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/data/local/"

    aput-object v2, v0, v1

    sput-object v0, Lorg/rootcommands/util/Utils;->BinaryPlaces:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSuPath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 49
    sget-object v0, Lorg/rootcommands/util/Utils;->BinaryPlaces:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 50
    .local v3, p:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v4, su:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    const-string v5, "RootCommands"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "su found at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 59
    .end local v3           #p:Ljava/lang/String;
    .end local v4           #su:Ljava/io/File;
    :goto_1
    return-object v5

    .line 55
    .restart local v3       #p:Ljava/lang/String;
    .restart local v4       #su:Ljava/io/File;
    :cond_0
    const-string v5, "RootCommands"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No su in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/rootcommands/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v3           #p:Ljava/lang/String;
    .end local v4           #su:Ljava/io/File;
    :cond_1
    const-string v5, "RootCommands"

    const-string v6, "No su found in a well-known location, will just use \"su\"."

    invoke-static {v5, v6}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v5, "su"

    goto :goto_1
.end method

.method public static runWithEnv(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Process;
    .locals 10
    .parameter "command"
    .parameter
    .parameter "baseDirectory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Process;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, customAddedEnv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v3

    .line 85
    .local v3, environment:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_0
    add-int/2addr v8, v9

    new-array v2, v8, [Ljava/lang/String;

    .line 87
    .local v2, envArray:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 88
    .local v4, i:I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 85
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #envArray:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 91
    .restart local v2       #envArray:[Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, entry:Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    aput-object v0, v2, v4

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_2

    .line 98
    .end local v0           #entry:Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_3

    .line 99
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p0, v2, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v7

    .line 103
    .local v7, process:Ljava/lang/Process;
    :goto_3
    return-object v7

    .line 101
    .end local v7           #process:Ljava/lang/Process;
    :cond_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0, v2, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v7

    .restart local v7       #process:Ljava/lang/Process;
    goto :goto_3
.end method
