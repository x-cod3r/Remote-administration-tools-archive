.class public Lorg/adaway/util/ScanAdwareLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "ScanAdwareLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final AD_PACKAGE_PREFIXES:[Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.airpush."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.Leadbolt."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.appenda."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.iac.notification."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.urbanairship."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.tapjoy."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sellaring."

    aput-object v2, v0, v1

    sput-object v0, Lorg/adaway/util/ScanAdwareLoader;->AD_PACKAGE_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lorg/adaway/util/ScanAdwareLoader;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private getAdPackages()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v5, adPackages:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/adaway/util/ScanAdwareLoader;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 102
    .local v17, pm:Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    .line 104
    .local v7, appInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 106
    .local v6, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 110
    .local v16, pkgInfo:Landroid/content/pm/PackageInfo;
    const-string v20, "AdAway"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Scanning package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/adaway/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 113
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v8, arr$:[Landroid/content/pm/ActivityInfo;
    array-length v14, v8

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v13, v12

    .end local v8           #arr$:[Landroid/content/pm/ActivityInfo;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .local v13, i$:I
    :goto_1
    if-ge v13, v14, :cond_3

    aget-object v3, v8, v13

    .line 114
    .local v3, activity:Landroid/content/pm/ActivityInfo;
    const-string v20, "AdAway"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[ACTIVITY] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/adaway/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v9, Lorg/adaway/util/ScanAdwareLoader;->AD_PACKAGE_PREFIXES:[Ljava/lang/String;

    .local v9, arr$:[Ljava/lang/String;
    array-length v15, v9

    .local v15, len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_2
    if-ge v12, v15, :cond_2

    aget-object v4, v9, v12

    .line 116
    .local v4, adPackagePrefix:Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 117
    const-string v20, "AdAway"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Detected ad framework prefix "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " as activity "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 113
    .end local v4           #adPackagePrefix:Ljava/lang/String;
    :cond_2
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_1

    .line 125
    .end local v3           #activity:Landroid/content/pm/ActivityInfo;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #len$:I
    :cond_3
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 126
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .restart local v8       #arr$:[Landroid/content/pm/ActivityInfo;
    array-length v14, v8

    .restart local v14       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    move v13, v12

    .end local v8           #arr$:[Landroid/content/pm/ActivityInfo;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .restart local v13       #i$:I
    :goto_3
    if-ge v13, v14, :cond_6

    aget-object v18, v8, v13

    .line 127
    .local v18, receiver:Landroid/content/pm/ActivityInfo;
    const-string v20, "AdAway"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[RECEIVER] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/adaway/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v9, Lorg/adaway/util/ScanAdwareLoader;->AD_PACKAGE_PREFIXES:[Ljava/lang/String;

    .restart local v9       #arr$:[Ljava/lang/String;
    array-length v15, v9

    .restart local v15       #len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_4
    if-ge v12, v15, :cond_4

    aget-object v4, v9, v12

    .line 129
    .restart local v4       #adPackagePrefix:Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 130
    const-string v20, "AdAway"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Detected ad framework prefix "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " as receiver "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v4           #adPackagePrefix:Ljava/lang/String;
    :cond_4
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_3

    .line 128
    .end local v13           #i$:I
    .restart local v4       #adPackagePrefix:Ljava/lang/String;
    .restart local v12       #i$:I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 139
    .end local v4           #adPackagePrefix:Ljava/lang/String;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v15           #len$:I
    .end local v18           #receiver:Landroid/content/pm/ActivityInfo;
    :cond_6
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 140
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v8, arr$:[Landroid/content/pm/ServiceInfo;
    array-length v14, v8

    .restart local v14       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    move v13, v12

    .end local v8           #arr$:[Landroid/content/pm/ServiceInfo;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .restart local v13       #i$:I
    :goto_5
    if-ge v13, v14, :cond_0

    aget-object v19, v8, v13

    .line 141
    .local v19, service:Landroid/content/pm/ServiceInfo;
    const-string v20, "AdAway"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[SERVICE] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/adaway/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v9, Lorg/adaway/util/ScanAdwareLoader;->AD_PACKAGE_PREFIXES:[Ljava/lang/String;

    .restart local v9       #arr$:[Ljava/lang/String;
    array-length v15, v9

    .restart local v15       #len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_6
    if-ge v12, v15, :cond_7

    aget-object v4, v9, v12

    .line 143
    .restart local v4       #adPackagePrefix:Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 144
    const-string v20, "AdAway"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Detected ad framework prefix "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " as service "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/adaway/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v4           #adPackagePrefix:Ljava/lang/String;
    :cond_7
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_5

    .line 142
    .end local v13           #i$:I
    .restart local v4       #adPackagePrefix:Ljava/lang/String;
    .restart local v12       #i$:I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 153
    .end local v4           #adPackagePrefix:Ljava/lang/String;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v15           #len$:I
    .end local v16           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v19           #service:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v10

    .line 154
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "AdAway"

    const-string v21, "Managed to not find a package we know about"

    invoke-static/range {v20 .. v21}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v6           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v20
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/adaway/util/ScanAdwareLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/adaway/util/ScanAdwareLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/adaway/util/ScanAdwareLoader;->getAdPackages()Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, adPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v6, p0, Lorg/adaway/util/ScanAdwareLoader;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 60
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 62
    .local v4, pkg:Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v1, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "app_name"

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v6, "package_name"

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v1           #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #pkg:Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v2
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 76
    invoke-virtual {p0}, Lorg/adaway/util/ScanAdwareLoader;->onStopLoading()V

    .line 77
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/adaway/util/ScanAdwareLoader;->forceLoad()V

    .line 82
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/adaway/util/ScanAdwareLoader;->cancelLoad()Z

    .line 87
    return-void
.end method
