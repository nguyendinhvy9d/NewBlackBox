.class public Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;
.super Lio/vanta/app/configuration/AppLifecycleCallback;
.source "AppLifecycleCallback.java"


# static fields
.field public static EMPTY:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;->EMPTY:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/vanta/app/configuration/AppLifecycleCallback;-><init>()V

    return-void
.end method
