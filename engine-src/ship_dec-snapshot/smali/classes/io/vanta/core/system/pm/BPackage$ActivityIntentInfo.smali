.class public Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;
.super Lio/vanta/core/system/pm/BPackage$IntentInfo;
.source "BPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/pm/BPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityIntentInfo"
.end annotation


# instance fields
.field public activity:Lio/vanta/core/system/pm/BPackage$Activity;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$IntentInfo;)V
    .locals 0

    .line 405
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/BPackage$IntentInfo;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    return-void
.end method

.method public constructor <init>(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lio/vanta/core/system/pm/BPackage$IntentInfo;-><init>(Lio/vanta/core/system/pm/BPackage$IntentInfo;)V

    return-void
.end method
