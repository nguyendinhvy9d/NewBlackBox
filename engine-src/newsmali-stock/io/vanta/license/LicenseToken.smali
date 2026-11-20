.class public final Lio/vanta/license/LicenseToken;
.super Ljava/lang/Object;
.source "LicenseToken.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcoreLicenseToken"


# instance fields
.field private final accountId:Ljava/lang/String;

.field private final deviceId:Ljava/lang/String;

.field private final expiresAt:J

.field private final issuedAt:J

.field private final leaseUntil:J

.field private final licenseId:Ljava/lang/String;

.field private final nonce:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final product:Ljava/lang/String;

.field private final protocolVersion:Ljava/lang/String;

.field private final rawPayloadB64:Ljava/lang/String;

.field private final rawSignatureB64:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final tokenIntegrityChecksum:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    iput-object p1, p0, Lio/vanta/license/LicenseToken;->licenseId:Ljava/lang/String;

    if-nez p2, :cond_d

    move-object p2, v0

    .line 51
    :cond_d
    iput-object p2, p0, Lio/vanta/license/LicenseToken;->accountId:Ljava/lang/String;

    if-nez p3, :cond_13

    move-object p2, v0

    goto :goto_14

    :cond_13
    move-object p2, p3

    .line 52
    :goto_14
    iput-object p2, p0, Lio/vanta/license/LicenseToken;->product:Ljava/lang/String;

    if-nez p4, :cond_1a

    move-object p3, v0

    goto :goto_1b

    :cond_1a
    move-object p3, p4

    .line 53
    :goto_1b
    iput-object p3, p0, Lio/vanta/license/LicenseToken;->packageName:Ljava/lang/String;

    if-nez p5, :cond_21

    move-object p4, v0

    goto :goto_22

    :cond_21
    move-object p4, p5

    .line 54
    :goto_22
    iput-object p4, p0, Lio/vanta/license/LicenseToken;->deviceId:Ljava/lang/String;

    .line 55
    iput-wide p6, p0, Lio/vanta/license/LicenseToken;->issuedAt:J

    .line 56
    iput-wide p8, p0, Lio/vanta/license/LicenseToken;->expiresAt:J

    .line 57
    iput-wide p10, p0, Lio/vanta/license/LicenseToken;->leaseUntil:J

    if-nez p12, :cond_2e

    move-object p5, v0

    goto :goto_2f

    :cond_2e
    move-object p5, p12

    .line 58
    :goto_2f
    iput-object p5, p0, Lio/vanta/license/LicenseToken;->nonce:Ljava/lang/String;

    if-nez p13, :cond_35

    move-object v1, v0

    goto :goto_36

    :cond_35
    move-object v1, p13

    .line 59
    :goto_36
    iput-object v1, p0, Lio/vanta/license/LicenseToken;->status:Ljava/lang/String;

    if-nez p14, :cond_3d

    .line 60
    const-string v1, "1.0"

    goto :goto_3f

    :cond_3d
    move-object/from16 v1, p14

    :goto_3f
    iput-object v1, p0, Lio/vanta/license/LicenseToken;->protocolVersion:Ljava/lang/String;

    if-nez p15, :cond_45

    move-object v1, v0

    goto :goto_47

    :cond_45
    move-object/from16 v1, p15

    .line 61
    :goto_47
    iput-object v1, p0, Lio/vanta/license/LicenseToken;->rawPayloadB64:Ljava/lang/String;

    if-nez p16, :cond_4c

    goto :goto_4e

    :cond_4c
    move-object/from16 v0, p16

    .line 62
    :goto_4e
    iput-object v0, p0, Lio/vanta/license/LicenseToken;->rawSignatureB64:Ljava/lang/String;

    move-object p7, p5

    move-wide p5, p10

    .line 63
    invoke-static/range {p1 .. p7}, Lio/vanta/license/LicenseToken;->computeChecksum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/vanta/license/LicenseToken;->tokenIntegrityChecksum:I

    return-void
.end method

