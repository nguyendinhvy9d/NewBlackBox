.class public final synthetic Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/vanta/app/LauncherActivity;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/vanta/app/LauncherActivity;Landroid/content/Intent;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda1;->f$0:Lio/vanta/app/LauncherActivity;

    iput-object p2, p0, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iput p3, p0, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda1;->f$0:Lio/vanta/app/LauncherActivity;

    iget-object v1, p0, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iget v2, p0, Lio/vanta/app/LauncherActivity$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Lio/vanta/app/LauncherActivity;->$r8$lambda$Jie1ZR9--rFQTVqTvsnp-eBUYdU(Lio/vanta/app/LauncherActivity;Landroid/content/Intent;I)V

    return-void
.end method
