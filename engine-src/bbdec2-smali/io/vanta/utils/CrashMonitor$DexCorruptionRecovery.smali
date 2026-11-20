.class Lio/vanta/utils/CrashMonitor$DexCorruptionRecovery;
.super Ljava/lang/Object;
.source "CrashMonitor.java"

# interfaces
.implements Lio/vanta/utils/CrashMonitor$RecoveryStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/CrashMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DexCorruptionRecovery"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/vanta/utils/CrashMonitor-IA;)V
    .registers 2

    invoke-direct {p0}, Lio/vanta/utils/CrashMonitor$DexCorruptionRecovery;-><init>()V

    return-void
.end method


# virtual methods
.method public attemptRecovery(Lio/vanta/utils/CrashMonitor$CrashInfo;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p2, :cond_14

    .line 559
    const-string p1, "classes.dex"

    .line 560
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    const-string p1, "ClassNotFoundException"

    .line 561
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_12
    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 554
    const-string v0, "DEX Corruption Recovery"

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    const/16 v0, 0x50

    return v0
.end method