.method private static computeChecksum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
    .registers 8

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static parseAndVerify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/vanta/license/LicenseToken;
    .registers 37

    move-object/from16 v15, p1

    move-object/from16 v2, p5

    .line 79
    const-string v3, ""

    .line 0
    const-string v4, "Authorization lease grace period has expired at "

    const-string v5, "License has expired at "

    const-string v6, "Package name binding mismatch: "

    const-string v7, "License status not active: "

    const-string v8, "Product mismatch: expected \'bcore\', got \'"

    const/16 v17, 0x0

    if-eqz v15, :cond_1f5

    .line 79
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1f5

    if-eqz p2, :cond_1f5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_24

    goto/16 :goto_1f5

    .line 84
    :cond_24
    invoke-static/range {p1 .. p2}, Lio/vanta/license/LicenseVerifier;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 85
    const-string v10, "BcoreLicenseToken"

    if-nez v9, :cond_32

    .line 86
    const-string v0, "Cryptographic RSA signature mismatch: Invalid or forged license lease"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    .line 91
    :cond_32
    :try_start_32
    new-instance v9, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v15, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 92
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v9, "license_id"

    invoke-virtual {v11, v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 95
    const-string v12, "account_id"

    invoke-virtual {v11, v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 96
    const-string v13, "product"

    invoke-virtual {v11, v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 97
    const-string v14, "package_name"

    invoke-virtual {v11, v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v9

    .line 98
    const-string v9, "device_id"

    invoke-virtual {v11, v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v12

    .line 99
    const-string v12, "issued_at"

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const-wide/16 v4, 0x0

    invoke-virtual {v11, v12, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 100
    const-string v12, "expires_at"

    move-wide/from16 v21, v0

    invoke-virtual {v11, v12, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 101
    const-string v12, "lease_until"

    move-wide/from16 v23, v0

    invoke-virtual {v11, v12, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 102
    const-string v12, "nonce"

    invoke-virtual {v11, v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v25, v4

    .line 103
    const-string v4, "status"

    invoke-virtual {v11, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v4, "protocol_version"

    const-string v5, "version"

    const-string v15, "1.0"

    invoke-virtual {v11, v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    const-string v5, "bcore"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bc

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    .line 111
    :cond_bc
    const-string v5, "active"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    :cond_d5
    if-eqz p3, :cond_f1

    .line 117
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f1

    .line 118
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f1

    .line 119
    const-string v0, "License ID mismatch"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    :cond_f1
    if-eqz p0, :cond_11a

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11a

    .line 127
    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11a

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    :cond_11a
    if-eqz p4, :cond_130

    .line 134
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_130

    move-object/from16 v5, p4

    .line 135
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_130

    .line 136
    const-string v0, "Device binding mismatch"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    :cond_130
    if-eqz p6, :cond_146

    if-eqz v2, :cond_146

    .line 142
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_146

    .line 143
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_146

    .line 144
    const-string v0, "Nonce freshness check failed: Replayed authorization rejected"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    .line 150
    :cond_146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    if-eqz p6, :cond_15b

    cmp-long v2, v21, v25

    if-lez v2, :cond_15b

    move-object/from16 v2, p0

    move-wide/from16 v7, v21

    .line 152
    invoke-static {v2, v7, v8}, Lio/vanta/license/ClockGuard;->recordServerTime(Landroid/content/Context;J)V

    goto :goto_15f

    :cond_15b
    move-object/from16 v2, p0

    move-wide/from16 v7, v21

    .line 155
    :goto_15f
    invoke-static {v2, v5, v6}, Lio/vanta/license/ClockGuard;->validate(Landroid/content/Context;J)Z

    move-result v2

    if-nez v2, :cond_16b

    .line 156
    const-string v0, "Clock rollback detected during token validation"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16a
    .catchall {:try_start_32 .. :try_end_16a} :catchall_1da

    return-object v17

    :cond_16b
    cmp-long v2, v23, v25

    .line 160
    const-string v11, ", now="

    if-lez v2, :cond_192

    cmp-long v2, v5, v23

    if-ltz v2, :cond_192

    .line 161
    :try_start_175
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    :cond_192
    cmp-long v2, v0, v25

    if-lez v2, :cond_1b5

    cmp-long v2, v5, v0

    if-lez v2, :cond_1b5

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b4
    .catchall {:try_start_175 .. :try_end_1b4} :catchall_1da

    return-object v17

    :cond_1b5
    move-wide/from16 v28, v0

    move-object v1, v10

    move-wide/from16 v10, v28

    .line 170
    :try_start_1ba
    new-instance v0, Lio/vanta/license/LicenseToken;
    :try_end_1bc
    .catchall {:try_start_1ba .. :try_end_1bc} :catchall_1d6

    move-object v2, v13

    move-object v13, v3

    move-object v3, v2

    move-object v2, v14

    move-object v14, v4

    move-object v4, v2

    move-object/from16 v15, p1

    move-object/from16 v27, v1

    move-wide v6, v7

    move-object v5, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-wide/from16 v8, v23

    move-object/from16 v16, p2

    :try_start_1d0
    invoke-direct/range {v0 .. v16}, Lio/vanta/license/LicenseToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d3
    .catchall {:try_start_1d0 .. :try_end_1d3} :catchall_1d4

    return-object v0

    :catchall_1d4
    move-exception v0

    goto :goto_1dd

    :catchall_1d6
    move-exception v0

    move-object/from16 v27, v1

    goto :goto_1dd

    :catchall_1da
    move-exception v0

    move-object/from16 v27, v10

    .line 176
    :goto_1dd
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse and verify license token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f5
    :goto_1f5
    return-object v17
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresAt()J
    .registers 3

    .line 218
    iget-wide v0, p0, Lio/vanta/license/LicenseToken;->expiresAt:J

    return-wide v0
.end method

.method public getIssuedAt()J
    .registers 3

    .line 217
    iget-wide v0, p0, Lio/vanta/license/LicenseToken;->issuedAt:J

    return-wide v0
.end method

.method public getLeaseUntil()J
    .registers 3

    .line 219
    iget-wide v0, p0, Lio/vanta/license/LicenseToken;->leaseUntil:J

    return-wide v0
.end method

.method public getLicenseId()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->licenseId:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->protocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPayloadB64()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->rawPayloadB64:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSignatureB64()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->rawSignatureB64:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentlyValid(Landroid/content/Context;)Z
    .registers 10

    .line 183
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->licenseId:Ljava/lang/String;

    iget-object v1, p0, Lio/vanta/license/LicenseToken;->product:Ljava/lang/String;

    iget-object v2, p0, Lio/vanta/license/LicenseToken;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lio/vanta/license/LicenseToken;->deviceId:Ljava/lang/String;

    iget-wide v4, p0, Lio/vanta/license/LicenseToken;->leaseUntil:J

    iget-object v6, p0, Lio/vanta/license/LicenseToken;->nonce:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/vanta/license/LicenseToken;->computeChecksum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v0

    .line 184
    iget v1, p0, Lio/vanta/license/LicenseToken;->tokenIntegrityChecksum:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1d

    .line 185
    const-string p1, "BcoreLicenseToken"

    const-string v0, "Token memory integrity tampered!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 189
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 190
    invoke-static {p1, v0, v1}, Lio/vanta/license/ClockGuard;->validate(Landroid/content/Context;J)Z

    move-result v3

    if-nez v3, :cond_2b

    return v2

    .line 194
    :cond_2b
    iget-wide v3, p0, Lio/vanta/license/LicenseToken;->expiresAt:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_38

    cmp-long v3, v0, v3

    if-ltz v3, :cond_38

    return v2

    .line 198
    :cond_38
    iget-wide v3, p0, Lio/vanta/license/LicenseToken;->leaseUntil:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_43

    cmp-long v0, v0, v3

    if-lez v0, :cond_43

    return v2

    :cond_43
    if-eqz p1, :cond_54

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 204
    iget-object v0, p0, Lio/vanta/license/LicenseToken;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_54

    return v2

    :cond_54
    const/4 p1, 0x1

    return p1
.end method
