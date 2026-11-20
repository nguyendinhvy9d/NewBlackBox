.class public Lio/vanta/fake/service/ContentResolverProxy;
.super Lio/vanta/fake/hook/ClassInvocationStub;
.source "ContentResolverProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/ContentResolverProxy$Delete;,
        Lio/vanta/fake/service/ContentResolverProxy$Update;,
        Lio/vanta/fake/service/ContentResolverProxy$Insert;,
        Lio/vanta/fake/service/ContentResolverProxy$QueryWithProjection;,
        Lio/vanta/fake/service/ContentResolverProxy$Query;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentResolverProxy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lio/vanta/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-static {}, Lio/vanta/VantaCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
