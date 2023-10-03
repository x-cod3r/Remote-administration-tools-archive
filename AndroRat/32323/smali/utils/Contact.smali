.class public Lutils/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xa537930ccb2edd0L


# instance fields
.field OrganisationName:Ljava/lang/String;

.field OrganisationStatus:Ljava/lang/String;

.field city:Ljava/lang/String;

.field country:Ljava/lang/String;

.field display_name:Ljava/lang/String;

.field emails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field id:J

.field last_time_contacted:J

.field messaging:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field notes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field phones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field photo:[B

.field postalcode:Ljava/lang/String;

.field region:Ljava/lang/String;

.field starred:I

.field street:Ljava/lang/String;

.field times_contacted:I

.field type_addr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lutils/Contact;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lutils/Contact;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lutils/Contact;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()Ljava/util/ArrayList;
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
    .line 107
    iget-object v0, p0, Lutils/Contact;->emails:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lutils/Contact;->id:J

    return-wide v0
.end method

.method public getLast_time_contacted()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lutils/Contact;->last_time_contacted:J

    return-wide v0
.end method

.method public getMessaging()Ljava/util/ArrayList;
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
    .line 163
    iget-object v0, p0, Lutils/Contact;->messaging:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNotes()Ljava/util/ArrayList;
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
    .line 115
    iget-object v0, p0, Lutils/Contact;->notes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrganisationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lutils/Contact;->OrganisationName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganisationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lutils/Contact;->OrganisationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPhones()Ljava/util/ArrayList;
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
    .line 99
    iget-object v0, p0, Lutils/Contact;->phones:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lutils/Contact;->photo:[B

    return-object v0
.end method

.method public getPostalcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lutils/Contact;->postalcode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lutils/Contact;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getStarred()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lutils/Contact;->starred:I

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lutils/Contact;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes_contacted()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lutils/Contact;->times_contacted:I

    return v0
.end method

.method public getType_addr()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lutils/Contact;->type_addr:I

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 135
    iput-object p1, p0, Lutils/Contact;->city:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 151
    iput-object p1, p0, Lutils/Contact;->country:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setDisplay_name(Ljava/lang/String;)V
    .locals 0
    .parameter "display_name"

    .prologue
    .line 87
    iput-object p1, p0, Lutils/Contact;->display_name:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setEmails(Ljava/util/ArrayList;)V
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
    .line 111
    .local p1, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lutils/Contact;->emails:Ljava/util/ArrayList;

    .line 112
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 63
    iput-wide p1, p0, Lutils/Contact;->id:J

    .line 64
    return-void
.end method

.method public setLast_time_contacted(J)V
    .locals 0
    .parameter "last_time_contacted"

    .prologue
    .line 79
    iput-wide p1, p0, Lutils/Contact;->last_time_contacted:J

    .line 80
    return-void
.end method

.method public setMessaging(Ljava/util/ArrayList;)V
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
    .line 167
    .local p1, messaging:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lutils/Contact;->messaging:Ljava/util/ArrayList;

    .line 168
    return-void
.end method

.method public setNotes(Ljava/util/ArrayList;)V
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
    .line 119
    .local p1, notes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lutils/Contact;->notes:Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method public setOrganisationName(Ljava/lang/String;)V
    .locals 0
    .parameter "organisationName"

    .prologue
    .line 175
    iput-object p1, p0, Lutils/Contact;->OrganisationName:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setOrganisationStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "organisationStatus"

    .prologue
    .line 183
    iput-object p1, p0, Lutils/Contact;->OrganisationStatus:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setPhones(Ljava/util/ArrayList;)V
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
    .line 103
    .local p1, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lutils/Contact;->phones:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method public setPhoto([B)V
    .locals 0
    .parameter "photo"

    .prologue
    .line 191
    iput-object p1, p0, Lutils/Contact;->photo:[B

    .line 192
    return-void
.end method

.method public setPostalcode(Ljava/lang/String;)V
    .locals 0
    .parameter "postalcode"

    .prologue
    .line 143
    iput-object p1, p0, Lutils/Contact;->postalcode:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .parameter "reg"

    .prologue
    .line 56
    iput-object p1, p0, Lutils/Contact;->region:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setStarred(I)V
    .locals 0
    .parameter "starred"

    .prologue
    .line 95
    iput p1, p0, Lutils/Contact;->starred:I

    .line 96
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .parameter "street"

    .prologue
    .line 127
    iput-object p1, p0, Lutils/Contact;->street:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTimes_contacted(I)V
    .locals 0
    .parameter "times_contacted"

    .prologue
    .line 71
    iput p1, p0, Lutils/Contact;->times_contacted:I

    .line 72
    return-void
.end method

.method public setType_addr(I)V
    .locals 0
    .parameter "type_addr"

    .prologue
    .line 159
    iput p1, p0, Lutils/Contact;->type_addr:I

    .line 160
    return-void
.end method
