.class public final Lio/vanta/core/system/api/BetaActivationManager$Result;
.super Ljava/lang/Object;
.source "BetaActivationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/api/BetaActivationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lio/vanta/core/system/api/BetaActivationManager$Result;->success:Z

    if-nez p2, :cond_0

    .line 51
    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lio/vanta/core/system/api/BetaActivationManager$Result;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/vanta/core/system/api/BetaActivationManager$Result;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lio/vanta/core/system/api/BetaActivationManager$Result;->success:Z

    return v0
.end method
