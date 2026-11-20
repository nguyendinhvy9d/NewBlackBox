.class public Lio/vanta/fake/FakeCore;
.super Ljava/lang/Object;
.source "FakeCore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    .line 8
    const-class v0, Landroid/app/ActivityThread;

    invoke-static {v0}, Lio/vanta/jnihook/ReflectCore;->set(Ljava/lang/Class;)V

    return-void
.end method
