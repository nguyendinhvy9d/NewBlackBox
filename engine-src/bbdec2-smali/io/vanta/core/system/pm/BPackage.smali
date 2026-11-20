.class public Lio/vanta/core/system/pm/BPackage;
.super Ljava/lang/Object;
.source "BPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/pm/BPackage$Activity;,
        Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;,
        Lio/vanta/core/system/pm/BPackage$Provider;,
        Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;,
        Lio/vanta/core/system/pm/BPackage$Service;,
        Lio/vanta/core/system/pm/BPackage$ServiceIntentInfo;,
        Lio/vanta/core/system/pm/BPackage$Instrumentation;,
        Lio/vanta/core/system/pm/BPackage$Permission;,
        Lio/vanta/core/system/pm/BPackage$PermissionGroup;,
        Lio/vanta/core/system/pm/BPackage$SigningDetails;,
        Lio/vanta/core/system/pm/BPackage$Component;,
        Lio/vanta/core/system/pm/BPackage$IntentInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/vanta/core/system/pm/BPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/vanta/core/system/pm/BPackage$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public baseCodePath:Ljava/lang/String;

.field public configPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public installOption:Lio/vanta/entity/pm/InstallOption;

.field public instrumentation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/vanta/core/system/pm/BPackage$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public mAppMetaData:Landroid/os/Bundle;

.field public mExtras:Lio/vanta/core/system/pm/BPackageSettings;

.field public mPreferredOrder:I

.field public mSharedUserId:Ljava/lang/String;

.field public mSharedUserLabel:I

.field public mSignatures:[Landroid/content/pm/Signature;

.field public mSigningDetails:Lio/vanta/core/system/pm/BPackage$SigningDetails;

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public permissionGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/vanta/core/system/pm/BPackage$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/vanta/core/system/pm/BPackage$Permission;",
            ">;"
        }
    .end annotation
.end field

.field public providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/vanta/core/system/pm/BPackage$Provider;",
            ">;"
        }
    .end annotation
.end field

.field public receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/vanta/core/system/pm/BPackage$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public reqFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public requestedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/vanta/core/system/pm/BPackage$Service;",
            ">;"
        }
    .end annotation
.end field

