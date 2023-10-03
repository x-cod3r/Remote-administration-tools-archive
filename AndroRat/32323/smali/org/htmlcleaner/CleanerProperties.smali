.class public Lorg/htmlcleaner/CleanerProperties;
.super Ljava/lang/Object;
.source "CleanerProperties.java"


# static fields
.field public static final BOOL_ATT_EMPTY:Ljava/lang/String; = "empty"

.field public static final BOOL_ATT_SELF:Ljava/lang/String; = "self"

.field public static final BOOL_ATT_TRUE:Ljava/lang/String; = "true"


# instance fields
.field advancedXmlEscape:Z

.field allowHtmlInsideAttributes:Z

.field allowMultiWordAttributes:Z

.field booleanAttributeValues:Ljava/lang/String;

.field hyphenReplacementInComment:Ljava/lang/String;

.field ignoreQuestAndExclam:Z

.field namespacesAware:Z

.field omitComments:Z

.field omitDeprecatedTags:Z

.field omitDoctypeDeclaration:Z

.field omitHtmlEnvelope:Z

.field omitUnknownTags:Z

.field omitXmlDeclaration:Z

.field pruneTags:Ljava/lang/String;

.field recognizeUnicodeChars:Z

.field tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

.field transResCharsToNCR:Z

.field transSpecialEntitiesToNCR:Z

.field translateSpecialEntities:Z

.field treatDeprecatedTagsAsContent:Z

.field treatUnknownTagsAsContent:Z

.field useCdataForScriptAndStyle:Z

.field useEmptyElementTags:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    .line 51
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->advancedXmlEscape:Z

    .line 52
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    .line 53
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->useCdataForScriptAndStyle:Z

    .line 54
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->translateSpecialEntities:Z

    .line 55
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->transSpecialEntitiesToNCR:Z

    .line 56
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->recognizeUnicodeChars:Z

    .line 57
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitUnknownTags:Z

    .line 58
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->treatUnknownTagsAsContent:Z

    .line 59
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitDeprecatedTags:Z

    .line 60
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->treatDeprecatedTagsAsContent:Z

    .line 61
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitComments:Z

    .line 62
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitXmlDeclaration:Z

    .line 63
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->omitDoctypeDeclaration:Z

    .line 64
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitHtmlEnvelope:Z

    .line 65
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->useEmptyElementTags:Z

    .line 66
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->allowMultiWordAttributes:Z

    .line 67
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowHtmlInsideAttributes:Z

    .line 68
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->ignoreQuestAndExclam:Z

    .line 69
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->namespacesAware:Z

    .line 70
    const-string v0, "="

    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->hyphenReplacementInComment:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTags:Ljava/lang/String;

    .line 72
    const-string v0, "self"

    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->booleanAttributeValues:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBooleanAttributeValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->booleanAttributeValues:Ljava/lang/String;

    return-object v0
.end method

.method public getHyphenReplacementInComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->hyphenReplacementInComment:Ljava/lang/String;

    return-object v0
.end method

.method public getPruneTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTags:Ljava/lang/String;

    return-object v0
.end method

.method public getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    return-object v0
.end method

.method public isAdvancedXmlEscape()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->advancedXmlEscape:Z

    return v0
.end method

.method public isAllowHtmlInsideAttributes()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowHtmlInsideAttributes:Z

    return v0
.end method

.method public isAllowMultiWordAttributes()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowMultiWordAttributes:Z

    return v0
.end method

.method public isIgnoreQuestAndExclam()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->ignoreQuestAndExclam:Z

    return v0
.end method

.method public isNamespacesAware()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->namespacesAware:Z

    return v0
.end method

.method public isOmitComments()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitComments:Z

    return v0
.end method

.method public isOmitDeprecatedTags()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitDeprecatedTags:Z

    return v0
.end method

.method public isOmitDoctypeDeclaration()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitDoctypeDeclaration:Z

    return v0
.end method

.method public isOmitHtmlEnvelope()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitHtmlEnvelope:Z

    return v0
.end method

.method public isOmitUnknownTags()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitUnknownTags:Z

    return v0
.end method

.method public isOmitXmlDeclaration()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitXmlDeclaration:Z

    return v0
.end method

.method public isRecognizeUnicodeChars()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->recognizeUnicodeChars:Z

    return v0
.end method

.method public isTransResCharsToNCR()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    return v0
.end method

.method public isTransSpecialEntitiesToNCR()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->transSpecialEntitiesToNCR:Z

    return v0
.end method

.method public isTranslateSpecialEntities()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->translateSpecialEntities:Z

    return v0
.end method

.method public isTreatDeprecatedTagsAsContent()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->treatDeprecatedTagsAsContent:Z

    return v0
.end method

.method public isTreatUnknownTagsAsContent()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->treatUnknownTagsAsContent:Z

    return v0
.end method

.method public isUseCdataForScriptAndStyle()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->useCdataForScriptAndStyle:Z

    return v0
