.class public final synthetic Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Exception;

    invoke-static {v0}, Lio/vanta/app/LauncherActivity;->lambda$launchAppAsync$1(Ljava/lang/Exception;)V

    return-void
.end method
