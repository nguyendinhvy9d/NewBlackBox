.class public interface abstract Lio/vanta/core/system/am/IBJobManagerService;
.super Ljava/lang/Object;
.source "IBJobManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/am/IBJobManagerService$_Parcel;,
        Lio/vanta/core/system/am/IBJobManagerService$Stub;,
        Lio/vanta/core/system/am/IBJobManagerService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "io.vanta.core.system.am.IBJobManagerService"


# virtual methods
.method public abstract cancel(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancelAll(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryJobRecord(Ljava/lang/String;II)Lio/vanta/entity/JobRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