.end method

.method public isUseEmptyElementTags()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->useEmptyElementTags:Z

    return v0
.end method

.method public setAdvancedXmlEscape(Z)V
    .locals 0
    .parameter "advancedXmlEscape"

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->advancedXmlEscape:Z

    .line 84
    return-void
.end method

.method public setAllowHtmlInsideAttributes(Z)V
    .locals 0
    .parameter "allowHtmlInsideAttributes"

    .prologue
    .line 211
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->allowHtmlInsideAttributes:Z

    .line 212
    return-void
.end method

.method public setAllowMultiWordAttributes(Z)V
    .locals 0
    .parameter "allowMultiWordAttributes"

    .prologue
    .line 203
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->allowMultiWordAttributes:Z

    .line 204
    return-void
.end method

.method public setBooleanAttributeValues(Ljava/lang/String;)V
    .locals 1
    .parameter "booleanAttributeValues"

    .prologue
    .line 251
    const-string v0, "self"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "empty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->booleanAttributeValues:Ljava/lang/String;

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string v0, "self"

    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->booleanAttributeValues:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHyphenReplacementInComment(Ljava/lang/String;)V
    .locals 0
    .parameter "hyphenReplacementInComment"

    .prologue
    .line 235
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->hyphenReplacementInComment:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setIgnoreQuestAndExclam(Z)V
    .locals 0
    .parameter "ignoreQuestAndExclam"

    .prologue
    .line 219
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->ignoreQuestAndExclam:Z

    .line 220
    return-void
.end method

.method public setNamespacesAware(Z)V
    .locals 0
    .parameter "namespacesAware"

    .prologue
    .line 227
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->namespacesAware:Z

    .line 228
    return-void
.end method

.method public setOmitComments(Z)V
    .locals 0
    .parameter "omitComments"

    .prologue
    .line 163
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitComments:Z

    .line 164
    return-void
.end method

.method public setOmitDeprecatedTags(Z)V
    .locals 0
    .parameter "omitDeprecatedTags"

    .prologue
    .line 147
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitDeprecatedTags:Z

    .line 148
    return-void
.end method

.method public setOmitDoctypeDeclaration(Z)V
    .locals 0
    .parameter "omitDoctypeDeclaration"

    .prologue
    .line 179
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitDoctypeDeclaration:Z

    .line 180
    return-void
.end method

.method public setOmitHtmlEnvelope(Z)V
    .locals 0
    .parameter "omitHtmlEnvelope"

    .prologue
    .line 187
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitHtmlEnvelope:Z

    .line 188
    return-void
.end method

.method public setOmitUnknownTags(Z)V
    .locals 0
    .parameter "omitUnknownTags"

    .prologue
    .line 131
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitUnknownTags:Z

    .line 132
    return-void
.end method

.method public setOmitXmlDeclaration(Z)V
    .locals 0
    .parameter "omitXmlDeclaration"

    .prologue
    .line 171
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitXmlDeclaration:Z

    .line 172
    return-void
.end method

.method public setPruneTags(Ljava/lang/String;)V
    .locals 0
    .parameter "pruneTags"

    .prologue
    .line 243
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTags:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setRecognizeUnicodeChars(Z)V
    .locals 0
    .parameter "recognizeUnicodeChars"

    .prologue
    .line 123
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->recognizeUnicodeChars:Z

    .line 124
    return-void
.end method

.method public setTransResCharsToNCR(Z)V
    .locals 0
    .parameter "transResCharsToNCR"

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    .line 92
    return-void
.end method

.method public setTransSpecialEntitiesToNCR(Z)V
    .locals 0
    .parameter "transSpecialEntitiesToNCR"

    .prologue
    .line 115
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->transSpecialEntitiesToNCR:Z

    .line 116
    return-void
.end method

.method public setTranslateSpecialEntities(Z)V
    .locals 0
    .parameter "translateSpecialEntities"

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->translateSpecialEntities:Z

    .line 108
    return-void
.end method

.method public setTreatDeprecatedTagsAsContent(Z)V
    .locals 0
    .parameter "treatDeprecatedTagsAsContent"

    .prologue
    .line 155
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->treatDeprecatedTagsAsContent:Z

    .line 156
    return-void
.end method

.method public setTreatUnknownTagsAsContent(Z)V
    .locals 0
    .parameter "treatUnknownTagsAsContent"

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->treatUnknownTagsAsContent:Z

    .line 140
    return-void
.end method

.method public setUseCdataForScriptAndStyle(Z)V
    .locals 0
    .parameter "useCdataForScriptAndStyle"

    .prologue
    .line 99
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->useCdataForScriptAndStyle:Z

    .line 100
    return-void
.end method

.method public setUseEmptyElementTags(Z)V
    .locals 0
    .parameter "useEmptyElementTags"

    .prologue
    .line 195
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->useEmptyElementTags:Z

    .line 196
    return-void
.end method
