.class public Lorg/adaway/util/HostsParser;
.super Ljava/lang/Object;
.source "HostsParser.java"


# instance fields
.field private mBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHostsParserMatcher:Ljava/util/regex/Matcher;

.field private mHostsParserPattern:Ljava/util/regex/Pattern;

.field private mParseWhitelistAndRedirections:Z

.field private mRedirectionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/BufferedReader;Z)V
    .locals 0
    .parameter "input"
    .parameter "parseWhitelistAndRedirections"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p2, p0, Lorg/adaway/util/HostsParser;->mParseWhitelistAndRedirections:Z

    .line 50
    invoke-direct {p0, p1}, Lorg/adaway/util/HostsParser;->parse(Ljava/io/BufferedReader;)V

    .line 51
    return-void
.end method

.method private parse(Ljava/io/BufferedReader;)V
    .locals 6
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 73
    .local v2, nextLine:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 74
    .local v1, currentIp:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 75
    .local v0, currentHostname:Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/adaway/util/HostsParser;->mBlacklist:Ljava/util/HashSet;

    .line 76
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/adaway/util/HostsParser;->mWhitelist:Ljava/util/HashSet;

    .line 77
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/adaway/util/HostsParser;->mRedirectionList:Ljava/util/HashMap;

    .line 80
    iget-boolean v3, p0, Lorg/adaway/util/HostsParser;->mParseWhitelistAndRedirections:Z

    if-eqz v3, :cond_2

    .line 81
    sget-object v3, Lorg/adaway/util/RegexUtils;->hostsParserWhitelistImportPattern:Ljava/util/regex/Pattern;

    iput-object v3, p0, Lorg/adaway/util/HostsParser;->mHostsParserPattern:Ljava/util/regex/Pattern;

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 86
    iget-object v3, p0, Lorg/adaway/util/HostsParser;->mHostsParserPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    iput-object v3, p0, Lorg/adaway/util/HostsParser;->mHostsParserMatcher:Ljava/util/regex/Matcher;

    .line 88
    iget-object v3, p0, Lorg/adaway/util/HostsParser;->mHostsParserMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    iget-object v3, p0, Lorg/adaway/util/HostsParser;->mHostsParserMatcher:Ljava/util/regex/Matcher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v3, p0, Lorg/adaway/util/HostsParser;->mHostsParserMatcher:Ljava/util/regex/Matcher;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v3, "127.0.0.1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "0.0.0.0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    :cond_1
    iget-object v3, p0, Lorg/adaway/util/HostsParser;->mBlacklist:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_2
    sget-object v3, Lorg/adaway/util/RegexUtils;->hostsParserPattern:Ljava/util/regex/Pattern;

    iput-object v3, p0, Lorg/adaway/util/HostsParser;->mHostsParserPattern:Ljava/util/regex/Pattern;

    goto :goto_0

    .line 100
    :cond_3
    const-string v3, "white"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    iget-object v3, p0, Lorg/adaway/util/HostsParser;->mWhitelist:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_4
    iget-boolean v3, p0, Lorg/adaway/util/HostsParser;->mParseWhitelistAndRedirections:Z

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lorg/adaway/util/HostsParser;->mRedirectionList:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_5
    const-string v3, "AdAway"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Does not match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_6
    iget-object v3, p0, Lorg/adaway/util/HostsParser;->mBlacklist:Ljava/util/HashSet;

    const-string v4, "localhost"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 112
    iget-object v3, p0, Lorg/adaway/util/HostsParser;->mRedirectionList:Ljava/util/HashMap;

    const-string v4, "localhost"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method


# virtual methods
.method public addBlacklist(Ljava/util/HashSet;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, blacklist:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/adaway/util/HostsParser;->mBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 122
    return-void
.end method

.method public addRedirectionList(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, redirectionList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/adaway/util/HostsParser;->mRedirectionList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method public addWhitelist(Ljava/util/HashSet;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, whitelist:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/adaway/util/HostsParser;->mWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 131
    return-void
.end method

.method public compileList()V
    .locals 12

    .prologue
    .line 149
    const-string v10, "AdAway"

    const-string v11, "Compiling all whitelist regex"

    invoke-static {v10, v11}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 154
    .local v9, whitelistPattern:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/util/regex/Pattern;>;"
    iget-object v10, p0, Lorg/adaway/util/HostsParser;->mWhitelist:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 156
    .local v3, item:Ljava/lang/String;
    invoke-static {v3}, Lorg/adaway/util/RegexUtils;->wildcardToRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, regexItem:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v3           #item:Ljava/lang/String;
    .end local v7           #regexItem:Ljava/lang/String;
    :cond_0
    const-string v10, "AdAway"

    const-string v11, "Starting whitelist regex"

    invoke-static {v10, v11}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v10, p0, Lorg/adaway/util/HostsParser;->mBlacklist:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 165
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, blacklistHostname:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/regex/Pattern;

    .line 169
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 172
    .local v8, whitelistMatcher:Ljava/util/regex/Matcher;
    :try_start_0
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 174
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 176
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "AdAway"

    const-string v11, "Error in whitelist regex processing"

    invoke-static {v10, v11, v1}, Lorg/adaway/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 183
    .end local v0           #blacklistHostname:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #pattern:Ljava/util/regex/Pattern;
    .end local v8           #whitelistMatcher:Ljava/util/regex/Matcher;
    :cond_3
    const-string v10, "AdAway"

    const-string v11, "Ending whitelist regex"

    invoke-static {v10, v11}, Lorg/adaway/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v6, Ljava/util/HashSet;

    iget-object v10, p0, Lorg/adaway/util/HostsParser;->mRedirectionList:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 187
    .local v6, redirectionRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v10, p0, Lorg/adaway/util/HostsParser;->mBlacklist:Ljava/util/HashSet;

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 188
    return-void
.end method

.method public getBlacklist()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/adaway/util/HostsParser;->mBlacklist:Ljava/util/HashSet;

    return-object v0
.end method

.method public getRedirectionList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/adaway/util/HostsParser;->mRedirectionList:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWhitelist()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/adaway/util/HostsParser;->mWhitelist:Ljava/util/HashSet;

    return-object v0
.end method
