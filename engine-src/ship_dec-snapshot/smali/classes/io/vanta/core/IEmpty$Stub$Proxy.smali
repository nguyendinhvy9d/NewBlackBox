.class final Lio/vanta/core/IEmpty$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEmpty.java"

# interfaces
.implements Lio/vanta/core/IEmpty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/IEmpty$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lio/vanta/core/IEmpty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/vanta/core/IEmpty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "io.vanta.core.IEmpty"

    return-object v0
.end method
