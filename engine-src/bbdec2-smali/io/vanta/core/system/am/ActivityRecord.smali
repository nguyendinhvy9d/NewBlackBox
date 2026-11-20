.class public Lio/vanta/core/system/am/ActivityRecord;
.super Landroid/os/Binder;
.source "ActivityRecord.java"


# instance fields
.field public callingPackage:Ljava/lang/String;

.field public component:Landroid/content/ComponentName;

.field public finished:Z

.field public info:Landroid/content/pm/ActivityInfo;

.field public intent:Landroid/content/Intent;

.field public processRecord:Lio/vanta/core/system/ProcessRecord;

.field public resultTo:Landroid/os/IBinder;

.field public task:Lio/vanta/core/system/am/TaskRecord;

.field public token:Landroid/os/IBinder;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Lio/vanta/core/system/am/ActivityRecord;
    .locals 2

    .line 26
    new-instance v0, Lio/vanta/core/system/am/ActivityRecord;

    invoke-direct {v0}, Lio/vanta/core/system/am/ActivityRecord;-><init>()V

    .line 27
    iput-object p0, v0, Lio/vanta/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 28
    iput-object p1, v0, Lio/vanta/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 29
    new-instance p0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Lio/vanta/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    .line 30
    iput-object p2, v0, Lio/vanta/core/system/am/ActivityRecord;->resultTo:Landroid/os/IBinder;

    .line 31
    iput p3, v0, Lio/vanta/core/system/am/ActivityRecord;->userId:I

    return-object v0
.end method
