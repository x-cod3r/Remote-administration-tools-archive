.class public Lorg/donations/google/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/donations/google/Security$VerifiedPurchase;
    }
.end annotation


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom; = null

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "Security"

.field private static sKnownNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/donations/google/Security;->RANDOM:Ljava/security/SecureRandom;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/donations/google/Security;->sKnownNonces:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 90
    sget-object v2, Lorg/donations/google/Security;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 91
    .local v0, nonce:J
    sget-object v2, Lorg/donations/google/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .parameter "encodedPublicKey"

    .prologue
    .line 212
    :try_start_0
    invoke-static {p0}, Lorg/donations/google/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 213
    .local v0, decodedKey:[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 214
    .local v2, keyFactory:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/donations/google/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 215
    .end local v0           #decodedKey:[B
    .end local v2           #keyFactory:Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 216
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 217
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 218
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 220
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 221
    .local v1, e:Lorg/donations/google/util/Base64DecoderException;
    const-string v3, "Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .parameter "nonce"

    .prologue
    .line 100
    sget-object v0, Lorg/donations/google/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeNonce(J)V
    .locals 2
    .parameter "nonce"

    .prologue
    .line 96
    sget-object v0, Lorg/donations/google/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "publicKey"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    const/4 v2, 0x0

    .line 244
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 245
    .local v1, sig:Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 247
    invoke-static {p2}, Lorg/donations/google/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    const-string v3, "Security"

    const-string v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/donations/google/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 261
    .end local v1           #sig:Ljava/security/Signature;
    :goto_0
    return v2

    .line 251
    .restart local v1       #sig:Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 252
    .end local v1           #sig:Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Security"

    const-string v4, "NoSuchAlgorithmException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 255
    .local v0, e:Ljava/security/InvalidKeyException;
    const-string v3, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 257
    .local v0, e:Ljava/security/SignatureException;
    const-string v3, "Security"

    const-string v4, "Signature exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 259
    .local v0, e:Lorg/donations/google/util/Base64DecoderException;
    const-string v3, "Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifyPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .parameter "context"
    .parameter "signedData"
    .parameter "signature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/donations/google/Security$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const-string v3, "Security"

    const-string v24, "data is null"

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/16 v21, 0x0

    .line 199
    :goto_0
    return-object v21

    .line 125
    :cond_0
    const/16 v23, 0x0

    .line 126
    .local v23, verified:Z
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    const-string v11, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg8bTVFK5zIg4FGYkHKKQ/j/iGZQlXU0qkAv2BA6epOX1ihbMz78iD4SmViJlECHN8bKMHxouRNd9pkmQKxwEBHg5/xDC/PHmSCXFx/gcY/xa4etA1CSfXjcsS9i94n+j0gGYUg69rNkp+p/09nO9sgfRTAQppTxtgKaXwpfKe1A8oqmDUfOnPzsEAG6ogQL6Svo6ynYLVKIvRPPhXkq+fp6sJ5YVT5Hr356yCXlM++G56Pk8Z+tPzNjjvGSSs/MsYtgFaqhPCsnKhb55xHkc8GJ9haq8k3PSqwMSeJHnGiDq5lzdmsjdmGkWdQq2jIhKlhMZMm5VQWn0T59+xjjIIwIDAQAB"

    .line 140
    .local v11, base64EncodedPublicKey:Ljava/lang/String;
    invoke-static {v11}, Lorg/donations/google/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v17

    .line 141
    .local v17, key:Ljava/security/PublicKey;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/donations/google/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    .line 142
    if-nez v23, :cond_1

    .line 143
    const-string v3, "Security"

    const-string v24, "signature does not match data."

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v21, 0x0

    goto :goto_0

    .line 149
    .end local v11           #base64EncodedPublicKey:Ljava/lang/String;
    .end local v17           #key:Ljava/security/PublicKey;
    :cond_1
    const/16 v16, 0x0

    .line 150
    .local v16, jTransactionsArray:Lorg/json/JSONArray;
    const/16 v20, 0x0

    .line 151
    .local v20, numTransactions:I
    const-wide/16 v18, 0x0

    .line 153
    .local v18, nonce:J
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v15, jObject:Lorg/json/JSONObject;
    const-string v3, "nonce"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 157
    const-string v3, "orders"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 158
    if-eqz v16, :cond_2

    .line 159
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 165
    :cond_2
    invoke-static/range {v18 .. v19}, Lorg/donations/google/Security;->isNonceKnown(J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 166
    const-string v3, "Security"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Nonce not found: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v21, 0x0

    goto :goto_0

    .line 161
    .end local v15           #jObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 162
    .local v12, e:Lorg/json/JSONException;
    const/16 v21, 0x0

    goto :goto_0

    .line 170
    .end local v12           #e:Lorg/json/JSONException;
    .restart local v15       #jObject:Lorg/json/JSONObject;
    :cond_3
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v21, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/donations/google/Security$VerifiedPurchase;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v13, v0, :cond_6

    .line 173
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 174
    .local v14, jElement:Lorg/json/JSONObject;
    const-string v3, "purchaseState"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 175
    .local v22, response:I
    invoke-static/range {v22 .. v22}, Lorg/donations/google/Consts$PurchaseState;->valueOf(I)Lorg/donations/google/Consts$PurchaseState;

    move-result-object v4

    .line 176
    .local v4, purchaseState:Lorg/donations/google/Consts$PurchaseState;
    const-string v3, "productId"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, productId:Ljava/lang/String;
    const-string v3, "purchaseTime"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 179
    .local v8, purchaseTime:J
    const-string v3, "orderId"

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, orderId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 181
    .local v5, notifyId:Ljava/lang/String;
    const-string v3, "notificationId"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 182
    const-string v3, "notificationId"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    :cond_4
    const-string v3, "developerPayload"

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, developerPayload:Ljava/lang/String;
    sget-object v3, Lorg/donations/google/Consts$PurchaseState;->PURCHASED:Lorg/donations/google/Consts$PurchaseState;

    if-ne v4, v3, :cond_5

    if-nez v23, :cond_5

    .line 172
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 191
    :cond_5
    new-instance v3, Lorg/donations/google/Security$VerifiedPurchase;

    invoke-direct/range {v3 .. v10}, Lorg/donations/google/Security$VerifiedPurchase;-><init>(Lorg/donations/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 194
    .end local v4           #purchaseState:Lorg/donations/google/Consts$PurchaseState;
    .end local v5           #notifyId:Ljava/lang/String;
    .end local v6           #productId:Ljava/lang/String;
    .end local v7           #orderId:Ljava/lang/String;
    .end local v8           #purchaseTime:J
    .end local v10           #developerPayload:Ljava/lang/String;
    .end local v14           #jElement:Lorg/json/JSONObject;
    .end local v22           #response:I
    :catch_1
    move-exception v12

    .line 195
    .restart local v12       #e:Lorg/json/JSONException;
    const-string v3, "Security"

    const-string v24, "JSON exception: "

    move-object/from16 v0, v24

    invoke-static {v3, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 198
    .end local v12           #e:Lorg/json/JSONException;
    :cond_6
    invoke-static/range {v18 .. v19}, Lorg/donations/google/Security;->removeNonce(J)V

    goto/16 :goto_0
.end method