.field public splitCodePaths:[Ljava/lang/String;

.field public splitNames:[Ljava/lang/String;

.field public usesLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesOptionalLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 731
    new-instance v0, Lio/vanta/core/system/pm/BPackage$1;

    invoke-direct {v0}, Lio/vanta/core/system/pm/BPackage$1;-><init>()V

    sput-object v0, Lio/vanta/core/system/pm/BPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .registers 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    .line 55
    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    .line 61
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 62
    new-instance v2, Lio/vanta/core/system/pm/BPackage$Activity;

    invoke-direct {v2, v1}, Lio/vanta/core/system/pm/BPackage$Activity;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 63
    iget-object v1, v2, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;

    .line 64
    iput-object v2, v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;->activity:Lio/vanta/core/system/pm/BPackage$Activity;

    goto :goto_6b

    .line 66
    :cond_7a
    iput-object p0, v2, Lio/vanta/core/system/pm/BPackage$Activity;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 67
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 70
    :cond_82
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    .line 71
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 72
    new-instance v2, Lio/vanta/core/system/pm/BPackage$Activity;

    invoke-direct {v2, v1}, Lio/vanta/core/system/pm/BPackage$Activity;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 73
    iget-object v1, v2, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;

    .line 74
    iput-object v2, v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;->activity:Lio/vanta/core/system/pm/BPackage$Activity;

    goto :goto_ac

    .line 76
    :cond_bb
    iput-object p0, v2, Lio/vanta/core/system/pm/BPackage$Activity;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 77
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 80
    :cond_c3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    .line 81
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_104

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    .line 82
    new-instance v2, Lio/vanta/core/system/pm/BPackage$Provider;

    invoke-direct {v2, v1}, Lio/vanta/core/system/pm/BPackage$Provider;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 83
    iget-object v1, v2, Lio/vanta/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ed
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;

    .line 84
    iput-object v2, v3, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->provider:Lio/vanta/core/system/pm/BPackage$Provider;

    goto :goto_ed

    .line 86
    :cond_fc
    iput-object p0, v2, Lio/vanta/core/system/pm/BPackage$Provider;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 87
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 90
    :cond_104
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    .line 91
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_117
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_145

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    .line 92
    new-instance v2, Lio/vanta/core/system/pm/BPackage$Service;

    invoke-direct {v2, v1}, Lio/vanta/core/system/pm/BPackage$Service;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 93
    iget-object v1, v2, Lio/vanta/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$ServiceIntentInfo;

    .line 94
    iput-object v2, v3, Lio/vanta/core/system/pm/BPackage$ServiceIntentInfo;->service:Lio/vanta/core/system/pm/BPackage$Service;

    goto :goto_12e

    .line 96
    :cond_13d
    iput-object p0, v2, Lio/vanta/core/system/pm/BPackage$Service;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 97
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_117

    .line 100
    :cond_145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    .line 101
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_158
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_171

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    .line 102
    new-instance v2, Lio/vanta/core/system/pm/BPackage$Instrumentation;

    invoke-direct {v2, v1}, Lio/vanta/core/system/pm/BPackage$Instrumentation;-><init>(Landroid/content/pm/PackageParser$Instrumentation;)V

    .line 103
    iput-object p0, v2, Lio/vanta/core/system/pm/BPackage$Instrumentation;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 104
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_158

    .line 107
    :cond_171
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    .line 108
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_184
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 109
    new-instance v2, Lio/vanta/core/system/pm/BPackage$Permission;

    invoke-direct {v2, v1}, Lio/vanta/core/system/pm/BPackage$Permission;-><init>(Landroid/content/pm/PackageParser$Permission;)V

    .line 110
    iput-object p0, v2, Lio/vanta/core/system/pm/BPackage$Permission;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 111
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_184

    .line 114
    :cond_19d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    .line 115
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 116
    new-instance v2, Lio/vanta/core/system/pm/BPackage$PermissionGroup;

    invoke-direct {v2, v1}, Lio/vanta/core/system/pm/BPackage$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$PermissionGroup;)V

    .line 117
    iput-object p0, v2, Lio/vanta/core/system/pm/BPackage$PermissionGroup;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 118
    iget-object v1, p0, Lio/vanta/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b0

    .line 121
    :cond_1c9
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    .line 122
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 123
    new-instance v0, Lio/vanta/core/system/pm/BPackage$SigningDetails;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v0, v1}, Lio/vanta/core/system/pm/BPackage$SigningDetails;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mSigningDetails:Lio/vanta/core/system/pm/BPackage$SigningDetails;

    .line 124
    iget-object v0, v0, Lio/vanta/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    goto :goto_1e5

    .line 126
    :cond_1e1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    .line 128
    :goto_1e5
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mAppMetaData:Landroid/os/Bundle;

    .line 130
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    .line 131
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v0, p0, Lio/vanta/core/system/pm/BPackage;->mPreferredOrder:I

    .line 132
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mSharedUserId:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->usesLibraries:Ljava/util/ArrayList;

    .line 134
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 135
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, p0, Lio/vanta/core/system/pm/BPackage;->mVersionCode:I

    .line 136
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 137
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mVersionName:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->splitNames:[Ljava/lang/String;

    .line 140
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    .line 141
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v0, p0, Lio/vanta/core/system/pm/BPackage;->mSharedUserLabel:I

    .line 142
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    .line 143
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iput-object p1, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    .line 55
    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    :goto_4c
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_73

    .line 150
    new-instance v0, Lio/vanta/core/system/pm/BPackage$Activity;

    invoke-direct {v0, p1}, Lio/vanta/core/system/pm/BPackage$Activity;-><init>(Landroid/os/Parcel;)V

    .line 151
    iget-object v2, v0, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;

    .line 152
    iput-object v0, v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;->activity:Lio/vanta/core/system/pm/BPackage$Activity;

    goto :goto_5b

    .line 154
    :cond_6a
    iput-object p0, v0, Lio/vanta/core/system/pm/BPackage$Activity;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 155
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_4c

    .line 158
    :cond_73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    :goto_7e
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_a5

    .line 161
    new-instance v0, Lio/vanta/core/system/pm/BPackage$Activity;

    invoke-direct {v0, p1}, Lio/vanta/core/system/pm/BPackage$Activity;-><init>(Landroid/os/Parcel;)V

    .line 162
    iget-object v2, v0, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;

    .line 163
    iput-object v0, v3, Lio/vanta/core/system/pm/BPackage$ActivityIntentInfo;->activity:Lio/vanta/core/system/pm/BPackage$Activity;

    goto :goto_8d

    .line 165
    :cond_9c
    iput-object p0, v0, Lio/vanta/core/system/pm/BPackage$Activity;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 166
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_7e

    .line 169
    :cond_a5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    :goto_b0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_d7

    .line 172
    new-instance v0, Lio/vanta/core/system/pm/BPackage$Provider;

    invoke-direct {v0, p1}, Lio/vanta/core/system/pm/BPackage$Provider;-><init>(Landroid/os/Parcel;)V

    .line 173
    iget-object v2, v0, Lio/vanta/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;

    .line 174
    iput-object v0, v3, Lio/vanta/core/system/pm/BPackage$ProviderIntentInfo;->provider:Lio/vanta/core/system/pm/BPackage$Provider;

    goto :goto_bf

    .line 176
    :cond_ce
    iput-object p0, v0, Lio/vanta/core/system/pm/BPackage$Provider;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 177
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_b0

    .line 180
    :cond_d7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    :goto_e2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_109

    .line 183
    new-instance v0, Lio/vanta/core/system/pm/BPackage$Service;

    invoke-direct {v0, p1}, Lio/vanta/core/system/pm/BPackage$Service;-><init>(Landroid/os/Parcel;)V

    .line 184
    iget-object v2, v0, Lio/vanta/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_100

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/vanta/core/system/pm/BPackage$ServiceIntentInfo;

    .line 185
    iput-object v0, v3, Lio/vanta/core/system/pm/BPackage$ServiceIntentInfo;->service:Lio/vanta/core/system/pm/BPackage$Service;

    goto :goto_f1

    .line 187
    :cond_100
    iput-object p0, v0, Lio/vanta/core/system/pm/BPackage$Service;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 188
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_e2

    .line 191
    :cond_109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    :goto_114
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_126

    .line 194
    new-instance v0, Lio/vanta/core/system/pm/BPackage$Instrumentation;

    invoke-direct {v0, p1}, Lio/vanta/core/system/pm/BPackage$Instrumentation;-><init>(Landroid/os/Parcel;)V

    .line 195
    iput-object p0, v0, Lio/vanta/core/system/pm/BPackage$Instrumentation;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 196
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_114

    .line 199
    :cond_126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    :goto_131
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_143

    .line 202
    new-instance v0, Lio/vanta/core/system/pm/BPackage$Permission;

    invoke-direct {v0, p1}, Lio/vanta/core/system/pm/BPackage$Permission;-><init>(Landroid/os/Parcel;)V

    .line 203
    iput-object p0, v0, Lio/vanta/core/system/pm/BPackage$Permission;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 204
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_131

    .line 207
    :cond_143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/vanta/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    :goto_14e
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_160

    .line 210
    new-instance v0, Lio/vanta/core/system/pm/BPackage$PermissionGroup;

    invoke-direct {v0, p1}, Lio/vanta/core/system/pm/BPackage$PermissionGroup;-><init>(Landroid/os/Parcel;)V

    .line 211
    iput-object p0, v0, Lio/vanta/core/system/pm/BPackage$PermissionGroup;->owner:Lio/vanta/core/system/pm/BPackage;

    .line 212
    iget-object v2, p0, Lio/vanta/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_14e

    .line 215
    :cond_160
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 216
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_179

    .line 217
    const-class v0, Lio/vanta/core/system/pm/BPackage$SigningDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/vanta/core/system/pm/BPackage$SigningDetails;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mSigningDetails:Lio/vanta/core/system/pm/BPackage$SigningDetails;

    .line 219
    :cond_179
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    .line 220
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mAppMetaData:Landroid/os/Bundle;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/core/system/pm/BPackage;->mPreferredOrder:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mSharedUserId:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->usesLibraries:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/core/system/pm/BPackage;->mVersionCode:I

    .line 228
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mVersionName:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->splitNames:[Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/core/system/pm/BPackage;->mSharedUserLabel:I

    .line 234
    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    .line 235
    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    .line 236
    const-class v0, Lio/vanta/entity/pm/InstallOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/vanta/entity/pm/InstallOption;

    iput-object p1, p0, Lio/vanta/core/system/pm/BPackage;->installOption:Lio/vanta/entity/pm/InstallOption;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 581
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 582
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/BPackage$Activity;

    .line 584
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Activity;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 587
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 588
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_49

    .line 589
    iget-object v2, v1, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 590
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_38
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_f

    .line 592
    iget-object v2, v1, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v2, v3

    goto :goto_38

    .line 595
    :cond_49
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 599
    :cond_4d
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 600
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/BPackage$Activity;

    .line 602
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Activity;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 605
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 606
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_95

    .line 607
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 608
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_84
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_5c

    .line 610
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_84

    .line 613
    :cond_95
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5c

    .line 617
    :cond_99
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 618
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a8
    :goto_a8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/BPackage$Provider;

    .line 620
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Provider;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 623
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 624
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_e1

    .line 625
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 626
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_a8

    .line 628
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_d0

    .line 631
    :cond_e1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a8

    .line 635
    :cond_e5
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 636
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f4
    :goto_f4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_131

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/BPackage$Service;

    .line 638
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Service;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Service;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 641
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 642
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_12d

    .line 643
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 644
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11c
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_f4

    .line 646
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_11c

    .line 649
    :cond_12d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f4

    .line 653
    :cond_131
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 654
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_140
    :goto_140
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/BPackage$Instrumentation;

    .line 656
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Instrumentation;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 657
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Instrumentation;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 659
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 660
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Instrumentation;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_179

    .line 661
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Instrumentation;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 662
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_168
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_140

    .line 664
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Instrumentation;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_168

    .line 667
    :cond_179
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_140

    .line 671
    :cond_17d
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 672
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18c
    :goto_18c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/BPackage$Permission;

    .line 674
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Permission;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 675
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Permission;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 677
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 678
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Permission;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_1c5

    .line 679
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Permission;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 680
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b4
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_18c

    .line 682
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$Permission;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_1b4

    .line 685
    :cond_1c5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18c

    .line 689
    :cond_1c9
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 690
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d8
    :goto_1d8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_215

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/vanta/core/system/pm/BPackage$PermissionGroup;

    .line 692
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$PermissionGroup;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 693
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$PermissionGroup;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 695
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 696
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$PermissionGroup;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_211

    .line 697
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$PermissionGroup;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 698
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_200
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_1d8

    .line 700
    iget-object v3, v1, Lio/vanta/core/system/pm/BPackage$PermissionGroup;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_200

    .line 703
    :cond_211
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d8

    .line 707
    :cond_215
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 708
    invoke-static {}, Lio/vanta/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_225

    .line 709
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mSigningDetails:Lio/vanta/core/system/pm/BPackage$SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 711
    :cond_225
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 712
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 714
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 715
    iget v0, p0, Lio/vanta/core/system/pm/BPackage;->mPreferredOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 718
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 719
    iget v0, p0, Lio/vanta/core/system/pm/BPackage;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 721
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 725
    iget v0, p0, Lio/vanta/core/system/pm/BPackage;->mSharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 727
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 728
    iget-object v0, p0, Lio/vanta/core/system/pm/BPackage;->installOption:Lio/vanta/entity/pm/InstallOption;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
