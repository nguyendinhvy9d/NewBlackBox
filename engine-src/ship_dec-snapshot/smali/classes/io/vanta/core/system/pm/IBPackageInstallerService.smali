.class public interface abstract Lio/vanta/core/system/pm/IBPackageInstallerService;
.super Ljava/lang/Object;
.source "IBPackageInstallerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/pm/IBPackageInstallerService$_Parcel;,
        Lio/vanta/core/system/pm/IBPackageInstallerService$Stub;,
        Lio/vanta/core/system/pm/IBPackageInstallerService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "io.vanta.core.system.pm.IBPackageInstallerService"


# virtual methods
.method public abstract clearPackage(Lio/vanta/core/system/pm/BPackageSettings;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract installPackageAsUser(Lio/vanta/core/system/pm/BPackageSettings;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uninstallPackageAsUser(Lio/vanta/core/system/pm/BPackageSettings;ZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePackage(Lio/vanta/core/system/pm/BPackageSettings;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
