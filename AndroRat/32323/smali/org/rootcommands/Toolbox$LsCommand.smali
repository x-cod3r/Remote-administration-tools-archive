.class Lorg/rootcommands/Toolbox$LsCommand;
.super Lorg/rootcommands/command/Command;
.source "Toolbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rootcommands/Toolbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LsCommand"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private permissionPattern:Ljava/util/regex/Pattern;

.field private permissionRegex:Ljava/lang/String;

.field private permissions:Ljava/lang/String;

.field private symlink:Ljava/lang/String;

.field private symlinkPattern:Ljava/util/regex/Pattern;

.field private symlinkRegex:Ljava/lang/String;

.field final synthetic this$0:Lorg/rootcommands/Toolbox;


# direct methods
.method public constructor <init>(Lorg/rootcommands/Toolbox;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "file"

    .prologue
    .line 263
    iput-object p1, p0, Lorg/rootcommands/Toolbox$LsCommand;->this$0:Lorg/rootcommands/Toolbox;

    .line 264
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toolbox ls -l "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/rootcommands/command/Command;-><init>([Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/rootcommands/Toolbox$LsCommand;->fileName:Ljava/lang/String;

    .line 268
    const-string v0, "RootCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/rootcommands/Toolbox$LsCommand;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "^.*?(\\S{10}).*$"

    iput-object v0, p0, Lorg/rootcommands/Toolbox$LsCommand;->permissionRegex:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lorg/rootcommands/Toolbox$LsCommand;->permissionRegex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/rootcommands/Toolbox$LsCommand;->permissionPattern:Ljava/util/regex/Pattern;

    .line 295
    const-string v0, "^.*?\\-\\>\\s+(.*)$"

    iput-object v0, p0, Lorg/rootcommands/Toolbox$LsCommand;->symlinkRegex:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lorg/rootcommands/Toolbox$LsCommand;->symlinkRegex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/rootcommands/Toolbox$LsCommand;->symlinkPattern:Ljava/util/regex/Pattern;

    .line 297
    return-void
.end method

.method private convertPermissions(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "permissions"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x4

    .line 307
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/rootcommands/Toolbox$LsCommand;->getGroupPermission(Ljava/lang/String;)I

    move-result v1

    .line 308
    .local v1, owner:I
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/rootcommands/Toolbox$LsCommand;->getGroupPermission(Ljava/lang/String;)I

    move-result v0

    .line 309
    .local v0, group:I
    const/16 v3, 0xa

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/rootcommands/Toolbox$LsCommand;->getGroupPermission(Ljava/lang/String;)I

    move-result v2

    .line 311
    .local v2, world:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getGroupPermission(Ljava/lang/String;)I
    .locals 3
    .parameter "permission"

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, value:I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    .line 324
    add-int/lit8 v0, v0, 0x4

    .line 326
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_1

    .line 327
    add-int/lit8 v0, v0, 0x2

    .line 329
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_2

    .line 330
    add-int/lit8 v0, v0, 0x1

    .line 333
    :cond_2
    return v0
.end method


# virtual methods
.method public afterExecution(II)V
    .locals 0
    .parameter "id"
    .parameter "exitCode"

    .prologue
    .line 372
    return-void
.end method

.method public getPermissions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/rootcommands/Toolbox$LsCommand;->permissions:Ljava/lang/String;

    return-object v0
.end method

.method public getSymlink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/rootcommands/Toolbox$LsCommand;->symlink:Ljava/lang/String;

    return-object v0
.end method

.method public output(ILjava/lang/String;)V
    .locals 6
    .parameter "id"
    .parameter "line"

    .prologue
    .line 339
    iget-object v3, p0, Lorg/rootcommands/Toolbox$LsCommand;->fileName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    :try_start_0
    iget-object v3, p0, Lorg/rootcommands/Toolbox$LsCommand;->permissionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 344
    .local v1, permissionMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/rootcommands/Toolbox$LsCommand;->convertPermissions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/rootcommands/Toolbox$LsCommand;->permissions:Ljava/lang/String;

    .line 347
    const-string v3, "RootCommands"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/rootcommands/Toolbox$LsCommand;->permissions:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_0
    iget-object v3, p0, Lorg/rootcommands/Toolbox$LsCommand;->symlinkPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 354
    .local v2, symlinkMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 359
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/rootcommands/Toolbox$LsCommand;->symlink:Ljava/lang/String;

    .line 360
    const-string v3, "RootCommands"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Symlink found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/rootcommands/Toolbox$LsCommand;->symlink:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v1           #permissionMatcher:Ljava/util/regex/Matcher;
    .end local v2           #symlinkMatcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    return-void

    .line 349
    .restart local v1       #permissionMatcher:Ljava/util/regex/Matcher;
    :cond_1
    const-string v3, "RootCommands"

    const-string v4, "Permissions were not found in ls command!"

    invoke-static {v3, v4}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    .end local v1           #permissionMatcher:Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "RootCommands"

    const-string v4, "Error with regex!"

    invoke-static {v3, v4, v0}, Lorg/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 362
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #permissionMatcher:Ljava/util/regex/Matcher;
    .restart local v2       #symlinkMatcher:Ljava/util/regex/Matcher;
    :cond_2
    :try_start_1
    const-string v3, "RootCommands"

    const-string v4, "No symlink found!"

    invoke-static {v3, v4}, Lorg/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
