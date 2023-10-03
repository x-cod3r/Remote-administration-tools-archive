.class public Lcom/actionbarsherlock/view/MenuInflater;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;,
        Lcom/actionbarsherlock/view/MenuInflater$MenuState;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "MenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/actionbarsherlock/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 63
    sget-object v0, Lcom/actionbarsherlock/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Lcom/actionbarsherlock/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/actionbarsherlock/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 79
    iput-object p1, p0, Lcom/actionbarsherlock/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "realOwner"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/actionbarsherlock/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/actionbarsherlock/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 95
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/view/MenuInflater;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/actionbarsherlock/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/view/MenuInflater;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/view/MenuInflater;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/actionbarsherlock/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/view/MenuInflater;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/actionbarsherlock/view/Menu;)V
    .locals 10
    .parameter "parser"
    .parameter "attrs"
    .parameter "menu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v2, Lcom/actionbarsherlock/view/MenuInflater$MenuState;

    invoke-direct {v2, p0, p3}, Lcom/actionbarsherlock/view/MenuInflater$MenuState;-><init>(Lcom/actionbarsherlock/view/MenuInflater;Lcom/actionbarsherlock/view/Menu;)V

    .line 130
    .local v2, menuState:Lcom/actionbarsherlock/view/MenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 132
    .local v0, eventType:I
    const/4 v1, 0x0

    .line 133
    .local v1, lookingForEndOfUnknownTag:Z
    const/4 v6, 0x0

    .line 137
    .local v6, unknownTagName:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, tagName:Ljava/lang/String;
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 150
    .end local v5           #tagName:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 151
    .local v3, reachedEndOfMenu:Z
    :goto_1
    if-eqz v3, :cond_3

    .line 204
    return-void

    .line 145
    .end local v3           #reachedEndOfMenu:Z
    .restart local v5       #tagName:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Expecting menu, got "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 147
    .end local v5           #tagName:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 148
    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    goto :goto_0

    .line 152
    .restart local v3       #reachedEndOfMenu:Z
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 202
    :cond_4
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    .line 154
    :pswitch_0
    if-nez v1, :cond_4

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 159
    .restart local v5       #tagName:Ljava/lang/String;
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 160
    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/view/MenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 161
    :cond_5
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 162
    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/view/MenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 163
    :cond_6
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 165
    invoke-virtual {v2}, Lcom/actionbarsherlock/view/MenuInflater$MenuState;->addSubMenuItem()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v4

    .line 168
    .local v4, subMenu:Lcom/actionbarsherlock/view/SubMenu;
    invoke-direct {p0, p1, p2, v4}, Lcom/actionbarsherlock/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/actionbarsherlock/view/Menu;)V

    goto :goto_2

    .line 170
    .end local v4           #subMenu:Lcom/actionbarsherlock/view/SubMenu;
    :cond_7
    const/4 v1, 0x1

    .line 171
    move-object v6, v5

    .line 173
    goto :goto_2

    .line 176
    .end local v5           #tagName:Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 177
    .restart local v5       #tagName:Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 178
    const/4 v1, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    goto :goto_2

    :cond_8
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 181
    invoke-virtual {v2}, Lcom/actionbarsherlock/view/MenuInflater$MenuState;->resetGroup()V

    goto :goto_2

    .line 182
    :cond_9
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 185
    invoke-virtual {v2}, Lcom/actionbarsherlock/view/MenuInflater$MenuState;->hasAddedItem()Z

    move-result v7

    if-nez v7, :cond_4

    .line 186
    #getter for: Lcom/actionbarsherlock/view/MenuInflater$MenuState;->itemActionProvider:Lcom/actionbarsherlock/view/ActionProvider;
    invoke-static {v2}, Lcom/actionbarsherlock/view/MenuInflater$MenuState;->access$0(Lcom/actionbarsherlock/view/MenuInflater$MenuState;)Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 187
    #getter for: Lcom/actionbarsherlock/view/MenuInflater$MenuState;->itemActionProvider:Lcom/actionbarsherlock/view/ActionProvider;
    invoke-static {v2}, Lcom/actionbarsherlock/view/MenuInflater$MenuState;->access$0(Lcom/actionbarsherlock/view/MenuInflater$MenuState;)Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 188
    invoke-virtual {v2}, Lcom/actionbarsherlock/view/MenuInflater$MenuState;->addSubMenuItem()Lcom/actionbarsherlock/view/SubMenu;

    goto :goto_2

    .line 190
    :cond_a
    invoke-virtual {v2}, Lcom/actionbarsherlock/view/MenuInflater$MenuState;->addItem()V

    goto :goto_2

    .line 193
    :cond_b
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 194
    const/4 v3, 0x1

    .line 196
    goto :goto_2

    .line 199
    .end local v5           #tagName:Ljava/lang/String;
    :pswitch_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected end of document"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public inflate(ILcom/actionbarsherlock/view/Menu;)V
    .locals 5
    .parameter "menuRes"
    .parameter "menu"

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 109
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v3, p0, Lcom/actionbarsherlock/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 112
    .local v0, attrs:Landroid/util/AttributeSet;
    invoke-direct {p0, v2, v0, p2}, Lcom/actionbarsherlock/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/actionbarsherlock/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 120
    :cond_0
    return-void

    .line 113
    .end local v0           #attrs:Landroid/util/AttributeSet;
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    .line 118
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 119
    :cond_1
    throw v3

    .line 115
    :catch_1
    move-exception v1

    .line 116
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
