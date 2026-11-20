.class final Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;
.super Ljava/lang/Object;
.source "BAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/accounts/BAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AuthenticatorCache"
.end annotation


# instance fields
.field final authenticators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lio/vanta/core/system/accounts/BAccountManagerService-IA;)V
    .locals 0

    invoke-direct {p0}, Lio/vanta/core/system/accounts/BAccountManagerService$AuthenticatorCache;-><init>()V

    return-void
.end method
