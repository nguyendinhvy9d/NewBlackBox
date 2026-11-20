.class public Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;
.super Lio/vanta/core/system/pm/BPackage$IntentInfo;
.source "BPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/pm/BPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderIntentInfo"
.end annotation


# instance fields
.field public provider:Lio/vanta/core/system/pm/BPackage$Provider;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$IntentInfo;)V
    .registers 2

    .line 429
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/BPackage$IntentInfo;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    return-void
.end method

.method public constructor <init>(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V
    .registers 2

    .line 433
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/BPackage$IntentInfo;-><init>(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    return-void
.end method
