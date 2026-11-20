.class public final Lio/vanta/license/LicenseManager$Result;
.super Ljava/lang/Object;
.source "LicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/license/LicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final expiresAt:J

.field private final fromOfflineCache:Z

.field private final message:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;JZ)V
    .registers 6

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-boolean p1, p0, Lio/vanta/license/LicenseManager$Result;->success:Z

    if-nez p2, :cond_9

    .line 113
    const-string p2, ""

    :cond_9
    iput-object p2, p0, Lio/vanta/license/LicenseManager$Result;->message:Ljava/lang/String;

    .line 114
    iput-wide p3, p0, Lio/vanta/license/LicenseManager$Result;->expiresAt:J

    .line 115
    iput-boolean p5, p0, Lio/vanta/license/LicenseManager$Result;->fromOfflineCache:Z

    return-void
.end method


# virtual methods
.method public getExpiresAt()J
    .registers 3

    .line 127
    iget-wide v0, p0, Lio/vanta/license/LicenseManager$Result;->expiresAt:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lio/vanta/license/LicenseManager$Result;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isFromOfflineCache()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lio/vanta/license/LicenseManager$Result;->fromOfflineCache:Z

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lio/vanta/license/LicenseManager$Result;->success:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 135
    iget-boolean v0, p0, Lio/vanta/license/LicenseManager$Result;->success:Z

    iget-object v1, p0, Lio/vanta/license/LicenseManager$Result;->message:Ljava/lang/String;

    iget-boolean v2, p0, Lio/vanta/license/LicenseManager$Result;->fromOfflineCache:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LicenseResult{success="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", message=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', offline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
