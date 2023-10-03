.class public Lutils/MyFile;
.super Ljava/lang/Object;
.source "MyFile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7014e03f2146082dL


# instance fields
.field public hidden:Z

.field public isDir:Z

.field public isFile:Z

.field public lastModif:J

.field public length:J

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lutils/MyFile;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public r:Z

.field public w:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .parameter "f"

    .prologue
    const-wide/16 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lutils/MyFile;->isFile:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lutils/MyFile;->isDir:Z

    .line 30
    iput-wide v1, p0, Lutils/MyFile;->lastModif:J

    .line 31
    iput-wide v1, p0, Lutils/MyFile;->length:J

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lutils/MyFile;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lutils/MyFile;->length:J

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lutils/MyFile;->lastModif:J

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    iput-boolean v0, p0, Lutils/MyFile;->isFile:Z

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iput-boolean v0, p0, Lutils/MyFile;->isDir:Z

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    iput-boolean v0, p0, Lutils/MyFile;->r:Z

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    iput-boolean v0, p0, Lutils/MyFile;->w:Z

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lutils/MyFile;->hidden:Z

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lutils/MyFile;->path:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lutils/MyFile;->list:Ljava/util/ArrayList;

    .line 55
    return-void
.end method


# virtual methods
.method public addChild(Lutils/MyFile;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 62
    iget-object v0, p0, Lutils/MyFile;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public build()[B
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastModif()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lutils/MyFile;->lastModif:J

    return-wide v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lutils/MyFile;->length:J

    return-wide v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lutils/MyFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lutils/MyFile;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lutils/MyFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lutils/MyFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isDir()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lutils/MyFile;->isDir:Z

    return v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lutils/MyFile;->isFile:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lutils/MyFile;->hidden:Z

    return v0
.end method

.method public isR()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lutils/MyFile;->r:Z

    return v0
.end method

.method public isW()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lutils/MyFile;->w:Z

    return v0
.end method

.method public parse([B)V
    .locals 0
    .parameter "packet"

    .prologue
    .line 149
    return-void
.end method

.method public setDir(Z)V
    .locals 0
    .parameter "isDir"

    .prologue
    .line 78
    iput-boolean p1, p0, Lutils/MyFile;->isDir:Z

    .line 79
    return-void
.end method

.method public setFile(Z)V
    .locals 0
    .parameter "isFile"

    .prologue
    .line 70
    iput-boolean p1, p0, Lutils/MyFile;->isFile:Z

    .line 71
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 126
    iput-boolean p1, p0, Lutils/MyFile;->hidden:Z

    .line 127
    return-void
.end method

.method public setLastModif(J)V
    .locals 0
    .parameter "lastModif"

    .prologue
    .line 86
    iput-wide p1, p0, Lutils/MyFile;->lastModif:J

    .line 87
    return-void
.end method

.method public setLength(J)V
    .locals 0
    .parameter "length"

    .prologue
    .line 94
    iput-wide p1, p0, Lutils/MyFile;->length:J

    .line 95
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 102
    iput-object p1, p0, Lutils/MyFile;->name:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 134
    iput-object p1, p0, Lutils/MyFile;->path:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setR(Z)V
    .locals 0
    .parameter "r"

    .prologue
    .line 110
    iput-boolean p1, p0, Lutils/MyFile;->r:Z

    .line 111
    return-void
.end method

.method public setW(Z)V
    .locals 0
    .parameter "w"

    .prologue
    .line 118
    iput-boolean p1, p0, Lutils/MyFile;->w:Z

    .line 119
    return-void
.end method
