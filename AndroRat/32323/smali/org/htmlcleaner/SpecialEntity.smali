.class public Lorg/htmlcleaner/SpecialEntity;
.super Ljava/lang/Object;
.source "SpecialEntity.java"


# static fields
.field private static entities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/SpecialEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static maxEntityLength:I


# instance fields
.field private intCode:I

.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/htmlcleaner/SpecialEntity;->entities:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    sput v0, Lorg/htmlcleaner/SpecialEntity;->maxEntityLength:I

    .line 79
    const-string v0, "nbsp"

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 80
    const-string v0, "iexcl"

    const/16 v1, 0xa1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 81
    const-string v0, "cent"

    const/16 v1, 0xa2

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 82
    const-string v0, "pound"

    const/16 v1, 0xa3

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 83
    const-string v0, "curren"

    const/16 v1, 0xa4

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 84
    const-string v0, "yen"

    const/16 v1, 0xa5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 85
    const-string v0, "brvbar"

    const/16 v1, 0xa6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 86
    const-string v0, "sect"

    const/16 v1, 0xa7

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 87
    const-string v0, "uml"

    const/16 v1, 0xa8

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 88
    const-string v0, "copy"

    const/16 v1, 0xa9

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 89
    const-string v0, "ordf"

    const/16 v1, 0xaa

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 90
    const-string v0, "laquo"

    const/16 v1, 0xab

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 91
    const-string v0, "not"

    const/16 v1, 0xac

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 92
    const-string v0, "shy"

    const/16 v1, 0xad

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 93
    const-string v0, "reg"

    const/16 v1, 0xae

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 94
    const-string v0, "macr"

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 95
    const-string v0, "deg"

    const/16 v1, 0xb0

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 96
    const-string v0, "plusmn"

    const/16 v1, 0xb1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 97
    const-string v0, "sup2"

    const/16 v1, 0xb2

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 98
    const-string v0, "sup3"

    const/16 v1, 0xb3

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 99
    const-string v0, "acute"

    const/16 v1, 0xb4

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 100
    const-string v0, "micro"

    const/16 v1, 0xb5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 101
    const-string v0, "para"

    const/16 v1, 0xb6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 102
    const-string v0, "middot"

    const/16 v1, 0xb7

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 103
    const-string v0, "cedil"

    const/16 v1, 0xb8

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 104
    const-string v0, "sup1"

    const/16 v1, 0xb9

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 105
    const-string v0, "ordm"

    const/16 v1, 0xba

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 106
    const-string v0, "raquo"

    const/16 v1, 0xbb

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 107
    const-string v0, "frac14"

    const/16 v1, 0xbc

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 108
    const-string v0, "frac12"

    const/16 v1, 0xbd

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 109
    const-string v0, "frac34"

    const/16 v1, 0xbe

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 110
    const-string v0, "iquest"

    const/16 v1, 0xbf

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 111
    const-string v0, "Agrave"

    const/16 v1, 0xc0

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 112
    const-string v0, "Aacute"

    const/16 v1, 0xc1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 113
    const-string v0, "Acirc"

    const/16 v1, 0xc2

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 114
    const-string v0, "Atilde"

    const/16 v1, 0xc3

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 115
    const-string v0, "Auml"

    const/16 v1, 0xc4

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 116
    const-string v0, "Aring"

    const/16 v1, 0xc5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 117
    const-string v0, "AElig"

    const/16 v1, 0xc6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 118
    const-string v0, "Ccedil"

    const/16 v1, 0xc7

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 119
    const-string v0, "Egrave"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 120
    const-string v0, "Eacute"

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 121
    const-string v0, "Ecirc"

    const/16 v1, 0xca

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 122
    const-string v0, "Euml"

    const/16 v1, 0xcb

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 123
    const-string v0, "Igrave"

    const/16 v1, 0xcc

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 124
    const-string v0, "Iacute"

    const/16 v1, 0xcd

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 125
    const-string v0, "Icirc"

    const/16 v1, 0xce

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 126
    const-string v0, "Iuml"

    const/16 v1, 0xcf

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 127
    const-string v0, "ETH"

    const/16 v1, 0xd0

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 128
    const-string v0, "Ntilde"

    const/16 v1, 0xd1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 129
    const-string v0, "Ograve"

    const/16 v1, 0xd2

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 130
    const-string v0, "Oacute"

    const/16 v1, 0xd3

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 131
    const-string v0, "Ocirc"

    const/16 v1, 0xd4

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 132
    const-string v0, "Otilde"

    const/16 v1, 0xd5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 133
    const-string v0, "Ouml"

    const/16 v1, 0xd6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 134
    const-string v0, "times"

    const/16 v1, 0xd7

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 135
    const-string v0, "Oslash"

    const/16 v1, 0xd8

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 136
    const-string v0, "Ugrave"

    const/16 v1, 0xd9

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 137
    const-string v0, "Uacute"

    const/16 v1, 0xda

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 138
    const-string v0, "Ucirc"

    const/16 v1, 0xdb

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 139
    const-string v0, "Uuml"

    const/16 v1, 0xdc

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 140
    const-string v0, "Yacute"

    const/16 v1, 0xdd

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 141
    const-string v0, "THORN"

    const/16 v1, 0xde

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 142
    const-string v0, "szlig"

    const/16 v1, 0xdf

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 143
    const-string v0, "agrave"

    const/16 v1, 0xe0

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 144
    const-string v0, "aacute"

    const/16 v1, 0xe1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 145
    const-string v0, "acirc"

    const/16 v1, 0xe2

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 146
    const-string v0, "atilde"

    const/16 v1, 0xe3

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 147
    const-string v0, "auml"

    const/16 v1, 0xe4

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 148
    const-string v0, "aring"

    const/16 v1, 0xe5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 149
    const-string v0, "aelig"

    const/16 v1, 0xe6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 150
    const-string v0, "ccedil"

    const/16 v1, 0xe7

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 151
    const-string v0, "egrave"

    const/16 v1, 0xe8

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 152
    const-string v0, "eacute"

    const/16 v1, 0xe9

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 153
    const-string v0, "ecirc"

    const/16 v1, 0xea

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 154
    const-string v0, "euml"

    const/16 v1, 0xeb

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 155
    const-string v0, "igrave"

    const/16 v1, 0xec

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 156
    const-string v0, "iacute"

    const/16 v1, 0xed

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 157
    const-string v0, "icirc"

    const/16 v1, 0xee

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 158
    const-string v0, "iuml"

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 159
    const-string v0, "eth"

    const/16 v1, 0xf0

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 160
    const-string v0, "ntilde"

    const/16 v1, 0xf1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 161
    const-string v0, "ograve"

    const/16 v1, 0xf2

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 162
    const-string v0, "oacute"

    const/16 v1, 0xf3

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 163
    const-string v0, "ocirc"

    const/16 v1, 0xf4

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 164
    const-string v0, "otilde"

    const/16 v1, 0xf5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 165
    const-string v0, "ouml"

    const/16 v1, 0xf6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 166
    const-string v0, "divide"

    const/16 v1, 0xf7

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 167
    const-string v0, "oslash"

    const/16 v1, 0xf8

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 168
    const-string v0, "ugrave"

    const/16 v1, 0xf9

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 169
    const-string v0, "uacute"

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 170
    const-string v0, "ucirc"

    const/16 v1, 0xfb

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 171
    const-string v0, "uuml"

    const/16 v1, 0xfc

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 172
    const-string v0, "yacute"

    const/16 v1, 0xfd

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 173
    const-string v0, "thorn"

    const/16 v1, 0xfe

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 174
    const-string v0, "yuml"

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 175
    const-string v0, "OElig"

    const/16 v1, 0x152

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 176
    const-string v0, "oelig"

    const/16 v1, 0x153

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 177
    const-string v0, "Scaron"

    const/16 v1, 0x160

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 178
    const-string v0, "scaron"

    const/16 v1, 0x161

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 179
    const-string v0, "Yuml"

    const/16 v1, 0x178

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 180
    const-string v0, "fnof"

    const/16 v1, 0x192

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 181
    const-string v0, "circ"

    const/16 v1, 0x2c6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 182
    const-string v0, "tilde"

    const/16 v1, 0x2dc

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 185
    const-string v0, "Alpha"

    const/16 v1, 0x391

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 186
    const-string v0, "Beta"

    const/16 v1, 0x392

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 187
    const-string v0, "Gamma"

    const/16 v1, 0x393

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 188
    const-string v0, "Delta"

    const/16 v1, 0x394

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 189
    const-string v0, "Epsilon"

    const/16 v1, 0x395

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 190
    const-string v0, "Zeta"

    const/16 v1, 0x396

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 191
    const-string v0, "Eta"

    const/16 v1, 0x397

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 192
    const-string v0, "Theta"

    const/16 v1, 0x398

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 193
    const-string v0, "Iota"

    const/16 v1, 0x399

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 194
    const-string v0, "Kappa"

    const/16 v1, 0x39a

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 195
    const-string v0, "Lambda"

    const/16 v1, 0x39b

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 196
    const-string v0, "Mu"

    const/16 v1, 0x39c

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 197
    const-string v0, "Nu"

    const/16 v1, 0x39d

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 198
    const-string v0, "Xi"

    const/16 v1, 0x39e

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 199
    const-string v0, "Omicron"

    const/16 v1, 0x39f

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 200
    const-string v0, "Pi"

    const/16 v1, 0x3a0

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 201
    const-string v0, "Rho"

    const/16 v1, 0x3a1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 202
    const-string v0, "Sigma"

    const/16 v1, 0x3a3

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 203
    const-string v0, "Tau"

    const/16 v1, 0x3a4

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 204
    const-string v0, "Upsilon"

    const/16 v1, 0x3a5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 205
    const-string v0, "Phi"

    const/16 v1, 0x3a6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 206
    const-string v0, "Chi"

    const/16 v1, 0x3a7

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 207
    const-string v0, "Psi"

    const/16 v1, 0x3a8

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 208
    const-string v0, "Omega"

    const/16 v1, 0x3a9

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 209
    const-string v0, "alpha"

    const/16 v1, 0x3b1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 210
    const-string v0, "beta"

    const/16 v1, 0x3b2

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 211
    const-string v0, "gamma"

    const/16 v1, 0x3b3

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 212
    const-string v0, "delta"

    const/16 v1, 0x3b4

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 213
    const-string v0, "epsilon"

    const/16 v1, 0x3b5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 214
    const-string v0, "zeta"

    const/16 v1, 0x3b6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 215
    const-string v0, "eta"

    const/16 v1, 0x3b7

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 216
    const-string v0, "theta"

    const/16 v1, 0x3b8

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 217
    const-string v0, "iota"

    const/16 v1, 0x3b9

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 218
    const-string v0, "kappa"

    const/16 v1, 0x3ba

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 219
    const-string v0, "lambda"

    const/16 v1, 0x3bb

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 220
    const-string v0, "mu"

    const/16 v1, 0x3bc

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 221
    const-string v0, "nu"

    const/16 v1, 0x3bd

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 222
    const-string v0, "xi"

    const/16 v1, 0x3be

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 223
    const-string v0, "omicron"

    const/16 v1, 0x3bf

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 224
    const-string v0, "pi"

    const/16 v1, 0x3c0

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 225
    const-string v0, "rho"

    const/16 v1, 0x3c1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 226
    const-string v0, "sigmaf"

    const/16 v1, 0x3c2

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 227
    const-string v0, "sigma"

    const/16 v1, 0x3c3

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 228
    const-string v0, "tau"

    const/16 v1, 0x3c4

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 229
    const-string v0, "upsilon"

    const/16 v1, 0x3c5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 230
    const-string v0, "phi"

    const/16 v1, 0x3c6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 231
    const-string v0, "chi"

    const/16 v1, 0x3c7

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 232
    const-string v0, "psi"

    const/16 v1, 0x3c8

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 233
    const-string v0, "omega"

    const/16 v1, 0x3c9

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 234
    const-string v0, "thetasym"

    const/16 v1, 0x3d1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 235
    const-string v0, "upsih"

    const/16 v1, 0x3d2

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 236
    const-string v0, "piv"

    const/16 v1, 0x3d6

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 238
    const-string v0, "ensp"

    const/16 v1, 0x2002

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 239
    const-string v0, "emsp"

    const/16 v1, 0x2003

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 240
    const-string v0, "thinsp"

    const/16 v1, 0x2009

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 241
    const-string v0, "zwnj"

    const/16 v1, 0x200c

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 242
    const-string v0, "zwj"

    const/16 v1, 0x200d

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 243
    const-string v0, "lrm"

    const/16 v1, 0x200e

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 244
    const-string v0, "rlm"

    const/16 v1, 0x200f

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 245
    const-string v0, "ndash"

    const/16 v1, 0x2013

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 246
    const-string v0, "mdash"

    const/16 v1, 0x2014

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 247
    const-string v0, "lsquo"

    const/16 v1, 0x2018

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 248
    const-string v0, "rsquo"

    const/16 v1, 0x2019

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 249
    const-string v0, "sbquo"

    const/16 v1, 0x201a

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 250
    const-string v0, "ldquo"

    const/16 v1, 0x201c

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 251
    const-string v0, "rdquo"

    const/16 v1, 0x201d

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 252
    const-string v0, "bdquo"

    const/16 v1, 0x201e

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 253
    const-string v0, "dagger"

    const/16 v1, 0x2020

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 254
    const-string v0, "Dagger"

    const/16 v1, 0x2021

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 255
    const-string v0, "bull"

    const/16 v1, 0x2022

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 257
    const-string v0, "hellip"

    const/16 v1, 0x2026

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 258
    const-string v0, "permil"

    const/16 v1, 0x2030

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 259
    const-string v0, "prime"

    const/16 v1, 0x2032

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 260
    const-string v0, "Prime"

    const/16 v1, 0x2033

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 261
    const-string v0, "lsaquo"

    const/16 v1, 0x2039

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 262
    const-string v0, "rsaquo"

    const/16 v1, 0x203a

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 263
    const-string v0, "oline"

    const/16 v1, 0x203e

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 264
    const-string v0, "frasl"

    const/16 v1, 0x2044

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 265
    const-string v0, "euro"

    const/16 v1, 0x20ac

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 266
    const-string v0, "image"

    const/16 v1, 0x2111

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 267
    const-string v0, "weierp"

    const/16 v1, 0x2118

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 268
    const-string v0, "real"

    const/16 v1, 0x211c

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 269
    const-string v0, "trade"

    const/16 v1, 0x2122

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 270
    const-string v0, "alefsym"

    const/16 v1, 0x2135

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 271
    const-string v0, "larr"

    const/16 v1, 0x2190

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 272
    const-string v0, "uarr"

    const/16 v1, 0x2191

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 273
    const-string v0, "rarr"

    const/16 v1, 0x2192

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 274
    const-string v0, "darr"

    const/16 v1, 0x2193

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 275
    const-string v0, "harr"

    const/16 v1, 0x2194

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 276
    const-string v0, "crarr"

    const/16 v1, 0x21b5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 277
    const-string v0, "lArr"

    const/16 v1, 0x21d0

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 278
    const-string v0, "uArr"

    const/16 v1, 0x21d1

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 279
    const-string v0, "rArr"

    const/16 v1, 0x21d2

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 280
    const-string v0, "dArr"

    const/16 v1, 0x21d3

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 281
    const-string v0, "hArr"

    const/16 v1, 0x21d4

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 284
    const-string v0, "forall"

    const/16 v1, 0x2200

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 285
    const-string v0, "part"

    const/16 v1, 0x2202

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 286
    const-string v0, "exist"

    const/16 v1, 0x2203

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 287
    const-string v0, "empty"

    const/16 v1, 0x2205

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 288
    const-string v0, "nabla"

    const/16 v1, 0x2207

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 289
    const-string v0, "isin"

    const/16 v1, 0x2208

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 290
    const-string v0, "notin"

    const/16 v1, 0x2209

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 291
    const-string v0, "ni"

    const/16 v1, 0x220b

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 292
    const-string v0, "prod"

    const/16 v1, 0x220f

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 293
    const-string v0, "sum"

    const/16 v1, 0x2211

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 294
    const-string v0, "minus"

    const/16 v1, 0x2212

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 295
    const-string v0, "lowast"

    const/16 v1, 0x2217

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 296
    const-string v0, "radic"

    const/16 v1, 0x221a

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 297
    const-string v0, "prop"

    const/16 v1, 0x221d

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 298
    const-string v0, "infin"

    const/16 v1, 0x221e

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 299
    const-string v0, "ang"

    const/16 v1, 0x2220

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 300
    const-string v0, "and"

    const/16 v1, 0x2227

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 301
    const-string v0, "or"

    const/16 v1, 0x2228

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 302
    const-string v0, "cap"

    const/16 v1, 0x2229

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 303
    const-string v0, "cup"

    const/16 v1, 0x222a

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 304
    const-string v0, "int"

    const/16 v1, 0x222b

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 305
    const-string v0, "there4"

    const/16 v1, 0x2234

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 306
    const-string v0, "sim"

    const/16 v1, 0x223c

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 307
    const-string v0, "cong"

    const/16 v1, 0x2245

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 308
    const-string v0, "asymp"

    const/16 v1, 0x2248

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 309
    const-string v0, "ne"

    const/16 v1, 0x2260

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 310
    const-string v0, "equiv"

    const/16 v1, 0x2261

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 311
    const-string v0, "le"

    const/16 v1, 0x2264

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 312
    const-string v0, "ge"

    const/16 v1, 0x2265

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 313
    const-string v0, "sub"

    const/16 v1, 0x2282

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 314
    const-string v0, "sup"

    const/16 v1, 0x2283

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 315
    const-string v0, "nsub"

    const/16 v1, 0x2284

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 316
    const-string v0, "sube"

    const/16 v1, 0x2286

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 317
    const-string v0, "supe"

    const/16 v1, 0x2287

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 318
    const-string v0, "oplus"

    const/16 v1, 0x2295

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 319
    const-string v0, "otimes"

    const/16 v1, 0x2297

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 320
    const-string v0, "perp"

    const/16 v1, 0x22a5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 321
    const-string v0, "sdot"

    const/16 v1, 0x22c5

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 322
    const-string v0, "lceil"

    const/16 v1, 0x2308

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 323
    const-string v0, "rceil"

    const/16 v1, 0x2309

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 324
    const-string v0, "lfloor"

    const/16 v1, 0x230a

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 325
    const-string v0, "rfloor"

    const/16 v1, 0x230b

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 326
    const-string v0, "lang"

    const/16 v1, 0x2329

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 327
    const-string v0, "rang"

    const/16 v1, 0x232a

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 328
    const-string v0, "loz"

    const/16 v1, 0x25ca

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 329
    const-string v0, "spades"

    const/16 v1, 0x2660

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 330
    const-string v0, "clubs"

    const/16 v1, 0x2663

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 331
    const-string v0, "hearts"

    const/16 v1, 0x2665

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 332
    const-string v0, "diams"

    const/16 v1, 0x2666

    invoke-static {v0, v1}, Lorg/htmlcleaner/SpecialEntity;->addEntity(Ljava/lang/String;I)V

    .line 333
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "key"
    .parameter "intCode"

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lorg/htmlcleaner/SpecialEntity;->key:Ljava/lang/String;

    .line 341
    iput p2, p0, Lorg/htmlcleaner/SpecialEntity;->intCode:I

    .line 342
    return-void
