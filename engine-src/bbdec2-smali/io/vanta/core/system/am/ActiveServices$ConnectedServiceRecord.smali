.class public Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedServiceRecord"
.end annotation


# instance fields
.field private mIBinder:Landroid/os/IBinder;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIntent(Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIBinder(Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;->mIBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIntent(Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lio/vanta/core/system/am/ActiveServices$ConnectedServiceRecord;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
