.class public Lio/vanta/core/system/pm/BPackage$ServiceIntentInfo;
.super Lio/vanta/core/system/pm/BPackage$IntentInfo;
.source "BPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/pm/BPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceIntentInfo"
.end annotation


# instance fields
.field public service:Lio/vanta/core/system/pm/BPackage$Service;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$IntentInfo;)V
    .registers 2

    .line 417
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/BPackage$IntentInfo;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    return-void
.end method

.method public constructor <init>(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V
    .registers 2

    .line 421
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/BPackage$IntentInfo;-><init>(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    return-void
.end method
