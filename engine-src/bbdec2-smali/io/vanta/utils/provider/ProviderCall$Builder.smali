.class public final Lio/vanta/utils/provider/ProviderCall$Builder;
.super Ljava/lang/Object;
.source "ProviderCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/provider/ProviderCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private arg:Ljava/lang/String;

.field private auth:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private context:Landroid/content/Context;

.field private method:Ljava/lang/String;

.field private retryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x5

    .line 38
    iput v0, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->retryCount:I

    .line 41
    iput-object p1, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->auth:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addArg(Ljava/lang/String;Ljava/lang/Object;)Lio/vanta/utils/provider/ProviderCall$Builder;
    .locals 2

    if-eqz p2, :cond_7

    .line 57
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    .line 59
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    .line 61
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 63
    :cond_2
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0

    .line 65
    :cond_3
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0

    .line 67
    :cond_4
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_5

    .line 68
    iget-object v0, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0

    .line 69
    :cond_5
    instance-of v0, p2, [I

    if-eqz v0, :cond_6

    .line 70
    iget-object v0, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, [I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0

    .line 72
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " in Bundle."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-object p0
.end method

.method public arg(Ljava/lang/String;)Lio/vanta/utils/provider/ProviderCall$Builder;
    .locals 0

    .line 51
    iput-object p1, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->arg:Ljava/lang/String;

    return-object p0
.end method

.method public call()Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->auth:Ljava/lang/String;

    iget-object v1, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->method:Ljava/lang/String;

    iget-object v3, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->arg:Ljava/lang/String;

    iget-object v4, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    iget v5, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->retryCount:I

    invoke-static/range {v0 .. v5}, Lio/vanta/utils/provider/ProviderCall;->call(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public callSafely()Landroid/os/Bundle;
    .locals 1

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lio/vanta/utils/provider/ProviderCall$Builder;->call()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public methodName(Ljava/lang/String;)Lio/vanta/utils/provider/ProviderCall$Builder;
    .locals 0

    .line 46
    iput-object p1, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public retry(I)Lio/vanta/utils/provider/ProviderCall$Builder;
    .locals 0

    .line 79
    iput p1, p0, Lio/vanta/utils/provider/ProviderCall$Builder;->retryCount:I

    return-object p0
.end method
