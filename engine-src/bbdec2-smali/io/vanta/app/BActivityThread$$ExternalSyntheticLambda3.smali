.class public final synthetic Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/vanta/app/BActivityThread;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/ConditionVariable;


# direct methods
.method public synthetic constructor <init>(Lio/vanta/app/BActivityThread;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;->f$0:Lio/vanta/app/BActivityThread;

    iput-object p2, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;->f$3:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;->f$0:Lio/vanta/app/BActivityThread;

    iget-object v1, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/vanta/app/BActivityThread$$ExternalSyntheticLambda3;->f$3:Landroid/os/ConditionVariable;

    invoke-static {v0, v1, v2, v3}, Lio/vanta/app/BActivityThread;->$r8$lambda$Xw341cGtWP62_5dlfuigfezH6p8(Lio/vanta/app/BActivityThread;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    return-void
.end method
