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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/vanta/fake/service/XjBootKicker;->proc:Ljava/lang/String;

    iput-object p2, p0, Lio/vanta/fake/service/XjBootKicker;->pkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v4, p0, Lio/vanta/fake/service/XjBootKicker;->proc:Ljava/lang/String;

    iget-object v5, p0, Lio/vanta/fake/service/XjBootKicker;->pkg:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0xc

    if-ge v0, v1, :cond_16

    :try_start_9
    const-wide/16 v2, 0xfa0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v4, v5}, Lio/vanta/fake/service/GmsCallerFix;->warmupChimeraContainers(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_12

    goto :goto_13

    :catchall_12
    move-exception v1

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2a

    :try_start_1b
    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lio/vanta/fake/service/GmsCallerFix;->triggerGmsBoot(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_26

    goto :goto_27

    :catchall_26
    move-exception v1

    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2a
    return-void
.end method
