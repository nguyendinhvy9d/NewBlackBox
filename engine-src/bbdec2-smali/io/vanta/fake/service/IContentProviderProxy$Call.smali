.class public Lio/vanta/fake/service/IContentProviderProxy$Call;
.super Lio/vanta/fake/hook/MethodHook;
.source "IContentProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/IContentProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Call"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "call"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 119
    const-string v0, "IContentProviderProxy"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p3}, Lio/vanta/utils/AttributionSourceUtils;->fixAttributionSourceInArgs([Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_a} :catch_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error in call hook: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_23
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4d

    .line 126
    const-string p3, "Calling uid"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4d

    const-string p3, "doesn\'t match source uid"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4d

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "UID mismatch in call method, returning safe default: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 130
    :cond_4d
    throw p1
.end method
