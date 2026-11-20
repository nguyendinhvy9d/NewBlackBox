.class public Lio/vanta/fake/service/IContentProviderProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "IContentProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IContentProviderProxy$GetStringForUser;,
        Lio/vanta/fake/service/IContentProviderProxy$GetString;,
        Lio/vanta/fake/service/IContentProviderProxy$Call;,
        Lio/vanta/fake/service/IContentProviderProxy$Delete;,
        Lio/vanta/fake/service/IContentProviderProxy$Update;,
        Lio/vanta/fake/service/IContentProviderProxy$Insert;,
        Lio/vanta/fake/service/IContentProviderProxy$Query;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IContentProviderProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 28
    const-string p1, "IContentProviderProxy"

    const-string p2, "IContentProvider proxy initialized for UID mismatch prevention"

    invoke-static {p1, p2}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
