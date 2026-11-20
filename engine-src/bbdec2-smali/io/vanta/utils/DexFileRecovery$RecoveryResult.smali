.class public Lio/vanta/utils/DexFileRecovery$RecoveryResult;
.super Ljava/lang/Object;
.source "DexFileRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/DexFileRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecoveryResult"
.end annotation


# instance fields
.field public final errorMessage:Ljava/lang/String;

.field public final recoveredFilePath:Ljava/lang/String;

.field public final recoveryMethod:Ljava/lang/String;

.field public final success:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->recoveredFilePath:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->recoveryMethod:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->success:Z

    .line 61
    iput-object p1, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->recoveredFilePath:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->recoveryMethod:Ljava/lang/String;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 53
    :goto_c
    iput-boolean p1, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->success:Z

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 66
    iget-boolean v0, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->success:Z

    if-eqz v0, :cond_22

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recovery successful via "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->recoveryMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->recoveredFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recovery failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/vanta/utils/DexFileRecovery$RecoveryResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
