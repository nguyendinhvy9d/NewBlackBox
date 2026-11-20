.class Lio/vanta/utils/NativeCrashPrevention$1;
.super Ljava/lang/Object;
.source "NativeCrashPrevention.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/utils/NativeCrashPrevention;->installSignalHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    .line 99
    invoke-static {p1, p2}, Lio/vanta/utils/NativeCrashPrevention;->-$$Nest$smhandleNativeCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
