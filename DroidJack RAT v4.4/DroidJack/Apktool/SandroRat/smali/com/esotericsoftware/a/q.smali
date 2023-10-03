.class public final enum Lcom/esotericsoftware/a/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/esotericsoftware/a/q;

.field public static final enum b:Lcom/esotericsoftware/a/q;

.field public static final enum c:Lcom/esotericsoftware/a/q;

.field private static d:Ljava/util/regex/Pattern;

.field private static e:Ljava/util/regex/Pattern;

.field private static f:Ljava/util/regex/Pattern;

.field private static final synthetic g:[Lcom/esotericsoftware/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/esotericsoftware/a/q;

    const-string v1, "json"

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/a/q;->a:Lcom/esotericsoftware/a/q;

    new-instance v0, Lcom/esotericsoftware/a/q;

    const-string v1, "javascript"

    invoke-direct {v0, v1, v3}, Lcom/esotericsoftware/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    new-instance v0, Lcom/esotericsoftware/a/q;

    const-string v1, "minimal"

    invoke-direct {v0, v1, v4}, Lcom/esotericsoftware/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/a/q;->c:Lcom/esotericsoftware/a/q;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/esotericsoftware/a/q;

    sget-object v1, Lcom/esotericsoftware/a/q;->a:Lcom/esotericsoftware/a/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/esotericsoftware/a/q;->c:Lcom/esotericsoftware/a/q;

    aput-object v1, v0, v4

    sput-object v0, Lcom/esotericsoftware/a/q;->g:[Lcom/esotericsoftware/a/q;

    const-string v0, "[a-zA-Z_$][a-zA-Z_$0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/q;->d:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z_$][^:}\\], ]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/q;->e:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z0-9_$][^:}\\], ]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/a/q;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/esotericsoftware/a/q;
    .locals 1

    const-class v0, Lcom/esotericsoftware/a/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/a/q;

    return-object v0
.end method

.method public static values()[Lcom/esotericsoftware/a/q;
    .locals 1

    sget-object v0, Lcom/esotericsoftware/a/q;->g:[Lcom/esotericsoftware/a/q;

    invoke-virtual {v0}, [Lcom/esotericsoftware/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/a/q;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x22

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/esotericsoftware/a/q;->c:Lcom/esotericsoftware/a/q;

    if-ne p0, v1, :cond_3

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/esotericsoftware/a/q;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x22

    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/esotericsoftware/a/r;->a:[I

    invoke-virtual {p0}, Lcom/esotericsoftware/a/q;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    sget-object v1, Lcom/esotericsoftware/a/q;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/esotericsoftware/a/q;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