.end method

.method public static addEntity(Ljava/lang/String;I)V
    .locals 4
    .parameter "entityName"
    .parameter "intCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/HtmlCleanerException;
        }
    .end annotation

    .prologue
    .line 60
    sget-object v1, Lorg/htmlcleaner/SpecialEntity;->entities:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Lorg/htmlcleaner/HtmlCleanerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entity \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is already defined!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    sget-object v1, Lorg/htmlcleaner/SpecialEntity;->entities:Ljava/util/Map;

    new-instance v2, Lorg/htmlcleaner/SpecialEntity;

    invoke-direct {v2, p0, p1}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 65
    .local v0, entityNameLen:I
    sget v1, Lorg/htmlcleaner/SpecialEntity;->maxEntityLength:I

    if-le v0, v1, :cond_1

    .line 66
    sput v0, Lorg/htmlcleaner/SpecialEntity;->maxEntityLength:I

    .line 68
    :cond_1
    return-void
.end method

.method public static getEntity(Ljava/lang/String;)Lorg/htmlcleaner/SpecialEntity;
    .locals 1
    .parameter "key"

    .prologue
    .line 71
    sget-object v0, Lorg/htmlcleaner/SpecialEntity;->entities:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/SpecialEntity;

    return-object v0
.end method

.method static getMaxEntityLength()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lorg/htmlcleaner/SpecialEntity;->maxEntityLength:I

    return v0
.end method


# virtual methods
.method public getCharacter()C
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lorg/htmlcleaner/SpecialEntity;->intCode:I

    int-to-char v0, v0

    return v0
.end method

.method public getDecimalNCR()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/htmlcleaner/SpecialEntity;->intCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEscapedValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/htmlcleaner/SpecialEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHexNCR()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&#x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/htmlcleaner/SpecialEntity;->intCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntCode()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lorg/htmlcleaner/SpecialEntity;->intCode:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/htmlcleaner/SpecialEntity;->key:Ljava/lang/String;

    return-object v0
.end method
