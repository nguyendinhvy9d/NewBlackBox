.class public Lio/vanta/closecode/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Lib Injection"

.field private static final targetpackagename:Ljava/lang/String; = "com.whatever"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach()V
    .locals 2

    .line 13
    invoke-static {}, Lio/vanta/VantaCore;->get()Lio/vanta/VantaCore;

    move-result-object v0

    new-instance v1, Lio/vanta/closecode/Entry$1;

    invoke-direct {v1}, Lio/vanta/closecode/Entry$1;-><init>()V

    invoke-virtual {v0, v1}, Lio/vanta/VantaCore;->addAppLifecycleCallback(Lio/vanta/app/configuration/AppLifecycleCallback;)V

    .line 52
    const-string v0, "Lib Injection"

    const-string v1, "Custom closed code initialized!"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
