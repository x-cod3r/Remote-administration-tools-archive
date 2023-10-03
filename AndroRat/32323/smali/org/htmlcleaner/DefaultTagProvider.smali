.class public Lorg/htmlcleaner/DefaultTagProvider;
.super Ljava/util/HashMap;
.source "DefaultTagProvider.java"

# interfaces
.implements Lorg/htmlcleaner/ITagInfoProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/htmlcleaner/TagInfo;",
        ">;",
        "Lorg/htmlcleaner/ITagInfoProvider;"
    }
.end annotation


# static fields
.field private static _instance:Lorg/htmlcleaner/DefaultTagProvider;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 67
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    const-string v1, "div"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 68
    .local v0, tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 69
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 70
    const-string v1, "div"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "span"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 73
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "span"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "meta"

    move-object v4, v0

    move v6, v11

    move v7, v11

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 76
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "meta"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "link"

    move-object v4, v0

    move v6, v11

    move v7, v11

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 79
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "link"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "title"

    move-object v4, v0

    move v6, v3

    move v7, v11

    move v8, v2

    move v9, v11

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 82
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "style"

    move-object v4, v0

    move v6, v3

    move v7, v11

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 85
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "style"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "bgsound"

    move-object v4, v0

    move v6, v11

    move v7, v11

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 88
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "bgsound"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "h1"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 91
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 92
    const-string v1, "h1,h2,h3,h4,h5,h6,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 93
    const-string v1, "h1"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "h2"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 96
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 97
    const-string v1, "h1,h2,h3,h4,h5,h6,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 98
    const-string v1, "h2"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "h3"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 101
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 102
    const-string v1, "h1,h2,h3,h4,h5,h6,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 103
    const-string v1, "h3"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "h4"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 106
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 107
    const-string v1, "h1,h2,h3,h4,h5,h6,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 108
    const-string v1, "h4"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "h5"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 111
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 112
    const-string v1, "h1,h2,h3,h4,h5,h6,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 113
    const-string v1, "h5"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "h6"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 116
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 117
    const-string v1, "h1,h2,h3,h4,h5,h6,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 118
    const-string v1, "h6"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "p"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 121
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 122
    const-string v1, "p,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 123
    const-string v1, "p"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "strong"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 126
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "strong"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "em"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 129
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "em"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "abbr"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 132
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "abbr"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "acronym"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 135
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "acronym"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "address"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 138
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 139
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 140
    const-string v1, "address"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "bdo"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 143
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "bdo"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "blockquote"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 146
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 147
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 148
    const-string v1, "blockquote"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "cite"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 151
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "cite"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "q"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 154
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "q"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "code"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 157
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "code"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "ins"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 160
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "ins"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "del"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 163
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "del"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "dfn"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 166
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "dfn"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "kbd"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 169
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "kbd"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "pre"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 172
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 173
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 174
    const-string v1, "pre"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "samp"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 177
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "samp"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "listing"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 180
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 181
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 182
    const-string v1, "listing"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "var"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 185
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "var"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "br"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 188
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "br"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "wbr"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 191
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "wbr"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "nobr"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 194
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "nobr"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 195
    const-string v1, "nobr"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "xmp"

    move-object v4, v0

    move v6, v3

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 198
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "xmp"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 201
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 202
    const-string v1, "a"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "base"

    move-object v4, v0

    move v6, v11

    move v7, v11

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 205
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "base"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "img"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 208
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "img"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "area"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 211
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "map"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 212
    const-string v1, "area"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 213
    const-string v1, "area"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "map"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 216
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "map"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 217
    const-string v1, "map"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "object"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 220
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "object"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "param"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 223
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 224
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 225
    const-string v1, "param"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "applet"

    move v4, v11

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 228
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "applet"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "xml"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 231
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "xml"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "ul"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 234
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 235
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 236
    const-string v1, "ul"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "ol"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 239
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 240
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 241
    const-string v1, "ol"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "li"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 244
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 245
    const-string v1, "li,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 246
    const-string v1, "li"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "dl"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 249
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 250
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 251
    const-string v1, "dl"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "dt"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 254
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "dt,dd"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 255
    const-string v1, "dt"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "dd"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 258
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "dt,dd"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 259
    const-string v1, "dd"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "menu"

    move v4, v11

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 262
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 263
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 264
    const-string v1, "menu"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "dir"

    move v4, v11

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 267
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 268
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 269
    const-string v1, "dir"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "table"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 272
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "tr,tbody,thead,tfoot,colgroup,col,form,caption,tr"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 273
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 274
    const-string v1, "tr,thead,tbody,tfoot,caption,colgroup,table,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 275
    const-string v1, "table"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "tr"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 278
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "table"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 279
    const-string v1, "tbody"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 280
    const-string v1, "td,th"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 281
    const-string v1, "thead,tfoot"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineHigherLevelTags(Ljava/lang/String;)V

    .line 282
    const-string v1, "tr,td,th,caption,colgroup"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 283
    const-string v1, "tr"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "td"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 286
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "table"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 287
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 288
    const-string v1, "td,th,caption,colgroup"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 289
    const-string v1, "td"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "th"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 292
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "table"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 293
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 294
    const-string v1, "td,th,caption,colgroup"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 295
    const-string v1, "th"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "tbody"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 298
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "table"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 299
    const-string v1, "tr,form"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 300
    const-string v1, "td,th,tr,tbody,thead,tfoot,caption,colgroup"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 301
    const-string v1, "tbody"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "thead"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 304
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "table"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 305
    const-string v1, "tr,form"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 306
    const-string v1, "td,th,tr,tbody,thead,tfoot,caption,colgroup"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 307
    const-string v1, "thead"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "tfoot"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 310
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "table"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 311
    const-string v1, "tr,form"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 312
    const-string v1, "td,th,tr,tbody,thead,tfoot,caption,colgroup"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 313
    const-string v1, "tfoot"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "col"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 316
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "table"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 317
    const-string v1, "col"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "colgroup"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 320
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "table"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 321
    const-string v1, "col"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 322
    const-string v1, "td,th,tr,tbody,thead,tfoot,caption,colgroup"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 323
    const-string v1, "colgroup"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "caption"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 326
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "table"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 327
    const-string v1, "td,th,tr,tbody,thead,tfoot,caption,colgroup"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 328
    const-string v1, "caption"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "form"

    move v4, v2

    move v5, v2

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 331
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "form"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    .line 332
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 333
    const-string v1, "option,optgroup,textarea,select,fieldset,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 334
    const-string v1, "form"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "input"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 337
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "select,optgroup,option"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 338
    const-string v1, "input"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "textarea"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 341
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "select,optgroup,option"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 342
    const-string v1, "textarea"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "select"

    move v4, v2

    move v5, v2

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 345
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "option,optgroup"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 346
    const-string v1, "option,optgroup,select"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 347
    const-string v1, "select"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "option"

    move-object v4, v0

    move v6, v3

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v11

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 350
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "select"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 351
    const-string v1, "option"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 352
    const-string v1, "option"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "optgroup"

    move v4, v2

    move v5, v2

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 355
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "select"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 356
    const-string v1, "option"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 357
    const-string v1, "optgroup"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 358
    const-string v1, "optgroup"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "button"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 361
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "select,optgroup,option"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 362
    const-string v1, "button"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "label"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 365
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "label"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "fieldset"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 368
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 369
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 370
    const-string v1, "fieldset"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "legend"

    move-object v4, v0

    move v6, v3

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 373
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "fieldset"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 374
    const-string v1, "legend"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 375
    const-string v1, "legend"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "isindex"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v11

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 378
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 379
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 380
    const-string v1, "isindex"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "script"

    move-object v4, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 383
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "script"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "noscript"

    move-object v4, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 386
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "noscript"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 389
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "u,i,tt,sub,sup,big,small,strike,blink,s"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 390
    const-string v1, "b"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "i"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 393
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b,u,tt,sub,sup,big,small,strike,blink,s"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 394
    const-string v1, "i"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "u"

    move v4, v11

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 397
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b,i,tt,sub,sup,big,small,strike,blink,s"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 398
    const-string v1, "u"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "tt"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 401
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b,u,i,sub,sup,big,small,strike,blink,s"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 402
    const-string v1, "tt"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "sub"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 405
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b,u,i,tt,sup,big,small,strike,blink,s"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 406
    const-string v1, "sub"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "sup"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 409
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b,u,i,tt,sub,big,small,strike,blink,s"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 410
    const-string v1, "sup"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "big"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 413
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b,u,i,tt,sub,sup,small,strike,blink,s"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 414
    const-string v1, "big"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "small"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 417
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b,u,i,tt,sub,sup,big,strike,blink,s"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 418
    const-string v1, "small"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "strike"

    move v4, v11

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 421
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b,u,i,tt,sub,sup,big,small,blink,s"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 422
    const-string v1, "strike"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "blink"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 425
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b,u,i,tt,sub,sup,big,small,strike,s"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 426
    const-string v1, "blink"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "marquee"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 429
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 430
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 431
    const-string v1, "marquee"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "s"

    move v4, v11

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 434
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "b,u,i,tt,sub,sup,big,small,strike,blink"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 435
    const-string v1, "s"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "hr"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 438
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 439
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 440
    const-string v1, "hr"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "font"

    move v4, v11

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 443
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "font"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "basefont"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v11

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 446
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "basefont"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "center"

    move v4, v11

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 449
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 450
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 451
    const-string v1, "center"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "comment"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 454
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "comment"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "server"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 457
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "server"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "iframe"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 460
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "iframe"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v0, Lorg/htmlcleaner/TagInfo;

    .end local v0           #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v5, "embed"

    move-object v4, v0

    move v6, v11

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;IIZZZ)V

    .line 463
    .restart local v0       #tagInfo:Lorg/htmlcleaner/TagInfo;
    const-string v1, "a,bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 464
    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 465
    const-string v1, "embed"

    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/htmlcleaner/DefaultTagProvider;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lorg/htmlcleaner/DefaultTagProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/htmlcleaner/DefaultTagProvider;->_instance:Lorg/htmlcleaner/DefaultTagProvider;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/htmlcleaner/DefaultTagProvider;

    invoke-direct {v0}, Lorg/htmlcleaner/DefaultTagProvider;-><init>()V

    sput-object v0, Lorg/htmlcleaner/DefaultTagProvider;->_instance:Lorg/htmlcleaner/DefaultTagProvider;

    .line 61
    :cond_0
    sget-object v0, Lorg/htmlcleaner/DefaultTagProvider;->_instance:Lorg/htmlcleaner/DefaultTagProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addTagInfo(Lorg/htmlcleaner/TagInfo;)V
    .locals 1
    .parameter "tagInfo"

    .prologue
    .line 487
    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_0
    return-void
.end method

.method public getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/DefaultTagProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/TagInfo;

    return-object v0
.end method

.method public removeTagInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "tagName"

    .prologue
    .line 477
    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/htmlcleaner/DefaultTagProvider;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_0
    return-void
.end method
