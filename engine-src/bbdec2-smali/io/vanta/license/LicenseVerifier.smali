.class public final Lio/vanta/license/LicenseVerifier;
.super Ljava/lang/Object;
.source "LicenseVerifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcoreVerifier"

.field private static volatile sCachedPublicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getPublicKey()Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lio/vanta/license/LicenseVerifier;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lio/vanta/license/LicenseVerifier;->sCachedPublicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_b

    .line 23
    sget-object v1, Lio/vanta/license/LicenseVerifier;->sCachedPublicKey:Ljava/security/PublicKey;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    monitor-exit v0

    return-object v1

    .line 25
    :cond_b
    :try_start_b
    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq3e+k21uUh7kvnS7scMGiPJcijWZGvoCa+EQ5ORBRNsZYMZG3YfLFW0IRSEhhrOOXBQgSzhE8xmjyHgYTqD8N1t7KYn6jbmLXQmbxqbOBAbrIGx9dKLhywF8QFvyyRzACOwP7Kp2dE3x8l/mwcaYSYjknALJTeIfD1ltsc91f2r5QwVHYlXWjGLR7k6o1ZkkHSTm4Rc8EJ+OKai6BIN2+/xtv3YDCkRZPTqL1LNbcXwk26MG1MOTAEJXhgxxT7Glci8sxdoSEnJFKBYaDxOuKBj79njsjm0bJxP//0Cpdax8os8rd/u90Gu+YvAQADxX5YicH5hN0fJALnQ16bqMxQIDAQAB"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 26
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 27
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    sput-object v1, Lio/vanta/license/LicenseVerifier;->sCachedPublicKey:Ljava/security/PublicKey;

    .line 29
    sget-object v1, Lio/vanta/license/LicenseVerifier;->sCachedPublicKey:Ljava/security/PublicKey;
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_27

    monitor-exit v0

    return-object v1

    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public static verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3c

    if-nez p1, :cond_6

    goto :goto_3c

    .line 37
    :cond_6
    :try_start_6
    invoke-static {}, Lio/vanta/license/LicenseVerifier;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 38
    const-string v2, "SHA256withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 40
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/Signature;->update([B)V

    .line 41
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return p0

    :catchall_23
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Signature verification error: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BcoreVerifier"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return v0
.end method
