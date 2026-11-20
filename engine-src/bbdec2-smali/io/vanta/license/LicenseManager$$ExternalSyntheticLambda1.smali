.class public final synthetic Lio/vanta/license/LicenseManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/vanta/license/LicenseManager$Callback;

.field public final synthetic f$1:Lio/vanta/license/LicenseManager$Result;


# direct methods
.method public synthetic constructor <init>(Lio/vanta/license/LicenseManager$Callback;Lio/vanta/license/LicenseManager$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/license/LicenseManager$$ExternalSyntheticLambda1;->f$0:Lio/vanta/license/LicenseManager$Callback;

    iput-object p2, p0, Lio/vanta/license/LicenseManager$$ExternalSyntheticLambda1;->f$1:Lio/vanta/license/LicenseManager$Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/vanta/license/LicenseManager$$ExternalSyntheticLambda1;->f$0:Lio/vanta/license/LicenseManager$Callback;

    iget-object v1, p0, Lio/vanta/license/LicenseManager$$ExternalSyntheticLambda1;->f$1:Lio/vanta/license/LicenseManager$Result;

    invoke-static {v0, v1}, Lio/vanta/license/LicenseManager;->lambda$verifyLicense$1(Lio/vanta/license/LicenseManager$Callback;Lio/vanta/license/LicenseManager$Result;)V

    return-void
.end method
