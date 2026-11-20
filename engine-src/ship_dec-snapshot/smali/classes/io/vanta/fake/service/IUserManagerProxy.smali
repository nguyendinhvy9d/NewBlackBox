.class public Lio/vanta/fake/service/IUserManagerProxy;
.super Lio/vanta/fake/hook/BinderInvocationStub;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/fake/service/IUserManagerProxy$HasBadge;,
        Lio/vanta/fake/service/IUserManagerProxy$GetUserCreationTime;,
        Lio/vanta/fake/service/IUserManagerProxy$GetUserHandle;,
        Lio/vanta/fake/service/IUserManagerProxy$GetUserSerialNumber;,
        Lio/vanta/fake/service/IUserManagerProxy$GetUserAccount;,
        Lio/vanta/fake/service/IUserManagerProxy$HasBaseUserRestriction;,
        Lio/vanta/fake/service/IUserManagerProxy$HasUserRestriction;,
        Lio/vanta/fake/service/IUserManagerProxy$GetBaseUserRestrictions;,
        Lio/vanta/fake/service/IUserManagerProxy$GetUserRestrictions;,
        Lio/vanta/fake/service/IUserManagerProxy$IsRestricted;,
        Lio/vanta/fake/service/IUserManagerProxy$IsRestrictedProfile;,
        Lio/vanta/fake/service/IUserManagerProxy$IsGuestUser;,
        Lio/vanta/fake/service/IUserManagerProxy$IsDemoUser;,
        Lio/vanta/fake/service/IUserManagerProxy$IsUserAdmin;,
        Lio/vanta/fake/service/IUserManagerProxy$IsUserOfType;,
        Lio/vanta/fake/service/IUserManagerProxy$IsQuietModeEnabled;,
        Lio/vanta/fake/service/IUserManagerProxy$IsManagedProfile;,
        Lio/vanta/fake/service/IUserManagerProxy$IsUserUnlockingOrUnlocked;,
        Lio/vanta/fake/service/IUserManagerProxy$IsUserRunning;,
        Lio/vanta/fake/service/IUserManagerProxy$IsUserUnlocked;,
        Lio/vanta/fake/service/IUserManagerProxy$GetSeedAccountType;,
        Lio/vanta/fake/service/IUserManagerProxy$GetSeedAccountName;,
        Lio/vanta/fake/service/IUserManagerProxy$GetSeedAccountOptions;,
        Lio/vanta/fake/service/IUserManagerProxy$GetProfileIds;,
        Lio/vanta/fake/service/IUserManagerProxy$GetProfiles;,
        Lio/vanta/fake/service/IUserManagerProxy$GetUserInfo;,
        Lio/vanta/fake/service/IUserManagerProxy$getUsers;,
        Lio/vanta/fake/service/IUserManagerProxy$GetProfileParent;,
        Lio/vanta/fake/service/IUserManagerProxy$GetApplicationRestrictions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IUserManagerProxy"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "user"

    invoke-interface {v0, v1}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/vanta/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 3

    .line 31
    invoke-static {}, Lvanta/android/os/BRIUserManagerStub;->get()Lvanta/android/os/IUserManagerStubStatic;

    move-result-object v0

    invoke-static {}, Lvanta/android/os/BRServiceManager;->get()Lvanta/android/os/ServiceManagerStatic;

    move-result-object v1

    const-string v2, "user"

    invoke-interface {v1, v2}, Lvanta/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lvanta/android/os/IUserManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 36
    const-string p1, "user"

    invoke-virtual {p0, p1}, Lio/vanta/fake/service/IUserManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lio/vanta/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "SecurityException in "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", providing safe fallback: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "IUserManagerProxy"

    invoke-static {p3, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 51
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 p3, 0x0

    if-eq p1, p2, :cond_7

    const-class p2, Ljava/lang/Boolean;

    if-ne p1, p2, :cond_0

    goto :goto_2

    .line 53
    :cond_0
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_6

    const-class p2, Ljava/lang/Integer;

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_5

    const-class p2, Ljava/lang/Long;

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    const-class p2, Ljava/util/List;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 59
    :cond_3
    const-class p2, Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 60
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    :cond_5
    :goto_0
    const-wide/16 p1, 0x0

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 54
    :cond_6
    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 52
    :cond_7
    :goto_2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
