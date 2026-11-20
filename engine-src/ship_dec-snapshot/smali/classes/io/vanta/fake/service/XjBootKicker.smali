.class public Lio/vanta/fake/service/XjBootKicker;
.super Ljava/lang/Object;
.source "XjBootKicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final pkg:Ljava/lang/String;

.field private final proc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/fake/service/XjBootKicker;->proc:Ljava/lang/String;

    iput-object p2, p0, Lio/vanta/fake/service/XjBootKicker;->pkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v4, p0, Lio/vanta/fake/service/XjBootKicker;->proc:Ljava/lang/String;

    iget-object v5, p0, Lio/vanta/fake/service/XjBootKicker;->pkg:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    :try_start_0
    const-wide/16 v2, 0xfa0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v4, v5}, Lio/vanta/fake/service/GmsCallerFix;->warmupChimeraContainers(Ljava/lang/String;Ljava/lang/String;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    :try_start_1
    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lio/vanta/fake/service/GmsCallerFix;->triggerGmsBoot(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    return-void
.end method
