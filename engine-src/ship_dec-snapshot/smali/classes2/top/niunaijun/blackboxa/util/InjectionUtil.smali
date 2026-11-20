.class public final Ltop/niunaijun/blackboxa/util/InjectionUtil;
.super Ljava/lang/Object;
.source "InjectionUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/util/InjectionUtil;",
        "",
        "<init>",
        "()V",
        "appsRepository",
        "Ltop/niunaijun/blackboxa/data/AppsRepository;",
        "gmsRepository",
        "Ltop/niunaijun/blackboxa/data/GmsRepository;",
        "fakeLocationRepository",
        "Ltop/niunaijun/blackboxa/data/FakeLocationRepository;",
        "getAppsFactory",
        "Ltop/niunaijun/blackboxa/view/apps/AppsFactory;",
        "getListFactory",
        "Ltop/niunaijun/blackboxa/view/list/ListFactory;",
        "getGmsFactory",
        "Ltop/niunaijun/blackboxa/view/gms/GmsFactory;",
        "getFakeLocationFactory",
        "Ltop/niunaijun/blackboxa/view/fake/FakeLocationFactory;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Ltop/niunaijun/blackboxa/util/InjectionUtil;

.field private static final appsRepository:Ltop/niunaijun/blackboxa/data/AppsRepository;

.field private static final fakeLocationRepository:Ltop/niunaijun/blackboxa/data/FakeLocationRepository;

.field private static final gmsRepository:Ltop/niunaijun/blackboxa/data/GmsRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltop/niunaijun/blackboxa/util/InjectionUtil;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/util/InjectionUtil;-><init>()V

    sput-object v0, Ltop/niunaijun/blackboxa/util/InjectionUtil;->INSTANCE:Ltop/niunaijun/blackboxa/util/InjectionUtil;

    .line 16
    new-instance v0, Ltop/niunaijun/blackboxa/data/AppsRepository;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/data/AppsRepository;-><init>()V

    sput-object v0, Ltop/niunaijun/blackboxa/util/InjectionUtil;->appsRepository:Ltop/niunaijun/blackboxa/data/AppsRepository;

    .line 20
    new-instance v0, Ltop/niunaijun/blackboxa/data/GmsRepository;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/data/GmsRepository;-><init>()V

    sput-object v0, Ltop/niunaijun/blackboxa/util/InjectionUtil;->gmsRepository:Ltop/niunaijun/blackboxa/data/GmsRepository;

    .line 22
    new-instance v0, Ltop/niunaijun/blackboxa/data/FakeLocationRepository;

    invoke-direct {v0}, Ltop/niunaijun/blackboxa/data/FakeLocationRepository;-><init>()V

    sput-object v0, Ltop/niunaijun/blackboxa/util/InjectionUtil;->fakeLocationRepository:Ltop/niunaijun/blackboxa/data/FakeLocationRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppsFactory()Ltop/niunaijun/blackboxa/view/apps/AppsFactory;
    .locals 2

    .line 25
    new-instance v0, Ltop/niunaijun/blackboxa/view/apps/AppsFactory;

    sget-object v1, Ltop/niunaijun/blackboxa/util/InjectionUtil;->appsRepository:Ltop/niunaijun/blackboxa/data/AppsRepository;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackboxa/view/apps/AppsFactory;-><init>(Ltop/niunaijun/blackboxa/data/AppsRepository;)V

    return-object v0
.end method

.method public final getFakeLocationFactory()Ltop/niunaijun/blackboxa/view/fake/FakeLocationFactory;
    .locals 2

    .line 38
    new-instance v0, Ltop/niunaijun/blackboxa/view/fake/FakeLocationFactory;

    sget-object v1, Ltop/niunaijun/blackboxa/util/InjectionUtil;->fakeLocationRepository:Ltop/niunaijun/blackboxa/data/FakeLocationRepository;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackboxa/view/fake/FakeLocationFactory;-><init>(Ltop/niunaijun/blackboxa/data/FakeLocationRepository;)V

    return-object v0
.end method

.method public final getGmsFactory()Ltop/niunaijun/blackboxa/view/gms/GmsFactory;
    .locals 2

    .line 34
    new-instance v0, Ltop/niunaijun/blackboxa/view/gms/GmsFactory;

    sget-object v1, Ltop/niunaijun/blackboxa/util/InjectionUtil;->gmsRepository:Ltop/niunaijun/blackboxa/data/GmsRepository;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackboxa/view/gms/GmsFactory;-><init>(Ltop/niunaijun/blackboxa/data/GmsRepository;)V

    return-object v0
.end method

.method public final getListFactory()Ltop/niunaijun/blackboxa/view/list/ListFactory;
    .locals 2

    .line 29
    new-instance v0, Ltop/niunaijun/blackboxa/view/list/ListFactory;

    sget-object v1, Ltop/niunaijun/blackboxa/util/InjectionUtil;->appsRepository:Ltop/niunaijun/blackboxa/data/AppsRepository;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackboxa/view/list/ListFactory;-><init>(Ltop/niunaijun/blackboxa/data/AppsRepository;)V

    return-object v0
.end method
