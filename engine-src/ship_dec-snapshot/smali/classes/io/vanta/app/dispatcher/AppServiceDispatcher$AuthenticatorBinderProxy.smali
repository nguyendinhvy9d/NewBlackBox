.class Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorBinderProxy;
.super Landroid/os/Binder;
.source "AppServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/app/dispatcher/AppServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticatorBinderProxy"
.end annotation


# instance fields
.field private final mService:Landroid/app/Service;

.field private final mTarget:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/app/Service;)V
    .locals 0

    .line 352
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 353
    iput-object p1, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorBinderProxy;->mTarget:Landroid/os/IBinder;

    .line 354
    iput-object p2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorBinderProxy;->mService:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 360
    :try_start_0
    iget-object v0, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorBinderProxy;->mTarget:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 362
    :catch_0
    const-string v0, "android.accounts.IAccountAuthenticator"

    return-object v0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide v2, 0x3e8000003e8L

    .line 373
    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorBinderProxy;->mService:Landroid/app/Service;

    invoke-static {v2}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->-$$Nest$smfixAuthenticatorContext(Ljava/lang/Object;)V

    .line 377
    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorBinderProxy;->mTarget:Landroid/os/IBinder;

    invoke-static {v2}, Lio/vanta/app/dispatcher/AppServiceDispatcher;->-$$Nest$smfixAuthenticatorContext(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    .line 380
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 382
    :cond_0
    iget-object v2, p0, Lio/vanta/app/dispatcher/AppServiceDispatcher$AuthenticatorBinderProxy;->mTarget:Landroid/os/IBinder;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .line 384
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    throw p1
.end method
