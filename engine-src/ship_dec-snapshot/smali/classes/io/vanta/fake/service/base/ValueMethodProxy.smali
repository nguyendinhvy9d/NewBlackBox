.class public Lio/vanta/fake/service/base/ValueMethodProxy;
.super Lio/vanta/fake/hook/MethodHook;
.source "ValueMethodProxy.java"


# instance fields
.field mName:Ljava/lang/String;

.field mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    .line 13
    iput-object p2, p0, Lio/vanta/fake/service/base/ValueMethodProxy;->mValue:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lio/vanta/fake/service/base/ValueMethodProxy;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getMethodName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/vanta/fake/service/base/ValueMethodProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    iget-object p1, p0, Lio/vanta/fake/service/base/ValueMethodProxy;->mValue:Ljava/lang/Object;

    return-object p1
.end method
